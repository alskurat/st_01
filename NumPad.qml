import QtQuick 2.0

Column{
//    anchors.top: parent.top
//    anchors.centerIn: parent.right
    Row{
        MyButton {
            id: button1
            value: "1"
            anchors.margins: 2
        }

        MyButton {
            id: button2
            value: "2"
            anchors.margins: 2
        }
        MyButton {
            id: button3
            value: "3"
            anchors.margins: 2
        }
    }
    Row{
        MyButton {
            id: button4
            value: "4"
            anchors.margins: 2
        }

        MyButton {
            id: button5
            value: "5"
            anchors.margins: 2
        }
        MyButton {
            id: button6
            value: "6"
            anchors.margins: 2
        }
    }
    Row{
        MyButton {
            id: button7
            value: "7"
            anchors.margins: 2
        }

        MyButton {
            id: button8
            value: "8"
            anchors.margins: 2
        }
        MyButton {
            id: button9
            value: "9"
            anchors.margins: 2
        }
    }
}

