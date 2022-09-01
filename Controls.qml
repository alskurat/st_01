import QtQuick 2.0

Row{
    Column {
        MyButton {
            id: plus
            value: "+"
        }

        MyButton {
            id: minus
            value: "-"
        }
        MyButton {
            id: divide
            value: "/"
        }
        MyButton {
            id: multi
            value: "*"
        }
    }
    Column {
        MyButton {
            id: enter
            height: plus.height * 2
            value: "="
        }

        MyButton {
            id: clear
            height: plus.height *2
            value: "C"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    console.log("clear")
                    output.text = "";
                }
            }
        }
    }
}
