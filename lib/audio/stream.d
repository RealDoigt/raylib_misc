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

    override void setVolume(float volume)
    {

    }
    override void setPitch(float pitch)
    {

    }
    override void setPan(float pan)
    {

    }
    override bool isPlaying()
    {

    }
    override void resume()
    {

    }
    override void pause()
    {

    }
    override void play()
    {

    }
    override void stop()
    {

    }
}
