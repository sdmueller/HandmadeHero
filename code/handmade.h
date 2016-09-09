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
    BITMAPINFO Info;
    void *Memory;
    int Width;
    int Height;
    int Pitch;
};

internal void GameUpdateAndRender(game_offscreen_buffer *Buffer, int BlueOffset, int GreenOffset);

#define HANDMADE_H
#endif
