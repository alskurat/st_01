import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle
{
    id: anyButton
    width: size
    height: size
    color: "lightgray"
    border.width: 1
    border.color: "gray"
    radius: 0.3 * size
    property string value
    property int size: 50
    Text {
        color: "black"
        text: value
        anchors.centerIn: parent
    }
//    MouseArea{
//        id: anyMouse
//        anchors.fill: parent
//        onClicked:{
//            console.log("clicked " + value)
//            output.text += value;
//        }
//    }
}
