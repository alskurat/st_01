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
            PropertyAnimation on height {
                id: anim2
                from: 0
                to:  plus.height *2
                duration: 500
                alwaysRunToEnd: true
                running: clearMouse.pressed;
            }
            MouseArea{
                id: clearMouse
                anchors.fill: parent
                onClicked:{
                    console.log("clear")
                    output.text = ""
                    pad.children.color = "red";
                    enter.color = "yellow";
                }
            }
        }
    }
}
