import QtQuick 2.5
import QtQuick.Controls 1.4

import "."

TextField {
    property string ok: "\uf058"
    property string warn: "\uf071"

    function updateIcon() {
        if (text === ""){
            ibanValid.text = "";
        }
        else {
            if (acceptableInput){
                ibanValid.text = ok
                ibanValid.color = "green"
            }
            else {
                ibanValid.text = warn
                ibanValid.color = "darkorange"
            }
        }
    }

    onAcceptableInputChanged: updateIcon()
    onTextChanged: updateIcon()

    Text {
        id: ibanValid

        font.family: FontAwesome.fontName
        anchors{
            right: parent.right
            rightMargin: 5
            verticalCenter: parent.verticalCenter
        }

        text: ""
    }
}
