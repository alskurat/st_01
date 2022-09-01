import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle
{
    width: 50
    height: 50
    color: "lightgray"
    border.width: 1
    border.color: "gray"
    radius: 0.3 * width
    property string value
    Text {
        id: name
        color: "black"
        text: value
            /*qsTr("Hello World")*/
        anchors.centerIn: parent
    }
    MouseArea{
        anchors.fill: parent
        onClicked:{
            console.log("clicked " + name.text)
            box.text = value;
        }
    }
}
