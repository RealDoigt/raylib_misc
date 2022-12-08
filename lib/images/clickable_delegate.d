module raylib_misc.images.clickable_delegate;
import raylib_misc.images;

class ClickableImageDelegate : ClickableImageDelegate
{
    private void delegate() clickAction;

    this(int x, int y, string imagePath, string hoverImagePath, string activeImagePath, void delegate() clickAction)
    {
        super(x, y, imagePath, hoverImagePath, activeImagePath);
        this.clickAction = clickAction;
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
