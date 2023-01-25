import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    border.color: "black"
    color: "blue"
    width: 100
    height: 100
    property string text: "text"
    Label {
        horizontalAlignment: parent.horizontalCenter
        text: text
    }
}
