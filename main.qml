import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
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
            }
        }
        Frame {
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
