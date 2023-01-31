module raylib_misc.images.clickable_delegate;
import raylib_misc.images;
import raylib;

class ClickableImageDelegate : ClickableImage
{
    private void delegate() clickAction;

    this(int x, int y, string imagePath, string hoverImagePath, string activeImagePath, void delegate() clickAction)
    {
        super(x, y, imagePath, hoverImagePath, activeImagePath);
        this.clickAction = clickAction;
    }

    this(Vector xy, string imagePath, string hoverImagePath, string activeImagePath, void delegate() clickAction)
    {
        this(cast(int)position.x, cast(int)position.y, imagePath, hoverImagePath, activeImagePath, clickAction);
    }

    override void onClick()
    {
        if (isClicked)
        {
            setActiveImage;
            clickAction();
        }
    }
}
