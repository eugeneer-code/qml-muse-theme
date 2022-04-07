#ifndef MUSETHEMELIBRARY_H
#define MUSETHEMELIBRARY_H

#include "MuseThemeExport.h"

class QQmlEngine;

class MuseTheme_EXPORT MuseThemeLibrary
{
public:
    static void initLibrary(QQmlEngine *engine);
};

#endif // MUSETHEMELIBRARY_H
