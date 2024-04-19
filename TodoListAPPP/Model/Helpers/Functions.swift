//
//  Functions.swift
//  TodoListAPPP
//
//  Created by Pablo Alvarado on 18/04/24.
//

import Foundation

func printCommandToOpenDatabaseFile() {
    let urls = FileManager.default.urls(
        for: .applicationSupportDirectory,
        in: .userDomainMask
    )
    let documentsDirectory = urls[0].absoluteString.trimmingPrefix(
        "file://"
    ).replacing(
        "%20",
        with: " "
    )
    let command = "open \"\(documentsDirectory)default.store\" -a \"/Applications/DB Browser for SQLite.app\""
    print(
        command
    )
}