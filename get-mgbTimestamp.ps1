<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2021 v5.8.188
	 Created on:   	12/2/2021 12:59 PM
	 Created by:   	Matías Bernhardt
	 Organization: 	MGB
	 Filename:     	get-mgbTimestamp
	===========================================================================
	.DESCRIPTION
		Grabs format from XML file.
		Fills the clipboard with a Timestamp. 
		Set a keyboard shortcut to easily have a timestamp always at hand.
#>

try {
	$xml = [xml](Get-Content $PSScriptRoot\config.xml -ErrorAction Stop)
	$format = $xml.Config.Format
}
catch {
	$format = "dd/MM/yyyy | hh:mm"	
}



Get-Date -Format "$format" | Set-Clipboard