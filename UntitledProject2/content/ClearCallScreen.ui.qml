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
            id: clear_call_items
            x: 1
            y: 20
            width: 35
            height: 35
            visible: true
            color: "#a3a0a0"

            Rectangle {
                id: user1
                x: 12
                y: 38
                width: 308
                height: 174
                color: "#ffffff"

                Text {
                    id: user1_title
                    x: 72
                    y: 151
                    text: qsTr("First and Last Name 1")
                    font.pixelSize: 17
                }

                Image {
                    id: user1_image
                    x: 104
                    y: 27
                    width: 100
                    height: 100
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user2
                x: 327
                y: 38
                width: 308
                height: 174
                color: "#ffffff"

                Text {
                    id: user2_title
                    x: 72
                    y: 151
                    text: qsTr("First and Last Name 2")
                    font.pixelSize: 17
                }

                Image {
                    id: user2_image
                    x: 104
                    y: 27
                    width: 100
                    height: 100
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user3
                x: 642
                y: 38
                width: 308
                height: 174
                color: "#ffffff"

                Text {
                    id: user3_title
                    x: 72
                    y: 151
                    text: qsTr("First and Last Name 3")
                    font.pixelSize: 17
                }

                Image {
                    id: user3_image
                    x: 104
                    y: 27
                    width: 100
                    height: 100
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user4
                x: 957
                y: 38
                width: 308
                height: 174
                color: "#ffffff"

                Text {
                    id: user4_title
                    x: 72
                    y: 151
                    text: qsTr("First and Last Name 4")
                    font.pixelSize: 17
                }

                Image {
                    id: user4_image
                    x: 104
                    y: 27
                    width: 100
                    height: 100
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: toolbar_frame
                x: -1
                y: 549
                width: 1027
                height: 149
                color: "#ffffff"

                Button {
                    id: volume_button
                    x: 174
                    y: 12
                    width: 100
                    height: 100
                    visible: true
                    checkable: true
                    icon.color: "#000000"
                    flat: false
                    wheelEnabled: true
                    icon.cache: true
                    icon.width: 70
                    font.pointSize: 17
                    icon.height: 70
                    display: AbstractButton.IconOnly
                    icon.source: "images/volume-down.svg.png"

                    Rectangle {
                        id: volume_frame_pointer
                        x: 36
                        y: -32
                        width: 28
                        height: 28
                        color: "#2e2e2e"
                        rotation: 45
                    }

                    Text {
                        id: volume_title
                        x: 0
                        y: 104
                        width: 100
                        height: 24
                        text: "Volume"
                        font.letterSpacing: 0.5
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Verdana"
                        font.styleName: "Bold"
                        font.wordSpacing: 1
                    }

                    Rectangle {
                        id: volume_frame
                        x: -160
                        y: -94
                        width: 412
                        height: 76
                        color: "#2e2e2e"
                    }

                    Custon_volume_slider {
                        id: volume_slider
                        x: -153
                        y: -56
                        width: 399
                        height: 33
                    }

                    Text {
                        id: volume_slider_text
                        x: -153
                        y: -88
                        color: "#ffffff"
                        text: qsTr("Call Volume:")
                        font.pixelSize: 15
                        font.bold: true
                    }
                }

                Button {
                    id: participant_list_button
                    x: 470
                    y: 12
                    width: 100
                    height: 100
                    visible: true
                    checkable: true
                    icon.color: "#000000"
                    icon.height: 70
                    highlighted: false
                    icon.width: 70
                    icon.cache: true
                    font.pointSize: 17
                    flat: false
                    wheelEnabled: true
                    display: AbstractButton.IconOnly
                    icon.source: "images/1077114.png"

                    Text {
                        id: participant_title
                        x: -9
                        y: 104
                        width: 118
                        height: 26
                        text: "Participants"
                        font.letterSpacing: 0.5
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Verdana"
                        font.styleName: "Bold"
                        font.wordSpacing: 1
                    }
                }

                Button {
                    id: end_call_button
                    x: 590
                    y: 12
                    width: 100
                    height: 100
                    visible: true
                    icon.color: "#000000"
                    icon.height: 70
                    highlighted: false
                    icon.width: 70
                    icon.cache: true
                    font.pointSize: 17
                    flat: false
                    wheelEnabled: true
                    display: AbstractButton.IconOnly
                    icon.source: "images/phone.svg.png"

                    Text {
                        id: end_call_title
                        x: 0
                        y: 103
                        width: 100
                        height: 26
                        text: "End Call"
                        font.letterSpacing: 0.5
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Verdana"
                        font.styleName: "Bold"
                        font.wordSpacing: 1
                    }
                }

                Button {
                    id: dialpad_button
                    x: 710
                    y: 12
                    width: 100
                    height: 100
                    visible: true
                    checkable: true
                    icon.color: "#000000"
                    icon.height: 70
                    highlighted: false
                    icon.width: 70
                    icon.cache: true
                    font.pointSize: 17
                    flat: false
                    wheelEnabled: true
                    display: AbstractButton.IconOnly
                    icon.source: "images/dialpad.svg.svg"

                    Text {
                        id: dialpad_title
                        x: 0
                        y: 103
                        width: 100
                        height: 26
                        text: "Dial Pad"
                        font.letterSpacing: 0.5
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Verdana"
                        font.styleName: "Bold"
                        font.wordSpacing: 1
                    }
                }

                Custom_Mute_Button {
                    id: custom_Mute_Button
                    x: 50
                    y: 12

                    Text {
                        id: mute_title
                        x: -16
                        y: 98
                        width: 116
                        height: 24
                        text: "Toggle Mute"
                        font.letterSpacing: 0.5
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Verdana"
                        font.styleName: "Bold"
                        font.wordSpacing: 1
                    }
                }
            }

            Rectangle {
                id: secure_call_frame
                x: 1032
                y: 493
                width: 246
                height: 205
                color: "#ffffff"
                radius: 0

                Text {
                    id: initiate_secure_text
                    x: 75
                    y: 10
                    width: 119
                    height: 22
                    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\nli.unchecked::marker { content: \"\\2610\"; }\nli.checked::marker { content: \"\\2612\"; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:11pt; font-weight:700;\">Initiate Secure Call</span></p></body></html>"
                    font.pixelSize: 20
                    textFormat: Text.RichText
                    font.styleName: "Bold"
                    font.family: "Verdana"
                }

                Image {
                    id: secure_call_lock_icon
                    x: 15
                    y: 8
                    width: 25
                    height: 25
                    source: "images/lock.svg.png"
                    fillMode: Image.PreserveAspectFit
                }

                Button {
                    id: secure_audio_button
                    x: 14
                    y: 41
                    width: 215
                    height: 75
                    visible: true
                    text: "    Audio Call"
                    icon.color: "#000000"
                    icon.height: 50
                    highlighted: false
                    icon.width: 50
                    icon.cache: true
                    font.pointSize: 15
                    flat: false
                    wheelEnabled: true
                    display: AbstractButton.TextBesideIcon
                    icon.source: "images/volume-up.svg.png"
                }

                Button {
                    id: secure_video_button
                    x: 15
                    y: 122
                    width: 215
                    height: 75
                    visible: true
                    text: "    Video Call"
                    icon.color: "#000000"
                    icon.height: 50
                    highlighted: false
                    icon.width: 50
                    icon.cache: true
                    font.pointSize: 15
                    flat: false
                    wheelEnabled: true
                    display: AbstractButton.TextBesideIcon
                    icon.source: "images/camera.svg.png"
                }
            }

            Rectangle {
                id: user5
                x: 12
                y: 221
                width: 412
                height: 235
                color: "#ffffff"

                Text {
                    id: user5_title
                    x: 124
                    y: 204
                    text: qsTr("First and Last Name 5")
                    font.pixelSize: 17
                }

                Image {
                    id: user5_image
                    x: 139
                    y: 36
                    width: 134
                    height: 134
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user6
                x: 433
                y: 221
                width: 412
                height: 235
                color: "#ffffff"

                Text {
                    id: user6_title
                    x: 124
                    y: 204
                    text: qsTr("First and Last Name 6")
                    font.pixelSize: 17
                }

                Image {
                    id: user6_image
                    x: 139
                    y: 36
                    width: 134
                    height: 134
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user7
                x: 855
                y: 221
                width: 412
                height: 235
                color: "#ffffff"

                Text {
                    id: user7_title
                    x: 124
                    y: 204
                    text: qsTr("First and Last Name 7")
                    font.pixelSize: 17
                }

                Image {
                    id: user7_image
                    x: 139
                    y: 36
                    width: 134
                    height: 134
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: mute_status_text
                x: 562
                y: 0
                text: qsTr("You are currently unmuted")
                font.pixelSize: 12
            }
        }


    }
}
