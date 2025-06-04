#define COMPONENT main

// This is being used for the Addon's Name and can be "My Addon Template Framework"
#define COMPONENT_BEAUTIFIED Main

#include "script_mod.hpp"

#ifdef DEBUG_ENABLED_MAIN
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_MAIN
    #define DEBUG_SETTINGS DEBUG_SETTINGS_MAIN
#endif

#include "script_macros.hpp"