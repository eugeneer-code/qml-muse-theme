import QtQuick 2.13
import QtQuick.Controls 2.13
import Muse 1.0

Item {
    Column {
        anchors{
            fill: parent
            margins: 10
            topMargin: 30
        }

        Label {
            text: "Colors"
        }
        Flow {
            width: parent.width
            spacing: 8
            Repeater {
                model: [
                    {name: "basic[0]", data: MuseTheme.palette.basic[0]},
                    {name: "basic[100]", data: MuseTheme.palette.basic[100]},
                    {name: "basic[200]", data: MuseTheme.palette.basic[200]},
                    {name: "basic[300]", data: MuseTheme.palette.basic[300]},
                    {name: "basic[400]", data: MuseTheme.palette.basic[400]},
                    {name: "basic[500]", data: MuseTheme.palette.basic[500]},
                    {name: "basic[600]", data: MuseTheme.palette.basic[600]},
                    {name: "basic[700]", data: MuseTheme.palette.basic[700]},
                    {name: "baseOrange", data: MuseTheme.palette.baseOrange},
                    {name: "smoothOrange", data: MuseTheme.palette.smoothOrange},
                    {name: "baseGreen", data: MuseTheme.palette.baseGreen},
                    {name: "smoothGreen", data: MuseTheme.palette.smoothGreen},
                    {name: "baseRed", data: MuseTheme.palette.baseRed},
                    {name: "smoothRed", data: MuseTheme.palette.smoothRed},
                    {name: "baseBlue", data: MuseTheme.palette.baseBlue},
                    {name: "smoothBlue", data: MuseTheme.palette.smoothBlue},
                    {name: "baseTeal", data: MuseTheme.palette.baseTeal},
                    {name: "smoothTeal", data: MuseTheme.palette.smoothTeal}
                ]
                delegate: Rectangle{
                     width: 50
                     height: 50
                     radius: 3
                     color: modelData.data
                     MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                     }
                     ToolTip.visible: mouseArea.containsMouse
                     ToolTip.text: modelData.name
                }
            }
        }

        Label {
            text: "Gradients"
        }
        Flow {
            width: parent.width
            spacing: 8
            Repeater {
                model: [
                    {name: "gradientWarning1", data: MuseTheme.palette.gradientWarning1},
                    {name: "gradientWarning2", data: MuseTheme.palette.gradientWarning2},
                    {name: "gradientPositive1", data: MuseTheme.palette.gradientPositive1},
                    {name: "gradientPositive2", data: MuseTheme.palette.gradientPositive2},
                    {name: "gradientNegative1", data: MuseTheme.palette.gradientNegative1},
                    {name: "gradientNegative2", data: MuseTheme.palette.gradientNegative2},
                    {name: "gradientSmooth1", data: MuseTheme.palette.gradientSmooth1},
                    {name: "gradientSmooth2", data: MuseTheme.palette.gradientSmooth2},
                    {name: "gradientSmooth3", data: MuseTheme.palette.gradientSmooth3},
                    {name: "gradientSmooth4", data: MuseTheme.palette.gradientSmooth4}
                ]
                delegate: Rectangle{
                     width: 50
                     height: 50
                     radius: 3
                     gradient: modelData.data
                     MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                     }
                     ToolTip.visible: mouseArea.containsMouse
                     ToolTip.text: modelData.name
                }
            }
        }

        Label {
            text: "Shadows"
        }
        Flow {
            width: parent.width
            spacing: 20
            Repeater {
                model: [
                    {name: "Dark1", data: Muse.Shadow.Dark1},
                    {name: "Dark2", data: Muse.Shadow.Dark2},
                    {name: "Dark3", data: Muse.Shadow.Dark3},
                    {name: "Dark4", data: Muse.Shadow.Dark4},
                    {name: "Dark5", data: Muse.Shadow.Dark5},
                    {name: "Blue1", data: Muse.Shadow.Blue1},
                    {name: "Blue2", data: Muse.Shadow.Blue2},
                    {name: "Green1", data: Muse.Shadow.Green1},
                    {name: "Green2", data: Muse.Shadow.Green2}
                ]
                delegate: Rectangle{
                     width: 50
                     height: 50
                     radius: 3
                     color: MuseTheme.backgroundColor
                     layer.enabled: true
                     layer.effect: MuseShadow{shadowType: modelData.data}
                     MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                     }
                     ToolTip.visible: mouseArea.containsMouse
                     ToolTip.text: modelData.name
                }
            }
        }
    }
}