import QtQuick 2.13
import QtGraphicalEffects 1.13

DropShadow {
    property int shadowType: Muse.Shadow.Dark1
    horizontalOffset: 0
    verticalOffset: {
        switch(shadowType){
            case Muse.Shadow.Dark1: return 2
            case Muse.Shadow.Dark2: return 4
            case Muse.Shadow.Dark3: return 8
            case Muse.Shadow.Dark4: return 10
            case Muse.Shadow.Dark5: return 14
            case Muse.Shadow.Blue1: return 4
            case Muse.Shadow.Blue2: return 10
            case Muse.Shadow.Green1: return 4
            case Muse.Shadow.Green2: return 10
            default: return 2
        }
    }
    radius: {
        switch(shadowType){
            case Muse.Shadow.Dark1: return 4
            case Muse.Shadow.Dark2: return 8
            case Muse.Shadow.Dark3: return 16
            case Muse.Shadow.Dark4: return 24
            case Muse.Shadow.Dark5: return 32
            case Muse.Shadow.Blue1: return 8
            case Muse.Shadow.Blue2: return 24
            case Muse.Shadow.Green1: return 8
            case Muse.Shadow.Green2: return 24
            default: return 4
        }
    }
    samples: 1 + radius * 2
    color: {
        switch(shadowType){
            case Muse.Shadow.Dark1:
            case Muse.Shadow.Dark2:
            case Muse.Shadow.Dark3:
            case Muse.Shadow.Dark4:
            case Muse.Shadow.Dark5: return "#20082330"
            case Muse.Shadow.Blue1:
            case Muse.Shadow.Blue2: return "#30367BF5"
            case Muse.Shadow.Green1:
            case Muse.Shadow.Green2: return "#302FA84F"
            default: return "#20082330"
        }
    }
}