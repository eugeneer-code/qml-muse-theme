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

   // load fonts
   property FontLoader fontExBold: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-ExtraBold.ttf")}
   property FontLoader fontExBoldItalic: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-ExtraBoldItalic.ttf")}
   property FontLoader fontItalic: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-Italic.ttf")}
   property FontLoader fontLight: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-Light.ttf")}
   property FontLoader fontLightItalic: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-LightItalic.ttf")}
   property FontLoader fontMedium: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-Medium.ttf")}
   property FontLoader fontMediumItalic: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-MediumItalic.ttf")}
   property FontLoader fontRegular: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-Regular.ttf")}
   property FontLoader fontSemiBold: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-SemiBold.ttf")}
   property FontLoader fontSemiBoldItalic: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-SemiBoldItalic.ttf")}
   property FontLoader fontBold: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-Bold.ttf")}
   property FontLoader fontBoldItalic: FontLoader{source: Qt.resolvedUrl("fonts/OpenSans-BoldItalic.ttf")}

   property var textStyles: {
        "H1": {"size": 96, "weight": Font.Light, "spacing": -1.5, "cap": false},
        "H2": {"size": 60, "weight": Font.Light, "spacing": 0, "cap": false},
        "H3": {"size": 48, "weight": Font.Normal, "spacing": 0, "cap": false},
        "H4": {"size": 34, "weight": Font.Normal, "spacing": 0.25, "cap": false},
        "H5": {"size": 24, "weight": Font.Normal, "spacing": 0, "cap": false},
        "H6": {"size": 20, "weight": Font.DemiBold, "spacing": 0.15, "cap": false},
        "Body1": {"size": 16, "weight": Font.Normal, "spacing": 0.44, "cap": false},
        "Body2": {"size": 14, "weight": Font.Normal, "spacing": 0.25, "cap": false},
        "Subtitle": {"size": 14, "weight": Font.DemiBold, "spacing": 0.1, "cap": false},
        "Caption": {"size": 12, "weight": Font.Normal, "spacing": 0.4, "cap": false},
        "Button": {"size": 14, "weight": Font.DemiBold, "spacing": 0.75, "cap": true},
        "Overline": {"size": 10, "weight": Font.DemiBold, "spacing": 1.5, "cap": true}
   }
}
