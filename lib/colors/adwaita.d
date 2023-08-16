module raylib_misc.colors.adwaita;
import raylib;

// Window Colours
enum Color windowBGLight = {250, 250, 250, 255};
enum Color windowBGDark  = { 36,  36,  36, 255};
enum Color windowFGLight = {  0,   0,   0, 204};
alias windowFGDark = light1;

// View Colours
alias viewBGLight = light1;
enum Color viewBGDark = { 30,  30,  30, 255};
alias viewFGLight = windowFGLight;
alias viewFGDark  = light1;

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

// Warning Colours
enum Color warningLight   = {156, 110,   3, 255};
enum Color warningDark    = {248, 228,  92, 255};
enum Color warningBGLight = {229, 165,  10, 255};
enum Color warningBGDark  = {205, 147,   9, 255};
alias warningFGLight = windowFGLight;
alias warningFGDark  = warningFGLight;

// Error Colours
alias errorLight   = destructiveLight;
alias errorDark    = destructiveDark;
alias errorBGLight = destructiveBGLight;
alias errorBGDark  = destructiveBGDark;
alias errorFGLight = destructiveFGLight;
alias errorFGDark  = destructiveFGDark;
