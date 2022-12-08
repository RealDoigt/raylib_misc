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
        SetAudioStreamVolume(this, volume);
    }

    override void setPitch(float pitch)
    {
        SetAudioStreamPitch(this, pitch);
    }

    override void setPan(float pan)
    {
        SetAudioStreamPan(this, pan);
    }

    override bool isPlaying()
    {
        return IsAudioStreamPlaying(this);
    }

    override void resume()
    {
        ResumeAudioStream(this);
    }

    override void pause()
    {
        PauseAudioStream(this);
    }

    override void play()
    {
        PlayAudioStream(this);
    }

    override void stop()
    {
        StopAudioStream(this);
    }

    void setCallback(AudioCallback callback)
    {
        SetAudioStreamCallback(this, callback);
    }

    void attachProcessor(AudioCallback processor)
    {
        AttachAudioStreamProcessor(this, processor);
    }

    void detachProcessor(AudioCallback processor)
    {
        DetachAudioStreamProcessor(this, processor);
    }

    static setBufferSizeDefault(int size)
    {
        size.SetAudioStreamBufferSizeDefault;
    }
}
