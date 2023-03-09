#include <emscripten/bind.h>

using namespace emscripten;

double add(double a, double b) {
    return a + b;
}

EMSCRIPTEN_BINDINGS(my_module) {
    function("add", &add);
}