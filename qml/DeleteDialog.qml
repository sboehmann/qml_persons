import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import persons 1.0

Window {
    id: deleteDialog
    title: qsTr("Delete")
    color: palette.window

    modality: Qt.NonModal
    flags: Qt.Dialog

    visible: true

    width: deleteContent.implicitWidth
    height: deleteContent.implicitHeight
    minimumWidth: 300
    minimumHeight: 200

    property Person personToKill: Person {}

    onClosing: {
        destroy();
    }

    SystemPalette {
        id: palette
    }

    ColumnLayout {
        id: deleteContent
        anchors.fill: parent
        anchors.margins: 8

        Label  {
            text: qsTr("Really delete "
                       + personToKill.firstName
                       + " "
                       + personToKill.lastName
                       + "?")
        }

        RowLayout {
            Button {
                id: confirm
                text: qsTr("Yes")
                Layout.alignment: Qt.AlignLeft
                onClicked: {
                    repository.removePerson(personToKill) // what is the problem with const Person*
                    close()
                }
            }
            Button {
                id: deny
                text: qsTr("No")
                Layout.alignment: Qt.AlignRight
                onClicked: close()
            }
        }
    }
}
