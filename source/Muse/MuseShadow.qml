import QtQuick 2.12

ElevationEffect {
    property int shadowType: Muse.Shadow.Dark1
    elevation: {
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
    shadowColor: {
        switch(shadowType){
            case Muse.Shadow.Dark1:
            case Muse.Shadow.Dark2:
            case Muse.Shadow.Dark3:
            case Muse.Shadow.Dark4:
            case Muse.Shadow.Dark5: return "#082330"
            case Muse.Shadow.Blue1:
            case Muse.Shadow.Blue2: return "#367BF5"
            case Muse.Shadow.Green1:
            case Muse.Shadow.Green2: return "#2FA84F"
            default: return "#082330"
        }
    }
}