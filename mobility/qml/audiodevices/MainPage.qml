

import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: mainPage

    Item {
        id: commonButtons
        //anchors.fill: parent
        anchors.top: parent.top
        height: modeBut.height + 24

        Menu {
            id: modeMenu
            // visualParent is needed to specify the grayed out area.
            visualParent: pageStack
            MenuLayout {
                MenuItem {text: "Input"; onClicked: { modeBut.text = "Input" } }
                MenuItem {text: "Output"; onClicked: { modeBut.text = "Output" }}
            }
        }

        Menu {
            id: deviceMenu
            // visualParent is needed to specify the grayed out area.
            visualParent: pageStack
            MenuLayout {
                MenuItem {text: "Input"; onClicked: { deviceBut.text = "Input" } }
                MenuItem {text: "Output"; onClicked: { deviceBut.text = "Output" }}
            }
        }

        Column {
            spacing: 24

            Row {
                spacing: 24

                Label {
                    id : modeLabel
                    anchors.verticalCenter: modeBut.verticalCenter
                    text : "Mode:"

                    MouseArea {
                        anchors.fill: parent
                        onClicked: { modeMenu.open(); }
                    }
                }

                Button {
                    id: modeBut
                    text: "Input"
                    onClicked: {
                        modeMenu.open();
                    }
                }

                Label {
                    id : deviceLabel
                    anchors.verticalCenter: deviceBut.verticalCenter
                    text : "Device:"

                    MouseArea {
                        anchors.fill: parent
                        onClicked: { deviceMenu.open(); }
                    }
                }

                Button {
                    id: deviceBut
                    text: "source.rec"
                    onClicked: {
                        deviceMenu.open();
                    }
                }
            } //Row
        } //Column
    } //Item

    Flickable {
        width: 854; height: parent.height - commonButtons.height
        anchors.top: commonButtons.bottom
        contentWidth: pageSt.width; contentHeight: firstCol.height
        clip: true

        PageStack {
            id: pageSt
            Grid {
                id: firstCol
                columns: 3
                spacing: 24

                Label {
                    id: spaceLabel
                    text: "   "
                }
                Label {
                    text: "First"
                }
                Label {
                    text: "Second"
                }

                Label {
                    text : "Codec:"
                }
                Button {
                    id: codecBut
                    text: "Input"
                    onClicked: {
                        modeMenu.open();
                    }
                }
                Label {
                    id: codecLabel
                    text: "None"
                }

                Label {
                    text : "Frequency:"
                }

                Button {
                    id: freqBut
                    text: "source.rec"
                    onClicked: {
                        deviceMenu.open();
                    }
                }
                Label {
                    id: freqLabel
                    text: "None"
                }

                Label {
                    text : "Channel:"
                }
                Button {
                    id: chanBut
                    text: "source.rec"
                    onClicked: {
                        deviceMenu.open();
                    }
                }
                Label {
                    id: chanLabel
                    text: "None"
                }

                Label {
                    text : "Sample type:"
                }
                Button {
                    id: sampletypeBut
                    text: "source.rec"
                    onClicked: {
                        deviceMenu.open();
                    }
                }
                Label {
                    id: sampletypeLabel
                    text: "None"
                }

                Label {
                    text : "Sample size:"
                }
                Button {
                    id: samplesizeBut
                    text: "source.rec"
                    onClicked: {
                        deviceMenu.open();
                    }
                }
                Label {
                    id: samplesizeLabel
                    text: "None"
                }

                Label {
                    text : "Endianess:"
                }
                Button {
                    id: endBut
                    text: "source.rec"
                    onClicked: {
                        deviceMenu.open();
                    }
                }
                Label {
                    id: endLabel
                    text: "None"
                }
            } //Grid
        }
    }
}
