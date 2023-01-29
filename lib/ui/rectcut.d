module raylib_misc.ui.rectcut;
import raylib_misc.shapes.rectangle;
import raylib_misc.colors.web;
import std.algorithm;

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
    
    auto cutLeft(int toCut)
    {
        int originalX = x;
        x = min(maxX, x + toCut);
        return new RectCut(originalX, y, x, maxY);
    }
    
    auto cutRight(int toCut)
    {
        int originalX = maxX;
        maxX = max(minX, maxX - toCut);
        return RectCut(maxX, minY, originalX, maxY);
    }
    
    /*
    auto cutTop(int toCut)
    {
        int originalY = minY;
        minY = min(maxX, minY + toCut);
        return RectCut(minX, originalY, maxX, minY);
    }
    
    auto cutBottom(int toCut)
    {
        int originalY = maxY;
        maxY = max(minY, maxY - toCut);
        return RectCut(minX, maxY, maxX, originalY);
    }
    
    auto getLeft(int toCut)
    {
        int newX = min(maxX, minX + toCut);
        return RectCut(minX, minY, newX, maxY);
    }
    
    auto getRight(int toCut)
    {
        int newX = max(minX, maxX - toCut);
        return RectCut(newX, minY, maxX, maxY);
    }
    
    auto getTop(int toCut)
    {
        int newY = min(maxX, minY + toCut);
        return RectCut(minX, minY, maxX, newY);
    }
    
    auto getBottom(int toCut)
    {
        int newY = max(minY, maxY - toCut);
        return RectCut(minX, newY, maxX, maxY);
    }
    
    auto addLeft(int toCut)
    {
        return RectCut(minX - toCut, minY, maxX, maxY);
    }
    
    auto addRight(int toCut)
    {
        return RectCut(minX, minY, maxX + toCut, maxY);
    }
    
    auto addTop(int toCut)
    {
        return RectCut(minX, minY - toCut, maxX, maxY);
    }
    
    auto addBottom(int toCut)
    {
        return RectCut(minX, minY, maxX, maxY + toCut);
    }
    
    auto extend(int toCut)
    {
        return RectCut(minX - toCut, minY - toCut, maxX + toCut, maxY + toCut);
    }
    
    auto contract(int toCut)
    {
        return RectCut(minX + toCut, minY + toCut, maxX - toCut, maxY - toCut);
    }
    
    void selfExtend(int toCut)
    {
        minX -= toCut; 
        minY -= toCut; 
        maxX += toCut; 
        maxY += toCut;
    }
    
    void selfcontract(int toCut)
    {
        minX += toCut; 
        minY += toCut; 
        maxX -= toCut; 
        maxY -= toCut;
    }
    */
}