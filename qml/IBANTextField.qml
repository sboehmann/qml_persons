import QtQuick 2.5

ValidatedTextField {
    validator: RegExpValidator{
        regExp: /[A-Z]{2}\d{2}[A-Z\d]{1,30}/
    }
}
