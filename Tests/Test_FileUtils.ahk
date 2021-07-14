#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include ..\FileUtils.ahk

FileSelectFolder, TestFolder
MsgBox % "Most Recently Modified File: " . GetMostRecentlyModifiedFileInDir(TestFolder)
MsgBox % "Most Recently Created File: " . GetMostRecentlyCreatedFileInDir(TestFolder)