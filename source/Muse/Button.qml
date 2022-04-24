import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12
import QtQuick.Templates 2.12 as T
import Muse 1.0

T.Button {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    padding: 6
    horizontalPadding: padding + 2
    spacing: 6

    icon.width: 20
    icon.height: 20
    icon.color: control.checked || control.highlighted ? control.palette.brightText :
                control.flat && !control.down ? (control.visualFocus ? control.palette.highlight : control.palette.windowText) : control.palette.buttonText

    contentItem: IconLabel {
        spacing: control.spacing
        mirrored: control.mirrored
        display: control.display

        icon: control.icon
        text: control.text
        font.family: "Open Sans"
        font.pixelSize: 14
        font.weight: Font.DemiBold
        font.letterSpacing: 0.75
        font.capitalization: Font.AllUppercase
        //color: control.checked || control.highlighted ? control.palette.brightText :
        //       control.flat && !control.down ? (control.visualFocus ? control.palette.highlight : control.palette.windowText) : control.palette.buttonText
        color: {
            if(control.MuseStyle.buttonStyle == Muse.ButtonStyle.Normal) return MuseTheme.palette.basic[0]
            switch(control.MuseStyle.controlColor){
                case Muse.ControlColor.Blue: return MuseTheme.palette.baseBlue
                case Muse.ControlColor.Red: return MuseTheme.palette.baseRed
                case Muse.ControlColor.Orange: return MuseTheme.palette.baseOrange
                case Muse.ControlColor.Green: return MuseTheme.palette.baseGreen
                case Muse.ControlColor.Teal: return MuseTheme.palette.baseTeal
            }
        }
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 40
        radius: 4
        visible: !control.flat || control.down || control.checked || control.highlighted
        //color: Color.blend(control.checked || control.highlighted ? control.palette.dark : control.palette.button,
        //                                                            control.palette.mid, control.down ? 0.5 : 0.0)
        color: {
            switch(control.MuseStyle.buttonStyle){
            case Muse.ButtonStyle.Normal:
                switch(control.MuseStyle.controlColor){
                    case Muse.ControlColor.Blue: return MuseTheme.palette.baseBlue
                    case Muse.ControlColor.Red: return MuseTheme.palette.baseRed
                    case Muse.ControlColor.Orange: return MuseTheme.palette.baseOrange
                    case Muse.ControlColor.Green: return MuseTheme.palette.baseGreen
                    case Muse.ControlColor.Teal: return MuseTheme.palette.baseTeal
                }
            break;
            case Muse.ButtonStyle.Smooth:
                switch(control.MuseStyle.controlColor){
                    case Muse.ControlColor.Blue: return MuseTheme.palette.smoothBlue
                    case Muse.ControlColor.Red: return MuseTheme.palette.smoothRed
                    case Muse.ControlColor.Orange: return MuseTheme.palette.smoothOrange
                    case Muse.ControlColor.Green: return MuseTheme.palette.smoothGreen
                    case Muse.ControlColor.Teal: return MuseTheme.palette.smoothTeal
                }
            break;
            case Muse.ButtonStyle.Ghost:
                return MuseTheme.backgroundColor
            case Muse.ButtonStyle.Raised:
                return MuseTheme.backgroundColor
            }

        }
        //gradient: MuseTheme.palette.gradientPositive1
        border.color: {
            switch(control.MuseStyle.controlColor){
                case Muse.ControlColor.Blue: return MuseTheme.palette.baseBlue
                case Muse.ControlColor.Red: return MuseTheme.palette.baseRed
                case Muse.ControlColor.Orange: return MuseTheme.palette.baseOrange
                case Muse.ControlColor.Green: return MuseTheme.palette.baseGreen
                case Muse.ControlColor.Teal: return MuseTheme.palette.baseTeal
            }
        }
        border.width: control.MuseStyle.buttonStyle == Muse.ButtonStyle.Ghost ? 1 : 0
        layer.enabled: control.MuseStyle.buttonStyle == Muse.ButtonStyle.Raised
        layer.effect: MuseShadow{shadowType: Muse.Shadow.Dark2}
        Rectangle {
            visible: control.hovered
            color: control.pressed ? MuseTheme.pressedOverlayColor : MuseTheme.hoverOverlayColor
            anchors.fill: parent
            radius: 4
        }
    }
}