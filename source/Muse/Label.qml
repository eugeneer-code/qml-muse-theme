import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Controls.impl 2.13
import QtQuick.Templates 2.13 as T
import Muse 1.0

T.Label {
    id: control

    color: MuseTheme.textColor
    linkColor: control.palette.link

    property int textStyle: control.MuseStyle.textStyle

    font.family: "Open Sans"
    font.pixelSize: {
        switch(textStyle){
            case Muse.TextStyle.H1: return 80
            case Muse.TextStyle.H2: return 60
            case Muse.TextStyle.H3: return 48
            case Muse.TextStyle.H4: return 34
            case Muse.TextStyle.H5: return 24
            case Muse.TextStyle.H6: return 20
            case Muse.TextStyle.Body1: return 16
            case Muse.TextStyle.Body2: return 14
            case Muse.TextStyle.Subtitle: return 14
            case Muse.TextStyle.Caption: return 12
            case Muse.TextStyle.Button: return 14
            case Muse.TextStyle.Overline: return 10
            default: return 16
        }
    }
    font.weight: {
        switch(textStyle){
            case Muse.TextStyle.H1: return Font.Light
            case Muse.TextStyle.H2: return Font.Light
            case Muse.TextStyle.H3: return Font.Normal
            case Muse.TextStyle.H4: return Font.Normal
            case Muse.TextStyle.H5: return Font.Normal
            case Muse.TextStyle.H6: return Font.DemiBold
            case Muse.TextStyle.Body1: return Font.Normal
            case Muse.TextStyle.Body2: return Font.Normal
            case Muse.TextStyle.Subtitle: return Font.DemiBold
            case Muse.TextStyle.Caption: return Font.Normal
            case Muse.TextStyle.Button: return Font.DemiBold
            case Muse.TextStyle.Overline: return Font.DemiBold
            default: return Font.Normal
        }
    }
    font.letterSpacing: {
        switch(textStyle){
            case Muse.TextStyle.H1: return -1.5
            case Muse.TextStyle.H2: return 0
            case Muse.TextStyle.H3: return 0
            case Muse.TextStyle.H4: return 0.25
            case Muse.TextStyle.H5: return 0
            case Muse.TextStyle.H6: return 0.15
            case Muse.TextStyle.Body1: return 0.44
            case Muse.TextStyle.Body2: return 0.25
            case Muse.TextStyle.Subtitle: return 0.1
            case Muse.TextStyle.Caption: return 0.4
            case Muse.TextStyle.Button: return 0.75
            case Muse.TextStyle.Overline: return 1.5
            default: return 0.44
        }
    }
    font.capitalization: {
        if(textStyle == Muse.TextStyle.Button ||
        textStyle == Muse.TextStyle.Overline){
            return Font.AllUppercase
        }
        return Font.MixedCase
    }
}