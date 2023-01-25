import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    border.color: "black"
    color: "green"
    property string text: "text"
    Label {
        horizontalAlignment: parent.horizontalCenter
        text: text
    }
}
