// #include <emscripten.h>

extern "C"
{
    int add(int a, int b)
    {
        return a + b;
    }

    void javascriptAlert(const float n);

    int callJavascript(float n)
    {
        javascriptAlert(n);
        return 0;
    }
}