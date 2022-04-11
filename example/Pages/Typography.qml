import QtQuick 2.13
import QtQuick.Controls 2.13
import Muse 1.0

Item {
    Column {
        anchors{
            fill: parent
            margins: 10
        }
        spacing : 16

        Label {
            text: "H1 Head"
            MuseStyle.textStyle: "H1"
        }
        Label {
            text: "H2 Headline"
            MuseStyle.textStyle: "H2"
        }
        Label {
            text: "H3 Headline"
            MuseStyle.textStyle: "H3"
        }
        Label {
            text: "H4 Headline"
            MuseStyle.textStyle: "H4"
        }
        Label {
            text: "H5 Headline"
            MuseStyle.textStyle: "H5"
        }
        Label {
            text: "H6 Headline"
            MuseStyle.textStyle: "H6"
        }
        Label {
            text: "Body 1"
            MuseStyle.textStyle: "Body1"
        }
        Label {
            text: "Body 2"
            MuseStyle.textStyle: "Body2"
        }
        Label {
            text: "Subtitle"
            MuseStyle.textStyle: "Subtitle"
        }
        Label {
            text: "Button"
            MuseStyle.textStyle: "Button"
        }
        Label {
            text: "Caption"
            MuseStyle.textStyle: "Caption"
        }
        Label {
            text: "Overline"
            MuseStyle.textStyle: "Overline"
        }
    }
}