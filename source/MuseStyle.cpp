#include "MuseStyle.h"

using namespace MuseTheme;

MuseStyle::MuseStyle(QObject* parent)
    : QObject(parent)
    , _textStyle("Body1")  /// TODO: move qml enum to C++ for init params
{
}

MuseStyle* MuseStyle::qmlAttachedProperties(QObject *object)
{
    return new MuseStyle(object);
}

QString MuseStyle::textStyle() const
{
    return _textStyle;
}
void MuseStyle::setTextStyle(QString style)
{
    _textStyle = style;
    emit tsChanged();
}