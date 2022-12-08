module raylib_misc.audio.music;
import raylib_misc;
import std.string;
import raylib;

class MusicStream : IAudio
{
    private Music music;
    alias music this;

    this(string fileName)
    {
        music = fileName.toStringz.LoadMusicStream;
    }

    this(string fileType, const ubyte* data, int dataSize)
    {
        music = fileType.toStringz.LoadMusicStreamFromMemory(data, dataSize);
    }

    ~this()
    {
        music.UnloadMusicStream;
    }
}
