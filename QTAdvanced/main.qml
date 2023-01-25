import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        spacing: 2

        Repeater {
            model: ListModel {
                ListElement { name: "Mercury"; surfaceXColor: "gray" }
                ListElement { name: "Venus"; surfaceXColor: "yellow" }
                ListElement { name: "Earth"; surfaceXColor: "blue" }
                ListElement { name: "Mars"; surfaceXColor: "orange" }
                ListElement { name: "Jupiter"; surfaceXColor: "orange" }
                ListElement { name: "Saturn"; surfaceXColor: "yellow" }
                ListElement { name: "Uranus"; surfaceXColor: "lightBlue" }
                ListElement { name: "Neptune"; surfaceXColor: "lightBlue" }
            }

            Rectangle {
                width: 120
                height: 32

                radius: 3
                color: "blue"

                Label {
                    text: name
                }

                Rectangle {
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 4

                    width: 16
                    height: 16

                    radius: 8

                    color: surfaceXColor
                }
            }
        }
    }
}
