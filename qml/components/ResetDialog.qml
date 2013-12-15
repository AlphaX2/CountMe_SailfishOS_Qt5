import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    anchors.fill: parent

    DialogHeader {
        acceptText: "Reset"
    }
    Label {
        anchors.centerIn: parent
        text: "Do you want to reset your counter?"
        font.pixelSize: Theme.fontSizeMedium
    }
    onAccepted: {mainPage.count = 0; mainPage.count_sign = "+"}
}
