module raylib_misc.core.window;
import raylib;

__gshared class Window
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

    static getInstance(int width, int height, string title)
    {
        if (window is null)
            window = new Window(width, height, title.toStringz);

        return window;
    }
    
    auto shouldClose()
    {
        return WindowShouldClose;
    }
    
    auto isReady()
    {
        return IsWindowReady;
    }
    
    auto isFullscreen()
    {
        return IsWindowFullscreen;
    }
    
    auto isHidden()
    {
        return IsWindowHidden;
    }
    
    auto isMinimized()
    {
        return IsWindowMinimized;
    }
    
    auto isMaximised()
    {
        return IsWindowMaximised;
    }
    
    void toggleFullscreen()
    {
        ToggleFullscreen;
    }
    
    void toggleBorderlessWindowed()
    {
        ToggleBorderlessWindowed;
    }
    
    void maximise()
    {
        MaximiseWindow;
    }
    
    void minimise()
    {
        MinimiseWindow;
    }
    
    void restore()
    {
        RestoreWindow;
    }
    
    void setIcon(Img image)
    {
        SetWindowIcon(image);
    }
}
