import QtQuick 2.13
import QtGraphicalEffects 1.13

/*
 *  Colors definition
 */
QtObject {
    // gray basic colors
    property var basic: {
        0:   "#FFFFFF",
        100: "#F7F9FA",
        200: "#F1F3F4",
        300: "#E3E4E5",
        400: "#C6CACC",
        500: "#919699",
        600: "#5E6366",
        700: "#3E4345"
    }

    // accent colors
    property color baseOrange: "#F3A72E"
    property color smoothOrange: "#FCF3D7"

    property color baseGreen: "#2FA84F"
    property color smoothGreen: "#DCF7E3"

    property color baseRed: "#EA3D2F"
    property color smoothRed: "#FEE4E2"

    property color baseBlue: "#367BF5"
    property color smoothBlue: "#E5EFFF"

    property color baseTeal: "#069697"
    property color smoothTeal: "#DAF5F2"

    // gradients
    property var gradientWarning1: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#FFECD2" }
        GradientStop { position: 1.0; color: "#FCB69F" }
    }
    property var gradientWarning2: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#F6D365" }
        GradientStop { position: 1.0; color: "#FDA085" }
    }
    property var gradientPositive1: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#84FAB0" }
        GradientStop { position: 1.0; color: "#8FEAFE" }
    }
    property var gradientPositive2: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#CFF37D" }
        GradientStop { position: 1.0; color: "#8FEAFE" }
    }
    property var gradientNegative1: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#FFB199" }
        GradientStop { position: 1.0; color: "#FF0844" }
    }
    property var gradientNegative2: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#F093FB" }
        GradientStop { position: 1.0; color: "#F5576C" }
    }
    property var gradientSmooth1: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#FEF7DF" }
        GradientStop { position: 1.0; color: "#F0DCCB" }
    }
    property var gradientSmooth2: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#D1FDFF" }
        GradientStop { position: 1.0; color: "#FFECBC" }
    }
    property var gradientSmooth3: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#FFF3F3" }
        GradientStop { position: 1.0; color: "#EBD1FF" }
    }
    property var gradientSmooth4: Gradient {
        orientation: Gradient.Horizontal
        GradientStop { position: 0.0; color: "#F3E7E9" }
        GradientStop { position: 1.0; color: "#E3EEFF" }
    }
}
