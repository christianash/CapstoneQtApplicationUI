/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: mute_button
    width: 100
    height: 100
    icon.height: 70
    icon.width: 70
    icon.source: ""

    implicitWidth: Math.max(
                       buttonBackground ? buttonBackground.implicitWidth : 0,
                       textItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        buttonBackground ? buttonBackground.implicitHeight : 0,
                        textItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4
    checkable: true

    Rectangle {
        id: background_color
        x: 0
        y: 0
        width: 100
        height: 100
        color: "#e0e0e0"

        Image {
            id: camera
            x: 12
            y: 12
            width: 77
            height: 77
            source: "images/camera.svg.png"
            fillMode: Image.PreserveAspectFit
        }
    }


    states: [
        State {
            name: "normal"
            when: !mute_button.checked

            PropertyChanges {
                target: background_color
                layer.smooth: false
            }


        },
        State {
            name: "down"
            when: mute_button.checked


            PropertyChanges {
                target: background_color
                color: "#2c4c97"
            }

            PropertyChanges {
                target: camera
                x: 12
                y: 12
            }
        }
    ]
}
