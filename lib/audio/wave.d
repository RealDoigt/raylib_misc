module raylib_misc.audio.wave;
import raylib_misc;
import std.string;
import raylib;

class WaveSnd
{
    package Wave wave;
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
        WaveCrop(&wave, initSample, finalSample);
    }

    void format(int sampleRate, int sampleSize, int channels)
    {
        WaveFormat(&wave, sampleRate, sampleSize, channels);
    }

    // was reimplemented because I like .length
    auto loadSamples()
    {
        float[] result;

        auto size = wave.frameCount * wave.channels;

        switch (wave.sampleSize)
        {
            case 8:
                const data = cast(ubyte*)wave.data;

                for (size_t i; i < size; ++i)
                    result[i] = cast(float)(data[i] - 127) / 256;
                    break;

            case 16: break;
                const data = cast(short*)wave.data;

                for (size_t i; i < size; ++i)
                    result[i] = cast(float)data[i] / 32_767;
                    break;

            // 32
            default:
                const data = cast(float*)wave.data;

                for (size_t i; i < size; ++i)
                    result[i] = data[i];
        }

        return result;
    }
}
