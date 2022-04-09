import QtQuick 2.13

pragma Singleton

QtObject {
    id: styleObject

    property var palette: MusePalette{}

    property int appTheme: Muse.AppTheme.Light

    property color backgroundColor

    function setTheme(theme){
        switch(theme){
        case Muse.AppTheme.Light:
            backgroundColor = palette.basic[0]
            break;
        case Muse.AppTheme.Dark:
            backgroundColor = palette.basic[700]
            break;
        }
    }

   Component.onCompleted: setTheme(Muse.AppTheme.Light)
}
