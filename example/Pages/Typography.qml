import QtQuick 2.13
import QtQuick.Controls 2.13
import Muse 1.0

Item {
    Column {
        anchors{
            fill: parent
            margins: 10
        }
        spacing : 8

        Label {
            text: "H1 Head"
            MuseStyle.textStyle: Muse.TextStyle.H1
        }
        Label {
            text: "H2 Headline"
            MuseStyle.textStyle: Muse.TextStyle.H2
        }
        Label {
            text: "H3 Headline"
            MuseStyle.textStyle: Muse.TextStyle.H3
        }
        Label {
            text: "H4 Headline"
            MuseStyle.textStyle: Muse.TextStyle.H4
        }
        Label {
            text: "H5 Headline"
            MuseStyle.textStyle: Muse.TextStyle.H5
        }
        Label {
            text: "H6 Headline"
            MuseStyle.textStyle: Muse.TextStyle.H6
        }
        Label {
            text: "Body 1"
            MuseStyle.textStyle: Muse.TextStyle.Body1
        }
        Label {
            text: "Body 2"
            MuseStyle.textStyle: Muse.TextStyle.Body2
        }
        Label {
            text: "Subtitle"
            MuseStyle.textStyle: Muse.TextStyle.Subtitle
        }
        Label {
            text: "Button"
            MuseStyle.textStyle: Muse.TextStyle.Button
        }
        Label {
            text: "Caption"
            MuseStyle.textStyle: Muse.TextStyle.Caption
        }
        Label {
            text: "Overline"
            MuseStyle.textStyle: Muse.TextStyle.Overline
        }
    }
}