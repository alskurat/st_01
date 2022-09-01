import QtQuick 2.0

Row{
    Column {
        MyButton {
            id: plus
            value: "+"
            anchors.margins: 2
        }

        MyButton {
            id: minus
            value: "-"
            anchors.margins: 2
        }
        MyButton {
            id: divide
            value: "/"
            anchors.margins: 2
        }
        MyButton {
            id: multi
            value: "*"
            anchors.margins: 2
        }
    }
    Column {
        MyButton {
            id: enter
            height: plus.height * 4 / 3
            value: "="
            anchors.margins: 2
        }

        MyButton {
            id: clear
            height: plus.height * 4 / 3
            value: "C"
            anchors.margins: 2
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("clear")
                    output.text = "";
                }
            }
        }
        MyButton {
            id: zero
            height: plus.height * 4 / 3
            value: "0"
            anchors.margins: 2
        }
    }
}
