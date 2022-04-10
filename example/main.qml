import QtQuick 2.13
import QtQuick.Window 2.1
import QtQuick.Controls 2.1
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

    StackLayout {
        anchors.fill: parent
        currentIndex: 0
        Colors{}
    }
}
