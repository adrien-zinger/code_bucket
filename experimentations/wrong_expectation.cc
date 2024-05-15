#include <optional>

std::optional<bool> foo(bool bar) {
	// if (bar) { return true; } else { return std::nullopt; }
	return bar ? std::optiona : true;
}

int main() { foo(true); }
