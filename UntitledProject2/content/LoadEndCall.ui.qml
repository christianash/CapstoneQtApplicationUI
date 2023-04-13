

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
        id: background_space
        width: 1280
        height: 720
        visible: true
        color: "#a3a0a0"
        border.width: 1
        state: "Main Screen"
        z: -21

        StateGroup {
            id: stateGroup
        }

        StateGroup {
            id: stateGroup1
            states: [
                State {
                    name: "State1"
                }
            ]
        }

        Rectangle {
            id: secure_check_items
            x: 370
            y: 193
            width: 52
            height: 52
            color: "#a3a0a0"

            Text {
                id: loading_text
                x: 216
                y: 200
                text: qsTr("Call Ended...")
                font.pixelSize: 20
            }

            Image {
                id: call_type_icon
                x: -359
                y: -186
                width: 44
                height: 44
                source: "images/home.svg.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: call_type_icon1
                x: -359
                y: -150
                width: 44
                height: 44
                source: "images/arrow-left-55.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    BusyIndicator {
        id: busyIndicator
        x: 610
        y: 330
    }

    Text {
        id: text1
        x: 574
        y: 424
        text: qsTr("Returning to Home")
        font.pixelSize: 16
    }
}
