import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
    visible: true
    width: 600
    height: 600
    color: "white"
    title: qsTr("Hello World")

    Slider{
        id: slide
        width:  parent.width
        from: 0
        to: 360
        value: 0
        enabled: true
        onValueChanged: {
            pad.rotation = slide.value
        }
    }

    Rectangle{
        id: pad
        width: parent.width/2
        height: parent.height/2
        color: "green"
        border.color: "dark green"
        border.width: 4
        anchors.centerIn: parent

        Greenbox {
            id: box
            width: pad.width
            height: pad.height/5
            color: "red"
            anchors.right: pad.right
            anchors.bottom: pad.top
            TextArea{
                id: output
                anchors.margins: 5
                anchors.fill: parent
            }
        }
        
        Row{
            anchors.centerIn: parent
            NumPad{
            }
            Item{   // spacer item
                width: 20
                height: 20
            }
            Controls{
            }
        }
    }
}






//        Rectangle {
//            width: 300
//            height: 50

//            color: "red"
//            border.color: "darkred"
//            border.width: 5
//            radius: height / 3
//        }

//        Rectangle {
//            width: 200
//            height: 200
//            anchors.centerIn: parent
//            color: "red"
//            border.color: "black"
//            border.width: 5
//            radius: 10


//            Rectangle {
//                width: 50
//                height: 50
//    //            anchors.centerIn: parent
//                anchors.left: parent.left
//                anchors.bottom: parent.bottom
//                color: "green"
//                border.color: "darkgreen"
//                border.width: 5
//                radius: 10
//            }
//        }

