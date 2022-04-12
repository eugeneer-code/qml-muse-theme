import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13
import Muse 1.0
import "Pages"

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: "Muse Style Library"

    color: MuseTheme.backgroundColor

    Component.onCompleted:{
        drawer.open()
    }

    Drawer {
        id: drawer
        width: 150
        height: window.height
        dim: false
        //interactive: false

        ListView {
            anchors.fill: parent
            model:["Colors", "Typography"]
            boundsBehavior: Flickable.StopAtBounds
            delegate: ItemDelegate{
                width: parent.width
                text: modelData
                onClicked: stack.currentIndex = index
            }
        }
    }

    StackLayout {
        id: stack
        anchors{
            fill: parent
            leftMargin: drawer.x + drawer.width
            topMargin: 40
        }
        currentIndex: 0
        Colors{}
        Typography{}
    }

    // Theme selector
    ComboBox {
        anchors {
           top: parent.top
           right: parent.right
        }
        model: ["Light", "Dark"]
        onActivated: {
            switch(index){
                case 0: MuseTheme.setTheme(Muse.AppTheme.Light); break;
                case 1: MuseTheme.setTheme(Muse.AppTheme.Dark); break;
            }
        }
    }
}
