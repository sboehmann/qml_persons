import QtQuick 2.5
import QtQuick.Dialogs 1.2
import persons 1.0

MessageDialog {
    property Person person

    title: "Delete..."
    text: "Delete record"
    modality : Qt.ApplicationModal
    standardButtons: StandardButton.Yes | StandardButton.No

    onYes: {
        console.log('EXTERMINATE!')
        repository.removePerson(person)
    }

    onPersonChanged: {
        text = "Delete record for \"" + person.firstName + " " + person.lastName + "\"?"
    }
}
