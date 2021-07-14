#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GetMostRecentlyModifiedFileInDir(dir)
{
	if !(FileExist(dir) and InStr(FileExist(dir), "D"))
		throw Exception("Directory does not exist", -1)
	
	NewestFileModificationDate := "1"
	NewestFileName := ""
	Loop, Files, %dir%\*.*, F	
	{
		if (A_LoopFileTimeModified > NewestFileModificationDate) {
			NewestFileName := A_LoopFileName
			NewestFileModificationDate := A_LoopFileTimeModified
		}
	}
	
	return NewestFileName
}

GetMostRecentlyCreatedFileInDir(dir)
{
	if !(FileExist(dir) and InStr(FileExist(dir), "D"))
		throw Exception("Directory does not exist", -1)
	
	NewestFileCreationDate := "1"
	NewestFileName := ""
	Loop, Files, %dir%\*.*, F	
	{
		if (A_LoopFileTimeCreated > NewestFileCreationDate) {
			NewestFileName := A_LoopFileName
			NewestFileCreationDate := A_LoopFileTimeCreated
		}
	}
	
	return NewestFileName
}