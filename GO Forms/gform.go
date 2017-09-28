package main

import (
    "github.com/lxn/walk"
    . "github.com/lxn/walk/declarative"
)

func main() {
	var tedt *walk.TextEdit

    MainWindow {
        Title:   "Hello Windows!",
        MinSize: Size {600, 400},
        Layout:  VBox {},
        Children: []Widget {
            TextEdit { AssignTo: &tedt },    
            PushButton {
                Text: "Click Me!",
                OnClicked: func() {
                    tedt.SetText("Hai cliccato!")
                },
            },
        },
    }.Run()
}