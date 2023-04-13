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

            Text {
                id: top_username_text
                x: 13
                y: 59
                text: qsTr("Guest")
                font.pixelSize: 12
            }
        }

        Button {
            id: user_settings_button
            x: 162
            y: 554
            height: 100
            text: qsTr("Button")
            icon.source: "images/user-settings.svg.svg"
            icon.height: 70
            icon.width: 70
            display: AbstractButton.IconOnly

            Text {
                id: settings_text
                x: 6
                y: 101
                width: 88
                height: 38
                text: qsTr("Settings")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Medium
                font.family: "Verdana"
            }
        }


        Button {
            id: logout_button
            x: 47
            y: 554
            height: 100
            text: qsTr("Button")
            icon.source: "images/avatar-1.svg.svg"
            icon.height: 70
            icon.width: 70
            display: AbstractButton.IconOnly

            Text {
                id: logout_text
                x: 6
                y: 100
                width: 88
                height: 38
                text: qsTr("Login")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                font.weight: Font.Medium
                font.family: "Verdana"
            }
        }

        Rectangle {
            id: dial_pad
            x: 589
            y: 91
            width: 557
            height: 584
            color: "#787878"
            radius: 10

            Button {
                id: key_1
                x: 15
                y: 104
                width: 170
                height: 75
                text: qsTr("1")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_2
                x: 191
                y: 104
                width: 170
                height: 75
                text: qsTr("2")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_3
                x: 367
                y: 104
                width: 170
                height: 75
                text: qsTr("3")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_4
                x: 15
                y: 185
                width: 170
                height: 75
                text: qsTr("4")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_5
                x: 191
                y: 185
                width: 170
                height: 75
                text: qsTr("5")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_6
                x: 367
                y: 185
                width: 170
                height: 75
                text: qsTr("6")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_7
                x: 15
                y: 266
                width: 170
                height: 75
                text: qsTr("7")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_8
                x: 191
                y: 266
                width: 170
                height: 75
                text: qsTr("8")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_9
                x: 367
                y: 266
                width: 170
                height: 75
                text: qsTr("9")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_0
                x: 191
                y: 347
                width: 170
                height: 75
                text: qsTr("0")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_pound
                x: 367
                y: 347
                width: 170
                height: 75
                text: qsTr("#")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text += text
            }

            Button {
                id: key_star
                x: 15
                y: 347
                width: 170
                height: 75
                text: qsTr("*")
                font.bold: true
                font.pointSize: 18
                onClicked: dynamic_entry_text.text += text
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
                    text: qsTr("")
                    font.pixelSize: 25
                    font.weight: Font.Bold
                }
            }

            Custom_Call_Button {
                id: custom_Call_Button
                x: 226
                y: 438
                onClicked: dynamic_entry_text.text = ""
                Text {
                    id: call_text
                    x: 9
                    y: 106
                    text: qsTr("Place Call")
                    font.pixelSize: 20
                    font.bold: false

                }
            }

            Button {
                id: key_pound1
                x: 367
                y: 438
                width: 170
                height: 100
                text: qsTr("Clear")
                font.bold: true
                font.pointSize: 15
                onClicked: dynamic_entry_text.text = ""
            }
        }

        Image {
            id: filler_image
            x: 47
            y: 91
            width: 441
            height: 398
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: page_title_text
            x: 84
            y: 38
            width: 367
            height: 40
            text: qsTr("Thursday 13th April 2023")
            font.pixelSize: 28
            font.family: "Verdana"
            font.styleName: "Bold"
        }
    }

}
