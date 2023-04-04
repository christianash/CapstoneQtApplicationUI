/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: control
    width: 100
    height: 100

    implicitWidth: Math.max(
                       buttonBackground ? buttonBackground.implicitWidth : 0,
                       textItem.implicitWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(
                        buttonBackground ? buttonBackground.implicitHeight : 0,
                        textItem.implicitHeight + topPadding + bottomPadding)
    leftPadding: 4
    rightPadding: 4

    Rectangle {
        id: button_color
        x: 0
        y: 0
        width: 100
        height: 100
        color: "#2c4c97"
    }

    Image {
        id: button_image
        x: 15
        y: 16
        width: 70
        height: 70
        source: "images/phone.svg.png"
        fillMode: Image.PreserveAspectFit
    }


    states: [
        State {
            name: "normal"
            when: !control.down

            PropertyChanges {
                target: control
                height: 100
            }
        },
        State {
            name: "down"
            when: control.down

            PropertyChanges {
                target: button_color
                color: "#1f3261"
            }

            PropertyChanges {
                target: button_image
                opacity: 0.646
            }
        }
    ]
}
