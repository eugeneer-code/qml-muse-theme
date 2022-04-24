#ifndef QMLMUSE_MUSESTYLE_H
#define QMLMUSE_MUSESTYLE_H
#include <QObject>
#include <QtQml>

namespace MuseTheme {

/*
 * Implements attached properties for Muse controls
 */
class MuseStyle : public QObject {
Q_OBJECT
    Q_PROPERTY(int textStyle READ textStyle WRITE setTextStyle NOTIFY tsChanged)
    Q_PROPERTY(int controlColor READ controlColor WRITE setControlColor NOTIFY ccChanged)
    Q_PROPERTY(int buttonStyle READ buttonStyle WRITE setButtonStyle NOTIFY bsChanged)

public:
    MuseStyle(QObject *parent = nullptr);

    static MuseStyle* qmlAttachedProperties(QObject* object);

    int textStyle() const;
    void setTextStyle(int style);

    int controlColor() const;
    void setControlColor(int color);

    int buttonStyle() const;
    void setButtonStyle(int style);

signals:
    void tsChanged();
    void ccChanged();
    void bsChanged();

private:
    int _textStyle;
    int _controlColor;
    int _buttonStyle;
};

}

QML_DECLARE_TYPEINFO(MuseTheme::MuseStyle, QML_HAS_ATTACHED_PROPERTIES)

#endif //QMLMUSE_MUSESTYLE_H
