﻿
## For a reference of this file's elements, see:
##    https://technet.microsoft.com/library/hh849709.aspx
##    https://technet.microsoft.com/en-us/library/dd878297(v=vs.85).aspx

## 64-bit:
##    %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
## 32-bit:
##    %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe

@{
	RootModule = 'ACMESharp.POSH.dll'
	ModuleVersion = '0.8.5'
	GUID = '244FAB9A-D367-4C0E-A088-FF3D34EDF713'
	
	Author = 'https://github.com/ebekker'

	CompanyName = 'https://github.com/ebekker/ACMESharp'

	Copyright = '(c) 2017 Eugene Bekker. All rights reserved.'	

	Description = "Client library for the ACME protocol, which is used to interoperate with the Let's Encrypt project's CA server and any other ACME-compliant server."

	# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
	DefaultCommandPrefix = 'ACME'

	## Minimum version of the Windows PowerShell engine required by this module
	## This does not appear to be enforce for versions > 2.0 as per
	##    https://technet.microsoft.com/en-us/library/dd878297(v=vs.85).aspx
	PowerShellVersion = '3.0'

	DotNetFrameworkVersion = '4.5'

	# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{

		PSData = @{

			# Tags applied to this module. These help with module discovery in online galleries.
			Tags = @('pki','ssl','tls','security','certificates','letsencrypt','acme','powershell','acmesharp')

			# A URL to the license for this module.
			LicenseUri = 'https://raw.githubusercontent.com/ebekker/ACMESharp/master/LICENSE'

			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/ebekker/ACMESharp'

			# A URL to an icon representing this module.
			IconUri = 'https://cdn.rawgit.com/ebekker/ACMESharp/master/artwork/ACMESharp-logo-square64.png'

			# ReleaseNotes of this module
			ReleaseNotes = 'Please see the release notes from the release distribution page: https://github.com/ebekker/ACMESharp/releases'

		} # End of PSData hashtable

	} # End of PrivateData hashtable

	# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
	NestedModules = @( "ACMESharp-Extensions\ACMESharp-Extensions.psd1" )

	# Assemblies that must be loaded prior to importing this module
	#RequiredAssemblies = @( 'ACMESharp.dll' )

	# Script files (.ps1) that are run in the caller's environment prior to importing this module.
	#ScriptsToProcess = @( '_ModInit.ps1' )


	############################################################
	## Unused manifest elements reserved for possible future use
	############################################################

	# HelpInfo URI of this module for updateable help
	# HelpInfoURI = ''

	# Modules that must be imported into the global environment prior to importing this module
	# RequiredModules = @()

	# Type files (.ps1xml) to be loaded when importing this module
	# TypesToProcess = @()

	# Format files (.ps1xml) to be loaded when importing this module
	# FormatsToProcess = @()

	# Functions to export from this module
	# FunctionsToExport = '*'

	# Cmdlets to export from this module
	# CmdletsToExport = '*'

	# Variables to export from this module
	# VariablesToExport = '*'

	# Aliases to export from this module
	# AliasesToExport = '*'

	# DSC resources to export from this module
	# DscResourcesToExport = @()

	# List of all modules packaged with this module
	# ModuleList = @()

	# List of all files packaged with this module
	# FileList = @()

}
