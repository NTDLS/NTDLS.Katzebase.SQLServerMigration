[Setup]
;-- Main Setup Information
 AppName                          = Katzebase SQL Server Migration
 AppVerName                       = Katzebase SQL Server Migration 0.9.1
 AppCopyright                     = Copyright © 2024 NetworkDLS.
 DefaultDirName                   = {commonpf}\NetworkDLS\Katzebase\SQL Server Migration
 DefaultGroupName                 = NetworkDLS\Katzebase
 UninstallDisplayIcon             = {app}\NTDLS.Katzebase.SQLServerMigration.exe
 SetupIconFile                    = "..\@Art\Icon.ico"
 PrivilegesRequired               = admin
 Uninstallable                    = Yes
 MinVersion                       = 0.0,7.0
 Compression                      = bZIP/9
 ChangesAssociations              = Yes
 OutputBaseFilename               = Katzebase_SQLServerMigration
 ArchitecturesInstallIn64BitMode  = x64

;-- Windows 2000 & XP (Support Dialog)
 AppPublisher    = NetworkDLS
 AppPublisherURL = http://www.NetworkDLS.com/
 AppUpdatesURL   = http://www.NetworkDLS.com/
 AppVersion      = 0.9.1

[Files]
 Source: "..\NTDLS.Katzebase.SQLServerMigration\bin\Release\net8.0-windows\*.exe";        DestDir: "{app}";          Flags: IgnoreVersion;                
 Source: "..\NTDLS.Katzebase.SQLServerMigration\bin\Release\net8.0-windows\*.dll";        DestDir: "{app}";          Flags: IgnoreVersion;                
 Source: "..\NTDLS.Katzebase.SQLServerMigration\bin\Release\net8.0-windows\*.json";       DestDir: "{app}";          Flags: IgnoreVersion;                
 Source: "..\NTDLS.Katzebase.SQLServerMigration\bin\Release\net8.0-windows\Runtimes\*.*"; DestDir: "{app}\Runtimes"; Flags: IgnoreVersion recursesubdirs; 

[Icons]
 Name: "{group}\Katzebase MSSQL Migration Tool";  Filename: "{app}\NTDLS.Katzebase.SQLServerMigration.exe"; 

[Run]
 Filename: "{app}\NTDLS.Katzebase.SQLServerMigration.exe"; Description: "Run Katzebase SQL Server Migration now?"; Flags: postinstall nowait skipifsilent shellexec;
