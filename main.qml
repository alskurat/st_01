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


