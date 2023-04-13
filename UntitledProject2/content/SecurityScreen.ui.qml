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

            TextField {
                id: security_pin_textfield
                x: 74
                y: 189
                placeholderText: qsTr("Text Field")
            }

            Button {
                id: security_pin_submit_button
                x: 295
                y: 189
                width: 103
                height: 40
                text: qsTr("Submit")
                font.pointSize: 12
                icon.source: "images/arrow-right-33.png"
            }

            Image {
                id: shieldalt
                x: 188
                width: 131
                height: 131
                anchors.verticalCenter: parent.verticalCenter
                source: "images/shield-alt.svg.png"
                anchors.verticalCenterOffset: 48
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: enter_pin_text
                x: 74
                y: 235
                text: qsTr("Enter Your Secure Pin")
                font.pixelSize: 15
            }

            Rectangle {
                id: key_frame
                x: -359
                y: -181
                width: 167
                height: 97
                color: "#a3a0a0"
                border.width: 0

                Image {
                    id: key_image
                    x: 56
                    y: 8
                    width: 56
                    height: 56
                    source: "images/key.png"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: key_text
                    x: 29
                    y: 70
                    text: qsTr("Secure Call Entry")
                    font.pixelSize: 15
                }
            }
        }
    }

    Button {
        id: button
        x: 14
        y: 630
        width: 159
        height: 71
        text: qsTr("Return Home")
        font.pointSize: 12
        icon.source: "images/home.svg.svg"
    }
}
