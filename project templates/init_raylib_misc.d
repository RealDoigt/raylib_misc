import raylib_misc;
import raylib;

void main()
{
    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

    while (!WindowShouldClose)
    {
        BeginDrawing;
        scope (exit) EndDrawing;
        white.ClearBackground;
    }
}
