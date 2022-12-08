module raylib_misc.audio.stream;
import raylib;

class Audio : IAudio
{
    private AudioStream stream;
    alias stream this;

    this(uint sampleRate, uint sampleSize, uint channels)
    {
        stream = LoadAudioStream(sampleRate, sampleSize, channels);
    }

    ~this()
    {
        stream.UnloadAudioStream;
    }

    void update(const void* data, int frameCount)
    {
        UpdateAudioStream(this, data, frameCount);
    }

    auto isProcessed()
    {
        return IsAudioStreamProcessed(this);
    }
}
