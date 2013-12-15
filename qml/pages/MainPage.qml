/*
  Copyright (C) 2013 Jolla Ltd.
  Contact: Thomas Perl <thomas.perl@jollamobile.com>
  All rights reserved.

  You may use this file under the terms of BSD license as follows:

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Jolla Ltd nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

import QtQuick 2.0
import QtMultimedia 5.0
import Sailfish.Silica 1.0
import "../components"


Page {
    id: page

    property string count_sign: "+"
    property int count: 0
    property bool sound: true
    property bool vibra: true

    SoundEffect {
        id: soundEffect
        source: "/usr/share/sounds/jolla-ambient/stereo/pulldown_lock.wav"
    }

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        id: pageFlickable
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: "About"
                onClicked: pageStack.push("../components/AboutDialog.qml")
            }
            MenuItem {
                text: "Reset"
                onClicked: pageStack.push("../components/ResetDialog.qml")
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            spacing: Theme.paddingMedium
            width: page.width

            PageHeader {
                title: "CountMe"
            }
            Label {
                id: counter
                anchors.right: parent.right
                anchors.rightMargin: Theme.paddingLarge

                text: count
                font.family: "Source Sans Pro Light"
                font.pixelSize: Theme.fontSizeHuge
                color: Theme.primaryColor
            }
//            Separator {
//                width: parent.width
//                color: Theme.highlightColor
//                rotation: 180
//            }
            Rectangle {
                id: countClickAreaMinus
                anchors.horizontalCenter: parent.horizontalCenter

                height: page.width / 3
                width: page.width / 3
                radius: width / 2

                border.width: 2
                border.color: Theme.secondaryHighlightColor
                color: clickAreaMinus.pressed ? Theme.secondaryHighlightColor : "transparent"

                Image {
                    anchors.centerIn: countClickAreaMinus
                    source: "image://theme/icon-m-remove"
                }

                MouseArea {
                    id: clickAreaMinus
                    anchors.fill: countClickAreaMinus
                    onClicked: {
                        if(sound){soundEffect.play()}
                        if(count > -999999){count -= 1}
                    }
                }
            }
            MidSeparator {
                width: parent.width
            }
            Rectangle {
                id: countClickAreaPlus
                anchors.horizontalCenter: parent.horizontalCenter

                height: page.width / 2
                width: page.width / 2
                radius: width / 2

                border.width: 2
                border.color: Theme.secondaryHighlightColor
                color: clickAreaPlus.pressed ? Theme.secondaryHighlightColor : "transparent"

                Image {
                    anchors.centerIn: countClickAreaPlus
                    source: "image://theme/icon-l-add"
                }
                MouseArea {
                    id: clickAreaPlus
                    anchors.fill: countClickAreaPlus
                    onClicked: {
                        if(sound){soundEffect.play()}
                        if(count <= 999999){count += 1}
                    }
                }
            }
            Switch {
                id: soundButton
                anchors.horizontalCenter: parent.horizontalCenter
                checked: sound ? true : false
                icon.source: sound ? "image://theme/icon-l-speaker" : "image://theme/icon-m-speaker-mute"
                onClicked: sound ? sound = false : sound = true
            }
        }
    }
}


