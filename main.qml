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

            // TODO: Don't let the button out of the frame
            // TODO: Snap to cell in GridView
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

        Rectangle {
            Layout.column: 1

            width: 600
            height: 200

            // TODO: Maybe using Grid and Column is more appropriate in this case?
            GridView {
                id: grid
                anchors.fill: parent

                clip: true
                // TODO: Highlight them on hover
                cellWidth: 20
                cellHeight: 20

                model: 300

                delegate: Rectangle {
                    color: "lightgrey"
                    width: 20
                    height: 20
                    border.color: "grey"
                    border.width: 1
                }
            }
        }
    }
}
