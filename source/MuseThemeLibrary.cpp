#include "MuseThemeLibrary.h"

#include <QtQml/QtQml>

void MuseThemeLibrary::initLibrary(QQmlEngine *engine)
{
#if defined MUSE_THEME_STATIC_BUILD
	// Init resources in case of static build
	Q_INIT_RESOURCE(MuseThemeRes);
#endif

	// Define style search path
	engine->addImportPath(":/");

	qDebug() << "Muse theme init done";
}
