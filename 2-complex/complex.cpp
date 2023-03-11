#include <emscripten/bind.h>

using namespace emscripten;

struct ValueObject {
    double x;
    double y;
};

struct ValueTuple {
    double x;
    double y;
};

double add(double a, double b) {
    return a + b;
}

double addValueTuple(ValueTuple a)
{
    return a.x + a.y;
}

double addValueObject(ValueObject a)
{
    return a.x + a.y;
}

class Calculator {
    public:
        double lastResult;

        double add(double a, double b) {
            return lastResult = a + b;
        }
};

EMSCRIPTEN_BINDINGS(my_module) {
    function("add", &add);
    function("addValueTuple", &addValueTuple);
    function("addValueObject", &addValueObject);

    value_array<ValueTuple>("ValueTuple")
        .element(&ValueTuple::x)
        .element(&ValueTuple::y);
    
    value_object<ValueObject>("ValueObject")
        .field("x", &ValueObject::x)
        .field("y", &ValueObject::y);

    class_<Calculator>("Calculator")
        .constructor()
        .function("add", &Calculator::add)
        .property("lastResult", &Calculator::lastResult);    
}