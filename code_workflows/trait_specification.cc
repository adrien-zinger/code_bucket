#include <string>
#include <iostream>

typedef struct hello hello_t;

template<typename T> 
struct algorithm_selector { 
    static inline void implementation(std::string &str) {};
};

template<> 
struct algorithm_selector<hello_t> { 
    static inline void implementation(std::string &str) {
        std::cout << "hello ";
    }
};

template<typename T>
void print(std::string str) {

    // This disapear just with g++ -O2
    algorithm_selector<T>::implementation(str);
    std::cout << str << '\n';
}

int main(void) {
    print<void>("hi");
}