

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
    id: flowItem
    width: 1280
    height: 720
    Rectangle {
        id: background_space
        x: 0
        y: 0
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
                x: 218
                y: 17
                width: 383
                height: 216
                color: "#ffffff"

                Text {
                    id: user1_title
                    x: 107
                    y: 182
                    text: qsTr("First and Last Name 1")
                    font.pixelSize: 17
                }

                Image {
                    id: user1_image
                    x: 104
                    y: 27
                    width: 150
                    height: 150
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user2
                x: 643
                y: 18
                width: 383
                height: 216
                color: "#ffffff"

                Text {
                    id: user2_title
                    x: 105
                    y: 178
                    text: qsTr("First and Last Name 2")
                    font.pixelSize: 17
                }

                Image {
                    id: user2_image
                    x: 104
                    y: 27
                    width: 150
                    height: 150
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user3
                x: 218
                y: 239
                width: 383
                height: 217
                color: "#ffffff"

                Text {
                    id: user3_title
                    x: 102
                    y: 179
                    text: qsTr("First and Last Name 3")
                    font.pixelSize: 17
                }

                Image {
                    id: user3_image
                    x: 104
                    y: 27
                    width: 150
                    height: 150
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user4
                x: 643
                y: 240
                width: 383
                height: 216
                color: "#ffffff"

                Text {
                    id: user4_title
                    x: 106
                    y: 178
                    text: qsTr("First and Last Name 4")
                    font.pixelSize: 17
                }

                Image {
                    id: user4_image
                    x: 104
                    y: 27
                    width: 150
                    height: 150
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: toolbar_frame
                x: -1
                y: 549
                width: 1282
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

                    onClicked: volume_frame_pointer.visible = !volume_frame_pointer.visible
                               & (volume_frame.visible = !volume_frame.visible)
                               & (volume_slider.visible = !volume_slider.visible)
                               & (volume_slider_text.visible = !volume_slider_text.visible)

                    Rectangle {
                        id: volume_frame_pointer
                        x: 36
                        y: -32
                        width: 28
                        height: 28
                        color: "#2e2e2e"
                        rotation: 45
                        visible: false
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
                        visible: false
                    }

                    Custon_volume_slider {
                        id: volume_slider
                        x: -153
                        y: -56
                        width: 399
                        height: 33
                        visible: false
                    }

                    Text {
                        id: volume_slider_text
                        x: -153
                        y: -88
                        color: "#ffffff"
                        text: qsTr("Call Volume:")
                        font.pixelSize: 15
                        font.bold: true
                        visible: false
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
                    onClicked: participants_list_scrollview.visible
                               = !participants_list_scrollview.visible

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

                    onClicked: dial_pad.visible = !dial_pad.visible

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

            Text {
                id: mute_status_text
                x: 561
                y: -5
                text: qsTr("You are currently unmuted")
                font.pixelSize: 12
            }
        }

        Rectangle {
            id: dial_pad
            x: 583
            y: 44
            width: 366
            height: 525
            visible: false
            color: "#ffffff"
            Button {
                x: 15
                y: 113
                width: 101
                height: 45
                text: qsTr("1")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 133
                y: 113
                width: 101
                height: 45
                text: qsTr("2")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 256
                y: 113
                width: 101
                height: 45
                text: qsTr("3")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 15
                y: 178
                width: 101
                height: 45
                text: qsTr("4")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 133
                y: 178
                width: 101
                height: 45
                text: qsTr("5")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 256
                y: 178
                width: 101
                height: 45
                text: qsTr("6")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 16
                y: 248
                width: 100
                height: 44
                text: qsTr("7")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 133
                y: 248
                width: 101
                height: 45
                text: qsTr("8")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 256
                y: 248
                width: 101
                height: 45
                text: qsTr("9")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 133
                y: 311
                width: 101
                height: 45
                text: qsTr("0")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 256
                y: 311
                width: 101
                height: 45
                text: qsTr("#")
                onClicked: dial_textid.text += text
            }

            Button {
                x: 16
                y: 311
                width: 101
                height: 45
                text: qsTr("*")
                onClicked: dial_textid.text += text
            }

            Rectangle {
                x: 15
                y: 27
                width: 342
                height: 71
                color: "#ffffff"
                border.width: 1
                TextEdit {
                    id: dial_textid
                    x: 16
                    y: 8
                    width: 318
                    height: 55
                    text: qsTr("")
                    font.pixelSize: 12
                }
            }

            Custom_Call_Button {
                x: 134
                y: 384
                width: 100
                height: 100
                Text {
                    id: placecall_textid
                    x: 13
                    y: 112
                    text: qsTr("Place Call")
                    font.pixelSize: 16
                    font.bold: true
                }
            }

            Button {
                id: clear_btn
                x: 284
                y: 43
                width: 66
                height: 40
                text: qsTr("Clear")
                onClicked: dial_textid.text = ""
            }
        }

        Custom_Camera_Button {
            id: custom_Camera_Button
            x: 305
            y: 584

            Text {
                id: camera_textid
                x: -10
                y: 102
                text: qsTr("Toggle Camera")
                font.pixelSize: 18
                font.styleName: "Bold"
                font.family: "Verdana"
            }
        }

        ScrollView {
            id: participants_list_scrollview
            x: 433
            y: 369
            width: 200
            height: 200
            visible: false

            Rectangle {
                id: rectangle
                x: 0
                y: 0
                width: 200
                height: 200
                color: "#ffffff"

                Text {
                    id: participant1_id
                    x: 0
                    y: 0
                    text: user1_title.text
                    font.pixelSize: 20
                }

                Text {
                    id: participant2_id
                    x: 0
                    y: 48
                    text: user2_title.text
                    font.pixelSize: 20
                }

                Text {
                    id: participant3_id
                    x: 0
                    y: 100
                    text: user3_title.text
                    font.pixelSize: 20
                }

                Text {
                    id: participant4_id
                    x: 2
                    y: 157
                    text: user4_title.text
                    font.pixelSize: 20
                }
            }
        }
    }
}
