module raylib_misc.ui.rectcut;
import raylib_misc.shapes.rectangle;
import raylib_misc.colors.web;

class RectCut : Rect
{
    private
    {
        auto maxX()
        {
            return width + x;
        }
        
        auto maxY()
        {
            return height + y;
        }
    }

    this(int x, int y, int width, int height, Color color = black)
    {
        super(x, y, width, height, color);
    }
    
    
}