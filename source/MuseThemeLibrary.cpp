#include "MuseThemeLibrary.h"

#include <QtQml/QtQml>

#include "MuseStyle.h"

void MuseThemeLibrary::initLibrary(QQmlEngine *engine)
{
#if defined MUSE_THEME_STATIC_BUILD
	// Init resources in case of static build
	Q_INIT_RESOURCE(MuseThemeRes);
#endif

	// Define style search path
	engine->addImportPath(":/");

	// Register C++ objects
    qmlRegisterUncreatableType<MuseTheme::MuseStyle>("Muse", 1, 0, "MuseStyle", "Muse attached properties");

	qDebug() << "Muse theme init done";
}
