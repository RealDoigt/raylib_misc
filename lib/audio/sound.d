module raylib_misc.audio.sound;
import raylib_misc;
import std.string;
import raylib;

class Snd : IAudio
{
    private Sound sound;
    alias sound this;

    this(string fileName)
    {
        sound = fileName.toStringz.LoadWave;
    }

    this(Wave w)
    {
        sound = w.LoadSoundFromWave;
    }

    this(WaveSnd ws)
    {
        sound = LoadSoundFromWave(ws);
    }

    ~this()
    {
        sound.UnloadSound;
    }

    void playMultichannel()
    {
        PlaySoundMulti(this);
    }

    static void stopMultichannel()
    {
        StopSoundMulti;
    }

    static int getSoundsPlaying()
    {
        return GetSoundsPlaying;
    }
}
