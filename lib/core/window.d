module raylib_misc.core.window;
import raylib;

class Window
{
    private this(int width, int height, const char* title)
    {
        InitWindow(width, height, title);
    }
    
    
}