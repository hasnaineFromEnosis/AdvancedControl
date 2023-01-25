import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQml
import QtQml.XmlListModel

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 120
        height: 300

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#f6f6f6" }
            GradientStop { position: 1.0; color: "#d7d7d7" }
        }

        ListModel {
            id: actionModel

            ListElement {
                name: "Copenhagen"
                ollo: function(value) { console.log(value + ": You clicked Copenhagen!"); }
            }
            ListElement {
                name: "Helsinki"
                ollo: function(value) { console.log(value + ": Helsinki here!"); }
            }
            ListElement {
                name: "Oslo"
                ollo: function(value) { console.log(value + ": Hei Hei fra Oslo!"); }
            }
            ListElement {
                name: "Stockholm"
                ollo: function(value) { console.log(value + ": Stockholm calling!"); }
            }
        }

        ListView {
            anchors.fill: parent
            anchors.margins: 20

            clip: true

            model: actionModel

            delegate: actionDelegate
            spacing: 5

            focus: true
        }

        Component {
            id: actionDelegate

            Rectangle {
                width: ListView.view.width
                height: 40

                color: "#157efb"

                Text {
                    anchors.centerIn: parent
                    font.pixelSize: 10
                    text: name
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: ollo(index);
                }
            }
        }
    }

}
