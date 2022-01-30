module raylib_misc.images.texture;
import raylib_misc.images.image;
import raylib_misc.colors.web;
import std.string;
import raylib;

class Tx2d
{
    package(raylib_misc.images) Texture texture;
    alias texture this;

    this(string fileName)
    {
        texture = fileName.toStringz.LoadTexture;
    }

    this(Image image)
    {
        texture = image.LoadTextureFromImage;
    }

    this(Img image)
    {
        texture = image.image.LoadTextureFromImage;
    }

    ~this()
    {
        UnloadTexture(texture);
    }

    void update(Img image)
    {
        UpdateTexture(texture, image.image.data);
    }

    void update(Img image, Rectangle rectangle)
    {
        UpdateTextureRec(texture, rectangle, image.image.data);
    }

    void generateMipmaps()
    {
        GenTextureMipmaps(&texture);
    }

    void setFilter(int filter)
    {
        SetTextureFilter(texture, filter);
    }

    void setWrap(int wrap)
    {
        SetTextureWrap(texture, wrap);
    }

    void draw(int x, int y, Color tint = white)
    {
        DrawTexture(texture, x, y, tint);
    }

    void draw(Vector2 position, Color tint = white)
    {
        DrawTextureV(texture, position, tint);
    }

    void draw(int x, int y, float rotation, float scale, Color tint = white)
    {
        DrawTextureEx(texture, Vector2(x, y), rotation, scale, tint);
    }

    void draw(Vector2 position, float rotation, float scale, Color tint = white)
    {
        DrawTextureEx(texture, position, rotation, scale, tint);
    }

    void draw(Rectangle source, int x, int y, Color tint = white)
    {
        DrawTextureRec(texture, source, Vector2(x, y), tint);
    }

    void draw(Rectangle source, Vector2 position, Color tint = white)
    {
        DrawTextureRec(texture, source, position, tint);
    }

    void draw(Vector2 tiling, Vector2 offset, Rectangle quad, Color tint = white)
    {
        DrawTextureQuad(texture, tiling, offset, quad, tint);
    }

    void draw(Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint = white)
    {
        DrawTexturePro(texture, source, dest, origin, rotation, tint);
    }

    void drawTiled(Rectangle source, Rectangle dest, Vector2 origin, float rotation, float scale, Color tint = white)
    {
        DrawTextureTiled(texture, source, dest, origin, rotation, scale, tint);
    }

    void drawNPatch(NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint = white)
    {
        DrawTextureNPatch(texture, nPatchInfo, dest, origin, rotation, tint);
    }

    void drawPolygon(Vector2 center, Vector2[] points, Vector2[] texcoords, Color tint = white)
    {
        DrawTexturePoly(texture, center, points.ptr, texcoords.ptr, cast(int)points.length, tint);
    }
}
