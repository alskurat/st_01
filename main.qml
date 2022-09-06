import QtQuick 2.2
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import MyCalculate 1.0

Window {
    visible: true
    width: 600
    height: 600
    color: "white"
    title: qsTr("Hello World")

    Calculate{
        id: calc
    }

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

        property var padColor: "red"
        color: padColor
        border.color: "dark " + padColor
        border.width: 4
        anchors.centerIn: parent

        Greenbox {
            id: box
            width: pad.width
            height: pad.height/6
            property var boxColor: "green"
            color: boxColor
            border.color: "dark " + boxColor
            border.width: 4
            anchors.right: pad.right
            anchors.bottom: pad.top
            TextArea{
                id: output
                anchors.margins: 10
                anchors.fill: parent
            }
        }
//        states:  State {
//            name: "reanchored"
//            AnchorChanges:{
//                target: box;
//                anchors.bottom = pad.bottom
//            }
//        }
//            //animate our anchor changes
//            Transition {
//                AnchorAnimation { duration: 1000}
//            }



        Row{
            anchors.centerIn: parent
            NumPad{
                id: numPad
            }
            Item{   // spacer item
                width: 20
                height: 20
            }
            Controls{
                id: controls
            }
        }
    }
}


