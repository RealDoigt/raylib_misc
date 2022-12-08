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

    // export is a reserved keyword in D
    auto save(string fileName)
    {
        return ExportWave(this, fileName.toStringz);
    }

    auto exportAsCode(string fileName)
    {
        return ExportWaveAsCode(this, fileName.toStringz);
    }

    void crop(int initSample, int finalSample)
    {
        WaveCrop(&this, initSample, finalSample);
    }

    void format(int sampleRate, int sampleSize, int channels)
    {
        WaveFormat(&this, sampleRate, sampleSize, channels);
    }

    auto loadSamples()
    {
        float[] result;

        auto size = wave.frameCount * wave.channels;

        switch (wave.sampleSize)
        {
            case 8: break;
            case 16: break;
            case 32: break;
        }

        return result;
    }
}
