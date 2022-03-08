import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2
Window {
    width: 400
    height: 360
    visible: true
    title: qsTr("Calculator")


    GridLayout{
           anchors.fill: parent
           columns: 4
           rows: 2

           Label{
               id: resultLabel

               Text{
                   id: textInLabel
                   text: qsTr("Result")
                   font.pointSize: 24
                   anchors.verticalCenter: resultLabel.verticalCenter
                   anchors.right: resultLabel.right
               }
               Layout.column: 0
               Layout.columnSpan: 4
               Layout.row: 0
               Layout.rowSpan: 1
               Layout.fillHeight: true
               Layout.fillWidth: true

               background: Rectangle{
                   color: "white"
               }

               Connections{
                   target: calcOperations
                   onValueChanged: textInLabel.text = s;
               }
           }

            Button{
             id: resetLabel
             text: qsTr("C")
             Layout.column: 0
             Layout.columnSpan: 1
             Layout.row: 1
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationReset();
            }

            Button{
             id: plusMinus
             text: qsTr("+/-")
             Layout.column: 1
             Layout.columnSpan: 1
             Layout.row: 1
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationEmitted("sign");
            }

            Button{
             id: percent
             text: qsTr("%")
             Layout.column: 2
             Layout.columnSpan: 1
             Layout.row: 1
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationEmitted("%");
            }


            Button{
             id: divide
             text: qsTr("/")
             Layout.column: 3
             Layout.columnSpan: 1
             Layout.row: 1
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationEmitted("/");
            }

            Button{
             id: seven
             text: qsTr("7")
             Layout.column: 0
             Layout.columnSpan: 1
             Layout.row: 2
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(7);
            }

            Button{
             id: eight
             text: qsTr("8")
             Layout.column: 1
             Layout.columnSpan: 1
             Layout.row: 2
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(8);
            }

            Button{
             id: nine
             text: qsTr("9")
             Layout.column: 2
             Layout.columnSpan: 1
             Layout.row: 2
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(9);
            }


            Button{
             id: mulitiple
             text: qsTr("X")
             Layout.column: 3
             Layout.columnSpan: 1
             Layout.row: 2
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationEmitted("X");
            }


            Button{
             id: four
             text: qsTr("4")
             Layout.column: 0
             Layout.columnSpan: 1
             Layout.row: 3
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(4);
            }

            Button{
             id: five
             text: qsTr("5")
             Layout.column: 1
             Layout.columnSpan: 1
             Layout.row: 3
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(5);
            }


            Button{
             id: six
             text: qsTr("6")
             Layout.column: 2
             Layout.columnSpan: 1
             Layout.row: 3
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(6);
            }


            Button{
             id: minus
             text: qsTr("-")
             Layout.column: 3
             Layout.columnSpan: 1
             Layout.row: 3
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationEmitted("-");
            }

            Button{
             id: one
             text: qsTr("1")
             Layout.column: 0
             Layout.columnSpan: 1
             Layout.row: 4
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(1);
            }


            Button{
             id: two
             text: qsTr("2")
             Layout.column: 1
             Layout.columnSpan: 1
             Layout.row: 4
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(2);
            }



            Button{
             id: three
             text: qsTr("3")
             Layout.column: 2
             Layout.columnSpan: 1
             Layout.row: 4
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(3);
            }


            Button{
             id: plus
             text: qsTr("+")
             Layout.column: 3
             Layout.columnSpan: 1
             Layout.row: 4
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }
             onClicked: calcOperations.operationEmitted("+");
            }

            Button{
             id: zero
             text: qsTr("0")
             Layout.column: 0
             Layout.columnSpan: 2
             Layout.row: 5
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             onClicked: calcOperations.changeValue(7);
            }

            Button{
             id: pointOperator
             text: qsTr(".")
             Layout.column: 2
             Layout.columnSpan: 1
             Layout.row: 5
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "grey"
             }
             onClicked: calcOperations.operationEmitted(".");
            }


            Button{
             id: equal
             text: qsTr("=")
             Layout.column: 3
             Layout.columnSpan: 1
             Layout.row: 5
             Layout.rowSpan: 1
             Layout.fillHeight: true
             Layout.fillWidth: true
             background: Rectangle {
                 radius: 6
                 color: "orange"
             }

            onClicked: calcOperations.operationEmitted("=");
               }
        }
    }
