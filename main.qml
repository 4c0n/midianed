import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQml.Models

Window {
    width: 1024
    height: 800
    visible: true
    title: qsTr("Hello World")

    GridLayout {
        anchors.fill: parent
        columns: 2

        Frame {
            Layout.column: 0
            Layout.fillHeight: true

            Button {
                text: "BUTTON"

                Drag.active: dragArea.drag.active
                Drag.hotSpot.x: 10
                Drag.hotSpot.y: 10

                MouseArea {
                    id: dragArea
                    anchors.fill: parent

                    drag.target: parent
                }
            }
        }

        GridView {
            id: grid
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            cellWidth: 80
            cellHeight: 80

            model: DelegateModel {
                id: gridModel
                model: ListModel {
                    id: listModel
                }
                delegate: DropArea {
                    id: delegateRoot
                    width: 80
                    height: 80

                    property int visualIndex: DelegateModel.itemsIndex
                }
            }
        }
    }
}
