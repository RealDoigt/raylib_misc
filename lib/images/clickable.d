module raylib_misc.images.clickable;
import images;

class ClickableImage : Rect
{
    private
    {
        Img normalImage, hoverImage, activeImage;
        Tx2d texture;
    }

    protected
    {
        auto isClicked()
        {
            return MOUSE_LEFT_BUTTON.IsMouseButtonPressed && checkCollision(GetMousePosition);
        }

        auto isHovered()
        {
            return checkCollision(GetMousePosition);
        }
    }

    this(int x, int y, string imagePath, string hoverImagePath, string activeImagePath)
    {
        super(x, y, 0, 0, transparent);

        normalImage = new Img(imagePath);
        hoverImage  = new Img(hoverImagePath);
        activeImage = new Img(activeImagePath);

        texture = new Tx2d(normalImage);

        width  = normalImage.width;
        height = normalImage.height;

        if (hoverImage.width != width || hoverImage.height != height)
            hoverImage.resize(width, height);

        if (activeImage.width != width || activeImage.height != height)
            activeImage.resize(width, height);
    }

    // call this after calling onHover(), not before
    void onClick()
    {
        if (isClicked) texture.update(activeImage);
    }

    void onHover()
    {
        if (isHovered) texture.update(hoverImage);
    }

    void onExit()
    {
        if (!isHovered) texture.update(normalImage);
    }

    override void draw()
    {
        texture.draw(x, y);
    }
}
