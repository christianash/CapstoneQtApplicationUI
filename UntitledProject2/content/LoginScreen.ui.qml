

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 1920
    height: 1080

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#ffffff"

        Rectangle {
            id: rectangle1
            x: 582
            y: 181
            width: 719
            height: 719
            color: "#cacaca"



            Text {
                id: login_ID
                x: 357
                y: 19
                width: 83
                height: 44
                text: qsTr("Login")
                font.pixelSize: 30
            }

            Text {
                id: usernamelabel_id
                x: 49
                y: 153
                text: qsTr("Username: ")
                font.pixelSize: 28
            }

            Text {
                id: passwordlabel_id
                x: 49
                y: 296
                text: qsTr("Password:")
                font.pixelSize: 28
            }

            TextField {
                id: usernamefield_id
                x: 185
                y: 152
                font.pointSize: 15
                placeholderText: qsTr("Username")
            }

            TextField {
                id: passwordfield_id
                x: 185
                y: 294
                font.pointSize: 15
                placeholderText: qsTr("Password")
            }

            Button {
                id: login_btn
                x: 49
                y: 370
                width: 336
                height: 49
                text: qsTr("Login")
                font.pointSize: 15
                icon.width: 24



            }
        }
    }
}
