import QtQuick 2.5

ValidatedTextField {
    validator: RegExpValidator{
        regExp: /\d[\d ]*/
    }
}
