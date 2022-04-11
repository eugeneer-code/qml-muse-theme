import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.impl 2.13
import QtQuick.Templates 2.13 as T
import Muse 1.0

T.Label {
    id: control

    color: control.palette.windowText
    linkColor: control.palette.link

    property string textStyle: control.MuseStyle.textStyle

    property var params: MuseTheme.textStyles[textStyle]

    font.family: "Open Sans"
    font.pixelSize: params.size
    font.weight: params.weight
    font.letterSpacing: params.spacing
    font.capitalization: params.cap ? Font.AllUppercase : Font.MixedCase
}