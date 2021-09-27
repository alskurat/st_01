import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 500
    height: 500
    color: "blue"
    visible: true
    title: qsTr("Hello World")

    MouseArea{
        anchors.fill:parent
        onClicked: {
            Qt.quit()}
    }

    Text {
        id: name
        color: "white"
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    Rectangle {
        width: 300
        height: 50

        color: "red"
        border.color: "darkred"
        border.width: 5
        radius: height / 3
    }

    Rectangle {
        width: 200
        height: 200
        anchors.centerIn: parent
        color: "red"
        border.color: "black"
        border.width: 5
        radius: 10


        Rectangle {
            width: 50
            height: 50
//            anchors.centerIn: parent
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color: "green"
            border.color: "darkgreen"
            border.width: 5
            radius: 10
        }
    }
}
