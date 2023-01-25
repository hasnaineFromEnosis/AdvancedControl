import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQml
import QtQml.XmlListModel

Rectangle {
    width: 300
    height: 480

    Component {
        id: imageDelegate

        GreenBox {
            width: listView.width
            height: 220
            color: '#333'

            Column {
                Text {
                    text: title
                    color: '#e0e0e0'
                }
                Image {
                    width: listView.width
                    height: 200
                    fillMode: Image.PreserveAspectCrop
                    source: imageSource
                }
            }
        }
    }

    XmlListModel {
        id: imageModel

        source: "https://www.nasa.gov/rss/dyn/image_of_the_day.rss"
        query: "/rss/channel/item"

//            XmlRole { name: "title"; query: "title/string()" }
//            XmlRole { name: "imageSource"; query: "enclosure/string(@url)" }
        XmlListModelRole { name: "title"; attributeName: "title/string()" }
        XmlListModelRole { name: "imageSource"; attributeName: "enclosure/string(@url)" }
    }

    ListView {
        id: listView
        anchors.fill: parent
        model: imageModel
        delegate: imageDelegate
    }
}
