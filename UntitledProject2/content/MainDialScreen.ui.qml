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
        id: background
        x: 0
        y: 0
        width: 1280
        height: 725
        color: "#a3a0a0"

        Image {
            id: top_user_icon
            x: 1215
            y: 8
            width: 57
            height: 57
            source: "images/avatar-1.svg.svg"
            fillMode: Image.PreserveAspectFit
        }

        Button {
            id: user_settings_button
            x: 133
            y: 25
            height: 100
            text: qsTr("Button")
            icon.source: "images/user-settings.svg.svg"
            icon.height: 70
            icon.width: 70
            display: AbstractButton.IconOnly
        }

        Button {
            id: contacts_button
            x: 246
            y: 25
            height: 100
            text: qsTr("Button")
            icon.source: "images/book.svg.svg"
            icon.height: 70
            icon.width: 70
            display: AbstractButton.IconOnly
        }

        Button {
            id: previous_calls_button
            x: 359
            y: 25
            height: 100
            text: qsTr("Button")
            icon.source: "images/history.svg.svg"
            icon.height: 70
            icon.width: 70
            display: AbstractButton.IconOnly
        }


        Button {
            id: logout_button
            x: 18
            y: 25
            height: 100
            text: qsTr("Button")
            icon.source: "images/user-undo.svg.svg"
            icon.height: 70
            icon.width: 70
            display: AbstractButton.IconOnly
        }

        Rectangle {
            id: dial_pad
            x: 589
            y: 91
            width: 557
            height: 584
            color: "#ffffff"

            Button {
                id: key_1
                x: 15
                y: 104
                width: 170
                height: 75
                text: qsTr("1")
            }

            Button {
                id: key_2
                x: 191
                y: 104
                width: 170
                height: 75
                text: qsTr("2")
            }

            Button {
                id: key_3
                x: 367
                y: 104
                width: 170
                height: 75
                text: qsTr("3")
            }

            Button {
                id: key_4
                x: 15
                y: 185
                width: 170
                height: 75
                text: qsTr("4")
            }

            Button {
                id: key_5
                x: 191
                y: 185
                width: 170
                height: 75
                text: qsTr("5")
            }

            Button {
                id: key_6
                x: 367
                y: 185
                width: 170
                height: 75
                text: qsTr("6")
            }

            Button {
                id: key_7
                x: 15
                y: 266
                width: 170
                height: 75
                text: qsTr("7")
            }

            Button {
                id: key_8
                x: 191
                y: 266
                width: 170
                height: 75
                text: qsTr("8")
            }

            Button {
                id: key_9
                x: 367
                y: 266
                width: 170
                height: 75
                text: qsTr("9")
            }

            Button {
                id: key_0
                x: 191
                y: 347
                width: 170
                height: 75
                text: qsTr("0")
            }

            Button {
                id: key_pound
                x: 367
                y: 347
                width: 170
                height: 75
                text: qsTr("#")
            }

            Button {
                id: key_star
                x: 15
                y: 347
                width: 170
                height: 75
                text: qsTr("*")
            }

            Rectangle {
                id: dial_input_frame
                x: 15
                y: 27
                width: 522
                height: 71
                color: "#ffffff"
                border.width: 1

                TextEdit {
                    id: dynamic_entry_text
                    x: 16
                    y: 8
                    width: 485
                    height: 55
                    text: qsTr("...")
                    font.pixelSize: 12
                }
            }

            Custom_Call_Button {
                id: custom_Call_Button
                x: 226
                y: 438

                Text {
                    id: call_text
                    x: 13
                    y: 112
                    text: qsTr("Place Call")
                    font.pixelSize: 16
                    font.bold: true
                }
            }
        }
    }

}
