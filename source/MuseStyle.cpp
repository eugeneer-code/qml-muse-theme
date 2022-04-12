#include "MuseStyle.h"

using namespace MuseTheme;

MuseStyle::MuseStyle(QObject* parent)
    : QObject(parent)
    , _textStyle(6)  /// TODO: move qml enum to C++ for init params
{
}

MuseStyle* MuseStyle::qmlAttachedProperties(QObject *object)
{
    return new MuseStyle(object);
}

int MuseStyle::textStyle() const
{
    return _textStyle;
}
void MuseStyle::setTextStyle(int style)
{
    _textStyle = style;
    emit tsChanged();
}