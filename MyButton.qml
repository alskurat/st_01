import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle
{
    width: size
    height: size
    color: "lightgray"
    border.width: 1
    border.color: "gray"
    radius: 0.3 * size
    property string value
    property int size: 50
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
            output.text += value;
        }
    }
}
