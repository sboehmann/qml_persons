import QtQuick 2.5

ValidatedTextField {
    validator: RegExpValidator{
        regExp: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}/i
    }
}
