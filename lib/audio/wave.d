module raylib_misc.audio.sound;
import raylib_misc;
import std.string;

class WaveSnd
{
    package(raylib_misc.audio) Wave wave;
    alias wave this;

    this(string fileName)
    {
        wave = fileName.toStringz.LoadWave;
    }

    this(string fileType, const ubyte* fileData, int dataSize)
    {
        wave = fileType.toStringz.LoadWaveFromMemory(fileData, dataSize);
    }

    this(Wave w)
    {
        wave = w.WaveCopy;
    }

    this(WaveSnd ws)
    {
        wave = WaveCopy(ws);
    }

    ~this()
    {
        wave.UnloadWave;
    }
}
