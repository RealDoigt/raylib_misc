module raylib_misc.audio.iaudio;

interface IAudio
{
    void setVolume(float volume);
    void setPitch(float pitch);
    void setPan(float pan);
    bool isPlaying();
    void resume();
    void pause();
    void play();
    void stop();
}
