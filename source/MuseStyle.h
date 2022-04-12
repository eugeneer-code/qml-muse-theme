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

public:
    MuseStyle(QObject *parent = nullptr);

    static MuseStyle* qmlAttachedProperties(QObject* object);

    int textStyle() const;
    void setTextStyle(int style);

signals:
    void tsChanged();

private:
    int _textStyle;
};

}

QML_DECLARE_TYPEINFO(MuseTheme::MuseStyle, QML_HAS_ATTACHED_PROPERTIES)

#endif //QMLMUSE_MUSESTYLE_H
