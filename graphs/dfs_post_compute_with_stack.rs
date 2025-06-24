//! # Implementations of some algorithms to test performances.
//!
//! ## Graph Traversal Algorithms
//!
//! Our traversing has to perform a sum.
//!
//! Each node is composed of a list of elements and a list of dependencies.
//! The sum of a node is the sum of his elements and the elements composing
//! his childs (dependendencies). We must, in our walk, compute recursively
//! the sum of each node to get the sum of the head.

use crate::graph::{Edge, Item, ELEMENTS_LEN};

fn sum(el: u8, head_id: u32, edge: &Edge, items: &mut [Item]) {
    let el = el as usize;
    let head_id = head_id as usize;
    let child_id = edge.to as usize;

    let a = items[child_id].els[el].saturating_mul(edge.val);
    items[head_id].els[el] = items[head_id].els[el].saturating_add(a);
}

/// Get the value of `head` with a DFS.
///
/// Note: a cyclic graph lead to an infinit loop.
pub fn dfs(head: u32, items: &mut [Item], edges: &[Vec<Edge>]) {
    let mut stack = vec![(head, false)];
    let mut computed = vec![false; items.len()];
    while let Some((head_id, visited_children)) = stack.pop() {
        if computed[head_id as usize] {
            continue;
        }

        if visited_children {
            for edge in &edges[head_id as usize] {
                #[cfg(test)]
                assert!(computed[edge.to as usize], "child {} not computed", edge.to);
                for el in 0..ELEMENTS_LEN {
                    sum(el, head_id, edge, items);
                }
            }
            computed[head_id as usize] = true;
        } else {
            stack.push((head_id, true));

            if edges[head_id as usize].is_empty() {
                computed[head_id as usize] = true;
            } else {
                for edge in &edges[head_id as usize] {
                    if !computed[edge.to as usize] {
                        stack.push((edge.to, false));
                    }
                }
            }
        }
    }
}
