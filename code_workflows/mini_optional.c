#include <tuple>
#include <iostream>
#include <memory>

enum EFoo {
    HELLO,
    WORLD,
};

typedef std::tuple<enum EFoo, enum EFoo> foos;

class opt_foos {
    union {
        bool empty;
        foos value;
    };
    bool is_empty = true;

    public:
    opt_foos (void) {
        this->empty = false;
    };
    opt_foos (enum EFoo &&a, enum EFoo &&b) {
        this->value = {a, b};
        this->is_empty = false;
    };
    foos operator*() {
        return value;
    };
    const bool operator!() const {
        return this->is_empty;
    }
    operator bool() const {
        return !this->is_empty;
    }
    static const opt_foos none() {
        return opt_foos();
    };
};

const opt_foos bar(){
    return opt_foos::none();
}

int main(void) {
    auto opt = bar();
    if (opt) {
        enum EFoo one, two;
        std::tie (one, two) = *opt;
        std::cout << "There is " << one << ' ' << two << '\n';
    } else {
        std::cout << "Empty\n";
    }
}