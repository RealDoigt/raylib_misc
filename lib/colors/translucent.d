module raylib_misc.colors.translucent;
import raylib;

enum Color whiteAplha(ubyte alpha)   = {255, 255, 255, alpha};
enum Color blackAplha(ubyte alpha)   = {  0,   0,   0, alpha};
enum Color redAplha(ubyte alpha)     = {255,   0,   0, alpha};
enum Color orangeAplha(ubyte alpha)  = {255, 128,   0, alpha};
enum Color yellowAplha(ubyte alpha)  = {255, 255,   0, alpha};
enum Color greenAplha(ubyte alpha)   = {  0, 255,   0, alpha};
enum Color blueAplha(ubyte alpha)    = {  0,   0, 255, alpha};
enum Color cyanAplha(ubyte alpha)    = {  0, 255, 255, alpha};
enum Color magentaAplha(ubyte alpha) = {255,   0, 255, alpha};
enum Color brownAplha(ubyte alpha)   = {128,  64,   0, alpha};
enum Color purpleAplha(ubyte alpha)  = {128,   0, 255, alpha};
