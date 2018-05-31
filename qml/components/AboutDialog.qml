import QtQuick 2.0
import Sailfish.Silica 1.0

Dialog {
    anchors.fill: parent

    DialogHeader {
        id: header
        title: "CountMe 2.0"
    }

    Column {
        anchors.top: header.bottom
        width: parent.width
        spacing: Theme.paddingMedium

        Label {
            x: Theme.paddingMedium
            text: "Authors:"
            color: Theme.highlightColor

            font.pixelSize: Theme.fontSizeLarge
        }
        Label {
            x: Theme.paddingLarge
            text: "Gabriel Böhme\nMatti Viljanen"
            color: Theme.primaryColor

            font.pixelSize: Theme.fontSizeMedium
        }
        Label {
            x: Theme.paddingMedium
            text: "Contact:"
            color: Theme.highlightColor

            font.pixelSize: Theme.fontSizeLarge
        }
        Label {
            x: Theme.paddingLarge
            text: "m.gabrielboehme@googlemail.com"
            color: Theme.primaryColor

            font.pixelSize: Theme.fontSizeMedium
        }
        Label {
            x: Theme.paddingMedium
            text: "License:"
            color: Theme.highlightColor

            font.pixelSize: Theme.fontSizeLarge
        }
        Label {
            x: Theme.paddingLarge
            text: "GNU General Public Licence 3.0"
            color: Theme.primaryColor

            font.pixelSize: Theme.fontSizeMedium
        }
        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Code"
            onClicked: Qt.openUrlExternally("http://www.github.com/AlphaX2/CountMe_SailfishOS_Qt5")
        }
    }
}


