#if !defined(HANDMADE_H)

/*
NOTE Services that the platform layer provides to the game.
*/

/*
    NOTE Services that the game provides to the platform layer.
*/

// FOUR THINGS - controller/keyboard input, bitmap buffer to use, sound buffer to use
struct game_offscreen_buffer
{
    //NOTE Pixels are always 32-bits wide, Memory Order BB GG RR XX
    void *Memory;
    int Width;
    int Height;
    int Pitch;
};

struct game_sound_output_buffer
{
    int SamplesPerSecond;
    int SampleCount;
    int16 *Samples;
};

internal void GameUpdateAndRender(game_offscreen_buffer *Buffer, int BlueOffset, int GreenOffset,
                                    game_sound_output_buffer *SoundBuffer);


#define HANDMADE_H
#endif
