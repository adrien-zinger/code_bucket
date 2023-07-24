#include <stdatomic.h>
#include <assert.h>
#include <stddef.h>
#include <stdlib.h>

struct node {
	atomic_int count;	
	struct node * _Atomic next;
	void *content;
};

struct queue {
	struct node * _Atomic head;
	struct node * _Atomic tail;
	atomic_int length;
};

void push(struct queue *queue, void *content)
{
	struct node * _Atomic node = malloc(sizeof(struct node));
	node->content = content;
	while (1)
	{
		struct node * _Atomic tail = queue->tail;
		struct node * _Atomic next = tail->next;
		if (tail->count != queue->tail->count)
			continue;
		if (next != NULL)
		{
			atomic_compare_exchange_strong(&queue->tail, &tail, next);
			continue;
		}
		if (atomic_compare_exchange_strong(&tail->next, &next, node))
		{
			atomic_compare_exchange_strong(&queue->tail, &tail, node);
			atomic_fetch_add(&queue->length, 1);
			return;
		}
	}
}

void *pop(struct queue *queue)
{
	while (1)
	{
		struct node * _Atomic head = queue->head;
		struct node * _Atomic tail = queue->tail;
		struct node * _Atomic next = head->next;
		if (head->count != queue->head->count)
		{
			continue;
		}
		if (head == tail)
		{
			if (next == NULL)
				return NULL;
			atomic_fetch_add(&next->count, 1);
			atomic_compare_exchange_strong(&queue->tail, &tail, next);
		}
		else
		{
			void *content = next->content;
			atomic_store(&next->count, head->count + 1);
			if (atomic_compare_exchange_strong(&queue->head, &head, next))
			{
				atomic_fetch_sub(&queue->length, 1);
				free(head);
				return content;
			}
		}
	}
}

struct queue create_queue()
{
	struct node *dummy = malloc(sizeof(struct node));
	struct queue q = {
		.head = dummy,
		.tail = dummy,
		.length = 0
	};
	return q;
}

void clean_queue(struct queue *q)
{
	free(q->head);
}

int main(void)
{
	static int one = 1, two = 2, three = 3;
	struct queue q = create_queue();
	push(&q, &one);
	push(&q, &two);
	assert(q.length == 2);
	push(&q, &three);
	assert(pop(&q) == &one);
	assert(pop(&q) == &two);
	assert(pop(&q) == &three);
	assert(q.length == 0);

	push(&q, &one);
	push(&q, &two);
	push(&q, &three);
	assert(*(int *)pop(&q) == one);
	assert(*(int *)pop(&q) == two);
	assert(*(int *)pop(&q) == three);

	clean_queue(&q);
}
