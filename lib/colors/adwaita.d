module raylib_misc.colors.adwaita;
import raylib;

// Accent Colours
enum Color accentLight   = { 28, 113, 216, 255};
enum Color accentDark    = {120, 174, 237, 255};
enum Color accentBGLight = { 53, 132, 228, 255};
alias accentBGDark  = accentBGLight;
alias accentFGLight = light1;
alias accentFGDark  = light1;

// Destructive Colours
enum Color destructiveLight   = {192,  28,  40, 255};
enum Color destructiveDark    = {255, 123,  99, 255};
enum Color destructiveBGLight = {224,  27,  36, 255};
alias destructiveBGDark  = destructiveLight;
alias destructiveFGLight = light1;
alias destructiveFGDark  = light1;

// Success Colours
enum Color successLight   = { 27, 133,  83, 255};
enum Color successDark    = {143, 240, 164, 255};
enum Color successBGLight = { 46, 194, 126, 255};
enum Color successBGDark  = { 38, 162, 105, 255};
alias successFGLight = light1;
alias successFGDark  = light1;