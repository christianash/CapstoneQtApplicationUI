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
            Rectangle {
                id: toolbar_frame
                x: -1
                y: 549
                width: 1280
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
                        visible: false
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
                        visible: false
                        color: "#2e2e2e"
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
                        visible: false
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

                    Rectangle {
                        id: participant_frame_pointer
                        x: 36
                        y: -32
                        width: 28
                        height: 28
                        visible: false
                        color: "#2e2e2e"
                        rotation: 45
                    }



                    Rectangle {
                        id: participant_frame
                        x: -160
                        y: -94
                        width: 412
                        height: 76
                        visible: false
                        color: "#2e2e2e"
                    }
                    Text {
                        id: participant_list_title
                        x: -153
                        y: -88
                        visible: false
                        color: "#ffffff"
                        text: qsTr("Call Volume:")
                        font.pixelSize: 15
                        font.bold: true
                    }
                    Text {
                        id: participant_list_names
                        visible: false
                        text: qsTr("Text")
                        font.pixelSize: 12
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

                    Rectangle {
                        id: participant_frame_pointer1
                        x: 24
                        y: -44
                        width: 28
                        height: 28
                        visible: false
                        color: "#2e2e2e"
                        rotation: 45
                    }

                    Rectangle {
                        id: participant_frame1
                        x: -172
                        y: -106
                        width: 412
                        height: 76
                        visible: false
                        color: "#2e2e2e"
                    }

                    Text {
                        id: participant_list_title1
                        x: -165
                        y: -100
                        visible: false
                        color: "#ffffff"
                        text: qsTr("Call Volume:")
                        font.pixelSize: 15
                        font.bold: true
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

                Button {
                    id: camera_button
                    x: 1137
                    y: 12
                    width: 100
                    height: 100
                    visible: true
                    flat: false
                    icon.height: 70
                    display: AbstractButton.IconOnly
                    checkable: true
                    highlighted: false
                    icon.width: 70
                    wheelEnabled: true
                    Text {
                        id: camera_title
                        x: 0
                        y: 103
                        width: 100
                        height: 26
                        text: "Camera"
                        font.letterSpacing: 0.5
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Verdana"
                        font.styleName: "Bold"
                        font.wordSpacing: 1
                    }

                    Rectangle {
                        id: camera_pointer
                        x: -407
                        y: -46
                        width: 28
                        height: 28
                        visible: false
                        color: "#2e2e2e"
                        rotation: 45
                    }

                    Rectangle {
                        id: camera_frame
                        x: -603
                        y: -108
                        width: 412
                        height: 76
                        visible: false
                        color: "#2e2e2e"
                    }

                    Text {
                        id: camera_text
                        x: -596
                        y: -102
                        visible: false
                        color: "#ffffff"
                        text: qsTr("Call Volume:")
                        font.pixelSize: 15
                        font.bold: true
                    }

                    Image {
                        id: preview_image
                        width: 100
                        height: 100
                        visible: false
                        source: "qrc:/qtquickplugin/images/template_image.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: preview_text
                        visible: false
                        text: qsTr("Text")
                        font.pixelSize: 12
                    }
                    font.pointSize: 17
                    icon.color: "#000000"
                    icon.cache: true
                    icon.source: "images/camera.svg.png"
                }
            }
        }

        Image {
            id: call_type_icon
            x: 8
            y: 8
            width: 44
            height: 44
            source: "images/lock.svg.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: call_type_text
                x: 58
                y: 16
                text: qsTr("Secure Call in progress...")
                font.pixelSize: 15
            }
        }


    }
    states: [
        State {
            name: "VolumeCheckedState"
            when: volume_button.checked

            PropertyChanges {
                target: volume_frame_pointer
                visible: true
            }

            PropertyChanges {
                target: volume_frame
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
                target: participant_list_button
                opacity: 0.5
                checkable: false
                checked: false
            }

            PropertyChanges {
                target: dialpad_button
                opacity: 0.5
                checkable: false
                checked: false
            }

            PropertyChanges {
                target: end_call_button
                opacity: 0.5
            }

            PropertyChanges {
                target: custom_Mute_Button
                opacity: 0.5
            }

            PropertyChanges {
                target: camera_button
                opacity: 0.5
                checkable: false
            }
        },
        State {
            name: "ParticipantCheckedState"
            when: participant_list_button.checked

            PropertyChanges {
                target: participant_list_names
                x: -40
                y: -196
                width: 176
                height: 170
                color: "#ffffff"
                font.pixelSize: 17
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.NoWrap
                font.weight: Font.Medium
            }

            PropertyChanges {
                target: participant_frame_pointer
                visible: true
            }

            PropertyChanges {
                target: participant_frame
                x: -50
                y: -240
                width: 197
                height: 222
                visible: true
            }

            PropertyChanges {
                target: participant_list_title
                x: -40
                y: -229
                visible: true
                text: qsTr("Participants:")
            }

            PropertyChanges {
                target: background_space
                x: 0
                y: 0
            }

            PropertyChanges {
                target: volume_button
                opacity: 0.5
                checkable: false
                checked: false
            }

            PropertyChanges {
                target: dialpad_button
                opacity: 0.5
                checkable: false
                checked: false
            }

            PropertyChanges {
                target: end_call_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: custom_Mute_Button
                opacity: 0.5
                checkable: true
            }

            PropertyChanges {
                target: camera_button
                opacity: 0.5
                checkable: false
            }
        },
        State {
            name: "DialCheckedState"
            when: dialpad_button.checked

            PropertyChanges {
                target: volume_button
                opacity: 0.5
                flat: false
                checkable: false
                checked: false
            }

            PropertyChanges {
                target: participant_list_button
                opacity: 0.5
                flat: false
                checkable: false
                checked: false
            }

            PropertyChanges {
                target: end_call_button
                opacity: 0.5
                flat: false
                checkable: false
            }

            PropertyChanges {
                target: custom_Mute_Button
                opacity: 0.5
                flat: false
                checkable: true
            }

            PropertyChanges {
                target: camera_button
                opacity: 0.5
                checkable: false
            }

            PropertyChanges {
                target: participant_frame_pointer1
                x: 36
                y: -40
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: participant_frame1
                x: -127
                y: -523
                width: 343
                height: 499
                opacity: 1
                visible: true
            }

            PropertyChanges {
                target: participant_list_title1
                x: -120
                y: -513
                opacity: 1
                visible: true
                text: qsTr("Dial Pad:")
            }
        },
        State {
            name: "CameraCheckedState"
            when: camera_button.checked

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
                target: camera_pointer
                x: 36
                y: -43
                visible: true
            }

            PropertyChanges {
                target: camera_frame
                x: -269
                y: -340
                width: 400
                height: 311
                visible: true
            }

            PropertyChanges {
                target: camera_text
                x: -252
                y: -329
                visible: true
                text: qsTr("Camera:")
            }

            PropertyChanges {
                target: preview_image
                x: -252
                y: -269
                width: 368
                height: 208
                visible: true
            }

            PropertyChanges {
                target: preview_text
                x: -252
                y: -291
                visible: true
                color: "#ffffff"
                text: qsTr("camera preview:")
            }
        }
    ]
}

