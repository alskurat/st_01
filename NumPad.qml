import QtQuick 2.0

Column{
    //    anchors.top: parent.top
    //    anchors.centerIn: parent.right
    signal reset()
    onReset: {
        for(var i = 0; i < this.children.length; i++) {
            for(var j = 0; j < this.children[i].children.length; j++) {
                this.children[i].children[j].reset();
            }
        }
    }
    Row{
        MyButton {
            signal reset()
            onReset:{ rotation = 0 }
            id: button1
            value: "1"
            MouseArea{
                id: but1Mouse
                anchors.fill: parent
                onClicked:{
                    console.log("clicked " + button1.value)
                    output.text += button1.value;
                }
            }
            RotationAnimation on rotation {
                from: parent.rotation
                to: 480
                duration: 500
                direction: RotationAnimation.Clockwise
                running: but1Mouse.pressed;
            }
        }

        MyButton {
            id: button2
            value: "2"
            signal reset()
            onReset:{}
            MouseArea{
                id: but2Mouse
                anchors.fill: parent
                onClicked:{
                    console.log("clicked " + button2.value)
                    output.text += button2.value;
                    box.state = "reanchored"
                }
            }
        }
        MyButton {
            id: button3
            value: "3"
            signal reset()
            onReset:{}
        }
    }
    Row{
        MyButton {
            id: button4
            value: "4"
            signal reset()
            onReset:{}
        }

        MyButton {
            id: button5
            value: "5"
            signal reset()
            onReset:{
                but5Mouse.enabled = true
                button5.opacity = 1.0
                button5.scale = 1
                console.log("button5 reset")
            }
            MouseArea{
                id: but5Mouse
                anchors.fill: parent
                onClicked:{
                    var string = but5Mouse.enabled ? button5.value : ""
                    console.log("clicked " + string)
                    output.text += string
                    but5Mouse.enabled = false
                }
            }
            RotationAnimation on opacity {
                from: 1.0
                to: 0.0
                duration: 2000
                alwaysRunToEnd: true
                running: but5Mouse.pressed
            }
            RotationAnimation on scale {
                from: 0
                to: 10
                duration: 2000
                alwaysRunToEnd: true
                running: but5Mouse.pressed
            }
        }
        MyButton {
            id: button6
            value: "6"
            signal reset()
            onReset:{}
        }
    }
    Row{
        MyButton {
            id: button7
            value: "7"
            signal reset()
            onReset:{}
        }

        MyButton {
            id: button8
            value: "8"
            signal reset()
            onReset:{}
        }
        MyButton {
            id: button9
            value: "9"
            signal reset()
            onReset:{
                box.color = "green"
                pad.color = "red"
            }
            MouseArea{
                id: but9Mouse
                anchors.fill: parent
                onClicked:{
                    console.log("clicked " + button9.value)
                    output.text += button9.value
                    box.color = "blue"
                    pad.color = "blue"  //TODO: ColorAnimation
                }
            }
        }
    }
    Row{
        MyButton {
            id: zero
            width: button9.width * 2
            value: "0"
            signal reset()
            onReset:{}
        }
        MyButton {
            id: comma
            value: ","
            signal reset()
            onReset:{}
        }
    }
}

