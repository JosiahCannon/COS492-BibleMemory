# COS492-BibleMemory

## Table of Contents
* [General Information](#general-information)
* [Project Status](#project-status)
* [Screenshots](#screenshots)
* [Features](#features)
* [Technologies](#technologies)
* [Installation](#installation)
* [Credits](#credits)
* [License](#license)

//REMOVE ME: make sure all links work, titles match, and no empty titles are included

## General Information
Covenant College Capstone (SIP) Project for May 2021 Bachelor of Arts in Computer Science.

This Scripture memory application is a stand-alone app for watchOS (Apple Watch) that provides quick access to select Scripture verses for easy memorization and review on the go.

## Project Status
Status: build = *complete*

## Screenshots
Taken on Apple Watch Series 6 - 44mm simulator.

<p>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/ContentView%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/SelectBookView%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/SelectVerseView%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/VerseDetailView%20(Standard)%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/VerseDetailView%20(Practice%201)%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/SettingsView%20(Unauthorized)%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/Default%20Authorization%20Prompt%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/SettingsView%20(Authorized)%20OFF%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/SettingsView%20(Authorized)%20ON%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/Daily%20Notification%20(Short%20Look)%20-%20COS492.png"/>
    <img width="148" height="180" src="https://github.com/JosiahCannon/COS492-BibleMemory/blob/main/Resources%20(Screenshots)/Screenshots%20(Apple%20Watch%206%20-%2044mm)%20-%20COS492/Daily%20Notification%20(Long%20Look)%20-%20%20COS492.png"/>
</p>

## Features
* Quickly search for and choose a book of the Bible
* Discover a list of pre-chosen Scripture verses for each of the 66 books in the Bible (*English Standard Version* only)
* Select the individual verse of your choosing and toggle on the "Practice" mode to remove random words from the verse and challenge your memorization skills
* Push the "Get Random" button to let the app choose and display a verse for you!
* Use the Settings page to Authorize app notifications and toggle Daily (9:00AM;repeating) notifications ON or OFF

## Technologies
* XCode: Version 12.3 (12C33)
* watchOS Deployment Target: watchOS 7.0
* Swift Language Version: Swift 5

Tested On:
* Local Apple Watch Series 3 - 38mm (watchOS 7.0.2) [through local iPhone SE (2nd generation) - iOS 14.2]
* XCode Simulator: Apple Watch Series 3 - 38mm (watchOS 7.2)
* XCode Simulator: Apple Watch Series 6 - 44mm (watchOS 7.2)

## Installation
To run this app, install locally through XCode:
*   Copy git repository onto local machine
*   Launch XCode 12+, and use menubar to click "File/Open..."
*   Use file browser pop-up to open the project file called "COS492-BibleMemory.xcodeproj" from the copied repository's local directory
*   Build the project onto the Preview Canvas, a chosen watchOS Simulator, or a local device

## Credits
* First experience with Swift/SwiftUI; provided inspiration for basic code structure: https://developer.apple.com/tutorials/swiftui/
* General SwiftUI help: https://developer.apple.com/documentation/swiftui/
* Apple SF Symbols help: https://sarunw.com/posts/how-to-change-color-of-sf-symbols/
* Notification code inspiration: https://medium.com/better-programming/scheduling-notifications-and-badges-in-swiftui-9edf8574b893

## License
