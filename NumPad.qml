import QtQuick 2.0

Column{
//    anchors.top: parent.top
//    anchors.centerIn: parent.right
    signal reseted()
    onReseted: {
        for(var i = 0; i < this.children.length; i++) {
            for(var j = 0; j < this.children[i].children.length; j++) {
                this.children[i].children[j].rotation = 0;
            }
        }
    }
    Row{
        MyButton {
            id: button1
            value: "1"
        }

        MyButton {
            id: button2
            value: "2"
        }
        MyButton {
            id: button3
            value: "3"
        }
    }
    Row{
        MyButton {
            id: button4
            value: "4"
        }

        MyButton {
            id: button5
            value: "5"
        }
        MyButton {
            id: button6
            value: "6"
        }
    }
    Row{
        MyButton {
            id: button7
            value: "7"
        }

        MyButton {
            id: button8
            value: "8"
        }
        MyButton {
            id: button9
            value: "9"
        }
    }
    Row{
        MyButton {
            id: zero
            width: button9.width * 2
            value: "0"
        }
        MyButton {
            id: comma
            value: ","
        }
    }
}

