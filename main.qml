import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

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
                onClicked: createButton();
            }
        }
        Frame {
            id: componentFrame
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }

    function createButton() {
        Qt.createQmlObject(`
            import QtQuick.Controls

            Button {
                text: "Dynamic Button"
            }
            `,
            componentFrame,
            'dynamicButton'
        );
    }
}
