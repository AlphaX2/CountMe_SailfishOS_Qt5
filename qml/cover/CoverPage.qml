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
import Sailfish.Silica 1.0

CoverBackground {

    PageHeader {
        title: "CountMe"
    }
    Image {
        width: parent.width / 3
        height: parent.width / 3
        anchors.right: parent.left
        anchors.rightMargin: -(width*0.75)
        anchors.bottom: parent.bottom
        anchors.bottomMargin: width
        source: "image://theme/icon-l-add"
        opacity: 0.5
    }
    Image {
        width: parent.width / 3.5
        height: parent.width / 3.5
        anchors.left: parent.right
        anchors.leftMargin: -(width*0.75)
        anchors.top: parent.top
        anchors.topMargin: width*1.5
        source: "image://theme/icon-m-remove"
        opacity: 0.5
    }

    Label {
        id: countLabelLeft
        anchors.centerIn: parent
        text: mainPage.countLeft + "\n"
        font.pixelSize: Theme.fontSizeHuge
        font.family: "Source Sans Pro Light"
    }

    Label {
        id: countLabelRight
        anchors.centerIn: parent
        text: "\n" + mainPage.countRight
        font.pixelSize: Theme.fontSizeHuge
        font.family: "Source Sans Pro Light"
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: { mainPage.countSignLeft === "+" ? mainPage.countLeft += 1 : mainPage.countLeft -= 1 }
        }

        CoverAction {
            iconSource: "image://theme/icon-cover-new"
            onTriggered: { mainPage.countSignRight === "+" ? mainPage.countRight += 1 : mainPage.countRight -= 1 }
        }
    }
}


