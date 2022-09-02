import QtQuick 2.0

Row{
    signal reseted()
    onReseted: {
        for(var i = 0; i < this.children.length; i++) {
            for(var j = 0; j < this.children[i].children.length; j++) {
                this.children[i].children[j].rotation = 0;
            }
        }
    }
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
            MouseArea{
                id: enterMouse
                anchors.fill: parent
                onClicked:{
                    console.log(calc.calculate(output.text))
                    output.clear()
                }
            }
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
                    numPad.reseted()
                    controls.reseted()
                }
            }
        }
    }
}
