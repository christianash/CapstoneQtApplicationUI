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
        width: 1920
        height: 1080
        color: "#ffffff"



        Rectangle {
            id: rectangle1
            x: 0
            y: 0
            width: 1280
            height: 720
            color: "#afafaf"

            Text {
                id: login_title
                x: 615
                y: 14
                width: 89
                height: 58
                text: qsTr("Login")
                font.pixelSize: 30
            }

            Text {
                id: username_title
                x: 421
                y: 304
                text: qsTr("Username: ")
                font.pixelSize: 28
            }

            TextField {
                id: username_field
                x: 559
                y: 298
                font.pointSize: 18
                placeholderText: qsTr("Username")
            }

            TextField {
                id: password_field
                x: 562
                y: 363
                font.pointSize: 18
                placeholderText: qsTr("Password")
            }

            Text {
                id: password_title
                x: 424
                y: 369
                text: qsTr("Password:")
                font.pixelSize: 28
            }

            Button {
                id: login_btn
                x: 839
                y: 363
                width: 171
                height: 44
                text: qsTr("Login")
                font.pointSize: 12
            }

            Text {
                id: loginstatus
                x: 438
                y: 442
                width: 51
                height: 35
                text: qsTr("")
                font.pixelSize: 12
            }

            Image {
                id: image
                x: 8
                y: 14
                width: 61
                height: 61
                source: "images/arrow-left-55.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
}
