import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    border.color: "black"
    color: "green"
    property string str: "text"

    Label {
        anchors.centerIn: parent
        text: str
    }
}
