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
    
    /*
    auto cut(float a, Side side)
    {
        switch(side)
        {
            case Side.right: return cutRight(a);
            case Side.left:  return cutLeft(a);
            case Side.top:   return cutTop(a);
            default:         return cutBottom(a);
        }
    }
    
    auto cutLeft(float a)
    {
        float originalX = minX;
        minX = min(maxX, minX + a);
        return RectCut(originalX, minY, minX, maxY);
    }
    
    auto cutRight(float a)
    {
        float originalX = maxX;
        maxX = max(minX, maxX - a);
        return RectCut(maxX, minY, originalX, maxY);
    }
    
    auto cutTop(float a)
    {
        float originalY = minY;
        minY = min(maxX, minY + a);
        return RectCut(minX, originalY, maxX, minY);
    }
    
    auto cutBottom(float a)
    {
        float originalY = maxY;
        maxY = max(minY, maxY - a);
        return RectCut(minX, maxY, maxX, originalY);
    }
    
    auto getLeft(float a)
    {
        float newX = min(maxX, minX + a);
        return RectCut(minX, minY, newX, maxY);
    }
    
    auto getRight(float a)
    {
        float newX = max(minX, maxX - a);
        return RectCut(newX, minY, maxX, maxY);
    }
    
    auto getTop(float a)
    {
        float newY = min(maxX, minY + a);
        return RectCut(minX, minY, maxX, newY);
    }
    
    auto getBottom(float a)
    {
        float newY = max(minY, maxY - a);
        return RectCut(minX, newY, maxX, maxY);
    }
    
    auto addLeft(float a)
    {
        return RectCut(minX - a, minY, maxX, maxY);
    }
    
    auto addRight(float a)
    {
        return RectCut(minX, minY, maxX + a, maxY);
    }
    
    auto addTop(float a)
    {
        return RectCut(minX, minY - a, maxX, maxY);
    }
    
    auto addBottom(float a)
    {
        return RectCut(minX, minY, maxX, maxY + a);
    }
    
    auto extend(float a)
    {
        return RectCut(minX - a, minY - a, maxX + a, maxY + a);
    }
    
    auto contract(float a)
    {
        return RectCut(minX + a, minY + a, maxX - a, maxY - a);
    }
    
    void selfExtend(float a)
    {
        minX -= a; 
        minY -= a; 
        maxX += a; 
        maxY += a;
    }
    
    void selfcontract(float a)
    {
        minX += a; 
        minY += a; 
        maxX -= a; 
        maxY -= a;
    }
    */
}