import QtQuick 2.12
import QtQuick.Window 2.12

Window {
//    width: 640
//    height: 480
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

}
