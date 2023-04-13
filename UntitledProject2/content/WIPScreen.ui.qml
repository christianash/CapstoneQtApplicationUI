/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import FlowView 1.0

FlowItem {
    width: 1280
    height: 720

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1280
        height: 720
        color: "#a3a0a0"

        Image {
            id: image
            x: 8
            y: 8
            width: 61
            height: 61
            source: "images/arrow-left-55.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text1
            x: 19
            y: 60
            width: 40
            height: 25
            text: qsTr("Back")
            font.pixelSize: 16
            font.bold: true
        }

        Image {
            id: image1
            x: 403
            y: 324
            width: 72
            height: 72
            source: "images/build.svg.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text2
            x: 491
            y: 340
            width: 453
            height: 70
            text: qsTr("Screen is a Work in Progress...")
            font.pixelSize: 30
            font.bold: true
        }

        Image {
            id: barrier_318872910
            x: 13
            y: 502
            width: 205
            height: 205
            source: "images/barrier_318-872910.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: barrier_318872911
            x: 1067
            y: 502
            width: 205
            height: 205
            source: "images/barrier_318-872910.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
