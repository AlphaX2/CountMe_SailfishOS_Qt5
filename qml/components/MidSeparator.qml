import QtQuick 2.0
import Sailfish.Silica 1.0

Row {
    anchors.horizontalCenter: parent.horizontalCenter

    Separator {
        width: parent.width / 2
        color: Theme.highlightColor

        rotation: 180
    }
    Separator {
        width: parent.width / 2
        color: Theme.highlightColor
    }
}
