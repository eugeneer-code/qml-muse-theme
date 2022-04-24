#include "MuseStyle.h"

using namespace MuseTheme;

MuseStyle::MuseStyle(QObject* parent)
    : QObject(parent)
    , _textStyle(6)  /// TODO: move qml enum to C++ for init params
    , _controlColor(0)
    , _buttonStyle(0)
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

int MuseStyle::controlColor() const
{
    return _controlColor;
}

void MuseStyle::setControlColor(int color)
{
    _controlColor = color;
    emit ccChanged();
}

int MuseStyle::buttonStyle() const
{
    return _buttonStyle;
}

void MuseStyle::setButtonStyle(int style)
{
    _buttonStyle = style;
    emit bsChanged();
}
