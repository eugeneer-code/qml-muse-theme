import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import Muse 1.0

Item {
    ColumnLayout{
        anchors{
            fill: parent
            margins: 10
        }
        Repeater{
            model: [Muse.ControlColor.Blue, Muse.ControlColor.Red, Muse.ControlColor.Orange,
            Muse.ControlColor.Green, Muse.ControlColor.Teal]
            RowLayout{
                Button{
                    text: "Button"
                    MuseStyle.controlColor: modelData
                }
                Button{
                    text: "Smooth"
                    MuseStyle.buttonStyle: Muse.ButtonStyle.Smooth
                    MuseStyle.controlColor: modelData
                }
                Button{
                    text: "Ghost"
                    MuseStyle.buttonStyle: Muse.ButtonStyle.Ghost
                    MuseStyle.controlColor: modelData
                }
                Button{
                    text: "Raised"
                    MuseStyle.buttonStyle: Muse.ButtonStyle.Raised
                    MuseStyle.controlColor: modelData
                }
            }
        }
        Item {
            Layout.fillHeight: true
        }
    }
}