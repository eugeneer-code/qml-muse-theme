#ifndef MUSE_THEME_EXPORT_H
#define MUSE_THEME_EXPORT_H

#include <QtCore/qglobal.h>

#ifndef MUSE_THEME_STATIC_BUILD
#  ifdef MUSE_THEME_BUILD
#    define MuseTheme_EXPORT Q_DECL_EXPORT
#  else
#    define MuseTheme_EXPORT Q_DECL_IMPORT
#  endif
#else
#  define MuseTheme_EXPORT
#endif

#endif // MUSE_THEME_EXPORT_H
