module raylib_misc.audio.device;
import raylib;

class AudioDevice
{
    private
    {
        static AudioDevice instance;

        this()
        {
            InitAudioDevice;
        }
    }

    static auto getInstance()
    {
        if (instance is null) instance = new AudioDevice();
        return instance;
    }

    void close()
    {
        this = null;
    }

    auto isReady()
    {
        return IsAudioDeviceReady;
    }

    void setVolume(float volume)
    {
        volume.SetMasterVolume;
    }
}
