

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15
import FlowView 1.0
import QtQuick3D 6.4
import QtMultimedia 6.3

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

        Rectangle {
            id: user7
            x: 854
            y: 238
            width: 412
            height: 235
            color: "#ffffff"
            Text {
                id: user7_title
                x: 114
                y: 200
                width: 184
                height: 27
                text: qsTr("First and Last Name 7")
                font.pixelSize: 17
            }

            Image {
                x: 131
                y: 19
                width: 150
                height: 150
                source: "qrc:/qtquickplugin/images/template_image.png"
                fillMode: Image.PreserveAspectFit
            }
        }

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
                id: user5
                x: 16
                y: 218
                width: 412
                height: 235
                color: "#ffffff"

                Text {
                    id: user5_title
                    x: 114
                    y: 200
                    width: 184
                    height: 27
                    text: qsTr("First and Last Name 5")
                    font.pixelSize: 17
                }

                Image {
                    id: user1_image
                    x: 131
                    y: 19
                    width: 150
                    height: 150
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user1
                x: 15
                y: 38
                width: 308
                height: 174
                color: "#ffffff"

                Text {
                    id: user1_title
                    x: 74
                    y: 147
                    text: qsTr("First and Last Name 1")
                    font.pixelSize: 17
                }

                Image {
                    id: user2_image
                    x: 88
                    y: 8
                    width: 133
                    height: 133
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
                x: 558
                y: -8
                text: qsTr("You are currently unmuted")
                font.pixelSize: 14
            }

            Rectangle {
                id: user2
                x: 329
                y: 38
                width: 308
                height: 174
                color: "#ffffff"
                Text {
                    id: user2_title
                    x: 74
                    y: 147
                    text: qsTr("First and Last Name 2")
                    font.pixelSize: 17
                }

                Image {
                    x: 88
                    y: 8
                    width: 133
                    height: 133
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user3
                x: 643
                y: 38
                width: 308
                height: 174
                color: "#ffffff"
                Text {
                    id: user3_title
                    x: 74
                    y: 147
                    text: qsTr("First and Last Name 3")
                    font.pixelSize: 17
                }

                Image {
                    x: 88
                    y: 8
                    width: 133
                    height: 133
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
                    x: 74
                    y: 147
                    text: qsTr("First and Last Name 4")
                    font.pixelSize: 17
                }

                Image {
                    x: 88
                    y: 8
                    width: 133
                    height: 133
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: user6
                x: 434
                y: 218
                width: 412
                height: 235
                color: "#ffffff"
                Text {
                    id: user6_title
                    x: 114
                    y: 200
                    width: 184
                    height: 27
                    text: qsTr("First and Last Name 6")
                    font.pixelSize: 17
                }

                Image {
                    x: 131
                    y: 19
                    width: 150
                    height: 150
                    source: "qrc:/qtquickplugin/images/template_image.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Rectangle {
            id: dial_pad_frame
            x: 577
            y: 29
            width: 366
            height: 530
            visible: false
            color: "#2e2e2e"
            Button {
                x: 15
                y: 110
                width: 112
                height: 50
                text: qsTr("1")
                font.pointSize: 15
                icon.width: 30
                onClicked: dial_textid.text += text
            }

            Button {
                x: 130
                y: 110
                width: 112
                height: 50
                text: qsTr("2")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 245
                y: 110
                width: 112
                height: 50
                text: qsTr("3")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 15
                y: 175
                width: 112
                height: 50
                text: qsTr("4")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 130
                y: 175
                width: 112
                height: 50
                text: qsTr("5")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 245
                y: 175
                width: 112
                height: 50
                text: qsTr("6")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 15
                y: 240
                width: 112
                height: 50
                text: qsTr("7")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 130
                y: 240
                width: 112
                height: 50
                text: qsTr("8")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 245
                y: 240
                width: 112
                height: 50
                text: qsTr("9")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 130
                y: 305
                width: 112
                height: 50
                text: qsTr("0")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 245
                y: 305
                width: 112
                height: 50
                text: qsTr("#")
                font.pointSize: 15
                onClicked: dial_textid.text += text
            }

            Button {
                x: 15
                y: 305
                width: 112
                height: 50
                text: qsTr("*")
                font.pointSize: 20
                onClicked: dial_textid.text += text
            }

            Rectangle {
                x: 15
                y: 27
                width: 342
                height: 71
                color: "#cbcbcb"
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
                x: 135
                y: 382
                width: 99
                height: 99
                Text {
                    id: placecall_textid
                    x: 13
                    y: 112
                    color: "#ffffff"
                    text: qsTr("Place Call")
                    font.pixelSize: 16
                    font.bold: true
                }
                onClicked: dial_textid.text = ""
            }

            Button {
                id: clear_btn
                x: 279
                y: 38
                width: 70
                height: 50
                text: qsTr("Clear")
                onClicked: dial_textid.text = ""
            }

            Rectangle {
                id: rectangle1
                x: 169
                y: 516
                width: 28
                height: 28
                color: "#2e2e2e"
                rotation: 45
            }

            Text {
                id: text1
                x: 15
                y: 5
                color: "#ffffff"
                text: qsTr("Dialpad:")
                font.pixelSize: 12
                font.family: "Verdana"
                font.styleName: "Regular"
                clip: true
            }
        }


        Rectangle {
            id: secure_call_frame
            x: 1033
            y: 514
            width: 246
            height: 205
            color: "#ffffff"

            Text {
                id: text2
                x: 49
                y: 15
                width: 149
                height: 21
                text: qsTr("Initiate Secure Call")
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
            }

            Image {
                id: image
                x: 15
                y: 8
                width: 28
                height: 28
                source: "images/lock.svg.png"
                fillMode: Image.PreserveAspectFit
            }

            Button {
                id: button
                x: 15
                y: 40
                width: 215
                height: 75
                text: qsTr("  Audio Call")
                font.pointSize: 16
                icon.height: 50
                icon.width: 50
                icon.source: "images/volume-up.svg.png"
            }

            Button {
                id: button1
                x: 15
                y: 122
                width: 215
                height: 75
                text: qsTr("    Video Call")
                font.pointSize: 16
                icon.height: 50
                icon.width: 50
                icon.source: "images/camera.svg.png"
            }
        }

        Text {
            id: callstatus_id
            x: 42
            y: 8
            text: qsTr("Clear Call in progress...")
            font.pixelSize: 18
        }

        Rectangle {
            id: participant_frame
            x: 420
            y: 340
            width: 200
            height: 200
            visible: false
            color: "#2e2e2e"


            Rectangle {
                id: rectangle
                width: 200
                height: 200
                color: "#2e2e2e"
            }

            Text {
                id: participant1_id
                x: 0
                y: 0
                visible: false
                text: user1_title.text
                font.pixelSize: 20
            }

            Text {
                id: participant2_id
                x: 0
                y: 48
                visible: false
                text: user2_title.text
                font.pixelSize: 20
            }

            Text {
                id: participant3_id
                x: 0
                y: 100
                visible: false
                text: user3_title.text
                font.pixelSize: 20
            }

            Text {
                id: participant4_id
                x: 2
                y: 157
                visible: false
                text: user4_title.text
                font.pixelSize: 20
            }

            Text {
                id: participants_text
                x: 6
                y: 7
                visible: false
                text: qsTr("Text")
                font.pixelSize: 12
            }

            Text {
                id: participant5_id
                font.pixelSize: 12
                text: user5_title.text
            }

            Text {
                id: participant6_id
                text: user6_title.text
                font.pixelSize: 12
            }

            Text {
                id: participant7_id
                text: user7_title.text
                font.pixelSize: 12
            }

        }


    }

    Item {
        id: __materialLibrary__
    }

    Image {
        id: image1
        x: 8
        y: 8
        width: 27
        height: 27
        source: "images/lock-open.svg.svg"
        fillMode: Image.PreserveAspectFit
    }
    states: [
        State {
            name: "State1"
            when: volume_button.checked

            PropertyChanges {
                target: volume_frame
                visible: true
                radius: 5
                border.width: 0
            }

            PropertyChanges {
                target: volume_title
                visible: true
            }

            PropertyChanges {
                target: volume_slider
                visible: true
            }

            PropertyChanges {
                target: volume_slider_text
                visible: true
            }

            PropertyChanges {
                target: volume_frame_pointer
                visible: true
            }

            PropertyChanges {
                target: participant_list_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: end_call_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: dialpad_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: custom_Mute_Button
                opacity: 0.5
            }
        },
        State {
            name: "ParticipantCheckedState"
            when: participant_list_button.checked

            PropertyChanges {
                target: participant_frame
                x: 411
                y: 243
                width: 222
                height: 326
                visible: true
                color: "#2e2e2e"
                radius: 5
            }

            PropertyChanges {
                target: participant1_id
                x: 6
                y: 30
                visible: true
                color: "#ffffff"
                font.pixelSize: 20
            }

            PropertyChanges {
                target: participant2_id
                x: 6
                y: 70
                visible: true
                color: "#ffffff"
                font.pixelSize: 20
            }

            PropertyChanges {
                target: participant3_id
                x: 6
                y: 110
                visible: true
                color: "#ffffff"
                font.pixelSize: 20
            }

            PropertyChanges {
                target: participant4_id
                x: 8
                y: 150
                visible: true
                color: "#ffffff"
                font.pixelSize: 20
            }

            PropertyChanges {
                target: participants_text
                x: 8
                y: 4
                visible: true
                color: "#ffffff"
                text: qsTr("Participants:")
                font.pixelSize: 14
                font.bold: true
            }

            PropertyChanges {
                target: volume_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: end_call_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: dialpad_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: custom_Mute_Button
                opacity: 0.5
                checkable: true
            }

            PropertyChanges {
                target: user5_title
                text: qsTr("First and Last Name 5")
            }

            PropertyChanges {
                target: rectangle
                x: 100
                y: 314
                width: 23
                height: 23
                color: "#2e2e2e"
                rotation: 45
            }

            PropertyChanges {
                target: participant7_id
                x: 8
                y: 270
                color: "#ffffff"
                font.pixelSize: 20
            }

            PropertyChanges {
                target: participant6_id
                x: 6
                y: 230
                color: "#ffffff"
                font.pixelSize: 20
            }

            PropertyChanges {
                target: participant5_id
                x: 6
                y: 190
                color: "#ffffff"
                font.pixelSize: 20
            }
        },
        State {
            name: "DialCheckedState"
            when: dialpad_button.checked

            PropertyChanges {
                target: dial_pad_frame
                x: 577
                y: 29
                width: 372
                height: 530
                visible: true
                radius: 5
            }

            PropertyChanges {
                target: volume_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: participant_list_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: end_call_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: custom_Mute_Button
                opacity: 0.5
            }

            PropertyChanges {
                target: dial_textid
                x: 16
                y: 8
                width: 249
                height: 55
                font.pixelSize: 24
                font.bold: true
            }
        }
    ]
}
