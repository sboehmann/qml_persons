import QtQuick 2.5
import persons 1.0

PersonEditForm
{
    id: form

    property Person person: Person {}

    firstName: person.firstName;
    lastName: person.lastName;
    company: person.company;
    street: person.street;
    streetNo: person.streetNo;
    zipCode: person.zipCode;
    location: person.location;
    birthday: person.birthday;
    phoneArea: person.phoneArea;
    phoneNumber: person.phoneNumber;
    faxArea: person.faxArea;
    faxNumber: person.faxNumber;
    mobileArea: person.mobileArea;
    mobileNumber: person.mobileNumber;
    mail: person.mail;
    title: person.title;

    onTitleChanged: {
        var index = titleCb.find(title)
        titleCb.currentIndex = index === -1 ? 0 : index;
    }

    Connections {
        target: titleCb
        onCurrentTextChanged: {
            person.title = titleCb.currentText
        }
    }

    Binding { target: person; property: "firstName"; value: form.firstName; }
    Binding { target: person; property: "lastName"; value: form.lastName; }
    Binding { target: person; property: "company"; value: form.company; }
    Binding { target: person; property: "street"; value: form.street; }
    Binding { target: person; property: "streetNo"; value: form.streetNo; }
    Binding { target: person; property: "zipCode"; value: form.zipCode; }
    Binding { target: person; property: "location"; value: form.location; }
    Binding { target: person; property: "birthday"; value: form.birthday; }
    Binding { target: person; property: "phoneArea"; value: form.phoneArea; }
    Binding { target: person; property: "phoneNumber"; value: form.phoneNumber; }
    Binding { target: person; property: "faxArea"; value: form.faxArea; }
    Binding { target: person; property: "faxNumber"; value: form.faxNumber; }
    Binding { target: person; property: "mobileArea"; value: form.mobileArea; }
    Binding { target: person; property: "mobileNumber"; value: form.mobileNumber; }
    Binding { target: person; property: "mail"; value: form.mail; }
}
