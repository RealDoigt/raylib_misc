import raylib;

void main()
{
    InitWindow(1080, 720, "A raylib game");
    SetTargetFPS(60);

    while (!WindowShouldClose)
    {
        BeginDrawing;
        scope (exit) EndDrawing;
        Colors.WHITE.ClearBackground;
    }
}
