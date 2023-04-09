import QtQuick 2.15
import QtQuick.Controls 2.15


Item {
    width: 1920
    height: 1080
    id:loginpageid
    visible: false


    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 1920
        height: 1080
        color: "#ffffff"

        Rectangle {
            id: rectangle1
            x: 559
            y: 155
            width: 732
            height: 732
            color: "#afafaf"

            Text {
                id: login_title
                x: 291
                y: 8
                width: 89
                height: 58
                text: qsTr("Login")
                font.pixelSize: 30
            }

            Text {
                id: username_title
                x: 106
                y: 132
                text: qsTr("Username: ")
                font.pixelSize: 28
            }

            TextField {
                id: username_field
                x: 244
                y: 126
                font.pointSize: 18
                placeholderText: qsTr("Username")
            }

            TextField {
                id: password_field
                x: 244
                y: 282
                font.pointSize: 18
                placeholderText: qsTr("Password")
            }

            Text {
                id: password_title
                x: 106
                y: 288
                text: qsTr("Password:")
                font.pixelSize: 28
            }

            Button {
                id: login_btn
                x: 106
                y: 420
                width: 171
                height: 68
                text: qsTr("Login")
                onClicked: login()
            }

            Text {
                id: loginstatus
                x: 438
                y: 442
                width: 51
                height: 35
                text: qsTr("")
                font.pixelSize: 12
            }
        }
    }

    function login()
    {
        if(username_field.text === "Hello" & password_field.text === "Hello")
        {


        }
        else
        {
            loginstatus.text = "Try again"
        }

    }


}
