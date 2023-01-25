import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQml

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
        color: "grey"
        width: 220
        height: 300

        GridView {
            id: view
            anchors.fill: parent
            anchors.margins: 20

            clip: true

            model: 100

            cellWidth: 45
            cellHeight: 45

            delegate: numberDelegate
        }

        Component {
            id: numberDelegate

            GreenBox {
                width: 40
                height: 40
                text: index
            }
        }
    }

}
