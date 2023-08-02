module raylib_misc.core.window;
import raylib;

class Window
{
    private 
    {
        static Window window;
        
        this(int width, int height, const char* title)
        {
            InitWindow(width, height, title);
        }
    }
    
    ~this()
    {
        CloseWindow;
    }
}