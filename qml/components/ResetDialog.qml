import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    anchors.fill: parent

    DialogHeader {
        id: header
        acceptText: "Reset"
    }
    Label {
        anchors.top: header.bottom
        x: Theme.paddingLarge
        width: parent.width - 2*Theme.paddingLarge
        wrapMode: Text.WordWrap
        text: "Do you want to reset your counters?"
        font.pixelSize: Theme.fontSizeLarge
    }
    onAccepted: {
        mainPage.countLeft = 0
        mainPage.countRight = 0
        mainPage.countSignLeft = "+"
        mainPage.countSignRight = "+"
    }
}
