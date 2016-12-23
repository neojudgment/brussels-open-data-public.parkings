;Brussels Open Data - wifi.brussels script install copyright by Pascal Hubert 2016
; ---------------------------------------------

[_ISTool]
EnableISX=true

#define use_msi45
#define use_dotnetfx46

#define BaseFolder "..\bin\x86\Release"
#define AppName "brussels open data - wifi.brussels"
#define MyAppName "brussels open data - wifi.brussels"
#define ExeName BaseFolder+"\brussels open data - wifi.brussels.exe"
#define AppVersionNo GetFileVersion(ExeName)
#define AppMajorVersionIdx Pos(".", AppVersionNo)
#define AppMinorVersionTemp Copy(AppVersionNo, AppMajorVersionIdx +1)
#define AppMajorVersionNo Copy(AppVersionNo, 1, AppMajorVersionIdx -1)
#define AppMinorVersionNo Copy(AppMinorVersionTemp, 1, Pos(".", AppMinorVersionTemp)-1)
#define MyAppExeName "brussels open data - wifi.brussels.exe"

#define ISSI_BeveledLabel "brussels open data - wifi.brussels - © 2016 Pascal Hubert"

#define ISSI_IncludePath "C:\ISSI"
#include ISSI_IncludePath+"\_issi.isi"

[Setup]
AppVerName={#MyAppName}
AppVersion={#AppVersionNo}
AppName={#AppName}
DefaultDirName={pf}\brussels open data - wifi.brussels
DefaultGroupName={#MyAppName}
MinVersion=0,6.0sp2
ShowLanguageDialog=yes
WizardImageFile=Resources\logo.bmp
WizardSmallImageFile=Resources\logo1.bmp
OutputDir=Output
SetupIconFile=Resources\Setup.ico
DirExistsWarning=no
EnableDirDoesntExistWarning=false
InfoBeforeFile=licence\license.rtf
AllowNoIcons=true
AppCopyright=Pascal Hubert
OutputBaseFilename=brussels open data - wifi.brussels
ShowUndisplayableLanguages=true
UsePreviousAppDir=true
UsePreviousGroup=true
UsePreviousLanguage=Yes
UsePreviousSetupType=false
UsePreviousTasks=false
Compression=lzma2/Max
SolidCompression=true
InternalCompressLevel=Normal
VersionInfoVersion={#AppVersionNo}
VersionInfoCompany=Pascal Hubert
VersionInfoDescription=brussels open data - wifi.brussels
VersionInfoCopyright=Copyright © 2016
VersionInfoProductName=brussels open data - wifi.brussels
VersionInfoProductVersion={#AppVersionNo}
UninstallDisplayIcon={app}\brussels open data - wifi.brussels.exe
AppMutex=WIFI.BRUSSELS_MUTEX
SetupLogging=yes
DisableDirPage=auto
DisableProgramGroupPage=auto
AppPublisher=Pascal Hubert
AppPublisherURL=https://github.com/neojudgment
AppSupportURL=https://github.com/neojudgment
AppUpdatesURL=https://github.com/neojudgment

[Languages]
Name: en; MessagesFile: languages\English.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: scripts\isxdl\isxdl.dll; Flags: dontcopy
Source: scripts\isxdl\english.ini; Flags: dontcopy
Source: scripts\isxdl\french.ini; Flags: dontcopy
Source: licence\licence.rtf; DestDir: {app}
Source: licence\license.rtf; DestDir: {app}
Source: ..\bin\x86\Release\Brussels Open Data - wifi.brussels.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\Elysium.Theme.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\Microsoft.Expression.Interactions.dll; DestDir: {app}; Flags: ignoreversion
;Source: ..\bin\x86\Release\Microsoft.Expression.Drawing.dll; DestDir: {app}; Flags: ignoreversion

Source: ..\bin\x86\Release\x86\SQLite.Interop.dll; DestDir: {app}\x86; Flags: ignoreversion
Source: ..\bin\x86\Release\x64\SQLite.Interop.dll; DestDir: {app}\x64; Flags: ignoreversion

Source: ..\bin\x86\Release\EntityFramework.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\EntityFramework.SqlServer.dll; DestDir: {app}; Flags: ignoreversion

Source: ..\bin\x86\Release\GMap.NET.Core.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\GMap.NET.WindowsPresentation.dll; DestDir: {app}; Flags: ignoreversion

Source: ..\bin\x86\Release\System.Data.SQLite.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\System.Data.SQLite.EF6.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\System.Data.SQLite.Linq.dll; DestDir: {app}; Flags: ignoreversion

Source: ..\bin\x86\Release\Microsoft.Windows.Shell.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\Microsoft.WindowsAPICodePack.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\Newtonsoft.Json.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\bin\x86\Release\System.Windows.Interactivity.dll; DestDir: {app}; Flags: ignoreversion

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; IconFilename: {app}\Brussels Open Data - wifi.brussels.exe; IconIndex: 0
Name: {group}\Brussels Open Data - wifi.brussels - License; Filename: {app}\license.rtf; WorkingDir: {app}; Languages: en
Name: {group}\Brussels Open Data - wifi.brussels - Uninstall; Filename: {uninstallexe}; Languages: en

Name: {userdesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; WorkingDir: {app}; Tasks: quicklaunchicon

[Registry]
Root: HKLM; Subkey: "Software\Pascal Hubert"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Pascal Hubert\Brussels Open Data - wifi.brussels"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Pascal Hubert\Brussels Open Data - wifi.brussels\Settings"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"

[Dirs]
Name: {userappdata}\Brussels Open Data - wifi.brussels\log; Flags: uninsalwaysuninstall
Name: {userappdata}\Brussels Open Data - wifi.brussels\json; Flags: uninsalwaysuninstall
Name: {userappdata}\Brussels Open Data - wifi.brussels\profiles; Flags: uninsalwaysuninstall
Name: {app}; Flags: uninsalwaysuninstall
Name: {app}\x86; Flags: uninsalwaysuninstall
Name: {app}\x64; Flags: uninsalwaysuninstall

[UninstallDelete]
Type: filesandordirs; Name: {app}
Type: filesandordirs; Name: {commonappdata}\Brussels Open Data - wifi.brussels

[Run]

;x64 en
Filename: "{dotnet4064}\ngen.exe"; Parameters: "install ""{app}\Brussels Open Data - wifi.brussels.exe"""; WorkingDir: {app}; Languages: en;Flags: runhidden; StatusMsg: Optimizing performance. Please wait...; Check: IsWin64

;x32 en
Filename: "{dotnet4032}\ngen.exe"; Parameters: "install ""{app}\Brussels Open Data - wifi.brussels.exe"""; WorkingDir: {app}; Languages: en;Flags: runhidden; StatusMsg: Optimizing performance. Please wait...; Check: not IsWin64

Filename: "{app}\Brussels Open Data - wifi.brussels.exe"; Description: Run Brussels Open Data - wifi.brussels; Languages: en; Flags: postinstall nowait shellexec

[UninstallRun]

;x64 en
Filename: "{dotnet4064}\ngen.exe"; Parameters: "uninstall ""{app}\Brussels Open Data - wifi.brussels.exe"""; WorkingDir: {app}; Languages: en;Flags: runhidden; StatusMsg: Uninstall Brussels Open Data - wifi.brussels and dependencies...; Check: IsWin64

;x32 en
Filename: "{dotnet4032}\ngen.exe"; Parameters: "uninstall ""{app}\Brussels Open Data - wifi.brussels.exe"""; WorkingDir: {app}; Languages: en;Flags: runhidden; StatusMsg: Uninstall Brussels Open Data - wifi.brussels and dependencies...; Check: not IsWin64

[Code]

const
  version = 'v4.6.2';
  service = 0;

function IsDotNetDetected(version: string; service: cardinal): boolean;

// Indicates whether the specified version and service pack of the .NET Framework is installed.
//
// version -- Specify one of these strings for the required .NET Framework version:
//    'v1.1'          .NET Framework 1.1
//    'v2.0'          .NET Framework 2.0
//    'v3.0'          .NET Framework 3.0
//    'v3.5'          .NET Framework 3.5
//    'v4\Client'     .NET Framework 4.0 Client Profile
//    'v4\Full'       .NET Framework 4.0 Full Installation
//    'v4.5'          .NET Framework 4.5
//    'v4.5.1'        .NET Framework 4.5.1
//    'v4.5.2'        .NET Framework 4.5.2
//    'v4.6'          .NET Framework 4.6
//    'v4.6.1'        .NET Framework 4.6.1
//    'v4.6.2'        .NET Framework 4.6.2
//
// service -- Specify any non-negative integer for the required service pack level:
//    0               No service packs required
//    1, 2, etc.      Service pack 1, 2, etc. required

var
    key, versionKey: string;
    install, release, serviceCount, versionRelease: cardinal;
    success: boolean;
begin
    versionKey := version;
    versionRelease := 0;

    // .NET 1.1 and 2.0 embed release number in version key
    if version = 'v1.1' then begin
        versionKey := 'v1.1.4322';
    end else if version = 'v2.0' then begin
        versionKey := 'v2.0.50727';
    end

    // .NET 4.5 and newer install as update to .NET 4.0 Full
    else if Pos('v4.', version) = 1 then begin
        versionKey := 'v4\Full';
        case version of
          'v4.5':   versionRelease := 378389;
          'v4.5.1': versionRelease := 378675; // 378758 on Windows 8 and older
          'v4.5.2': versionRelease := 379893;
          'v4.6':   versionRelease := 393295; // 393297 on Windows 8.1 and older
          'v4.6.1': versionRelease := 394254; // 394271 on Windows 8.1 and older
          'v4.6.2': versionRelease := 394802; // 394806 on Windows 8.1 and older
        end;
    end;

    // installation key group for all .NET versions
    key := 'SOFTWARE\Microsoft\NET Framework Setup\NDP\' + versionKey;

    // .NET 3.0 uses value InstallSuccess in subkey Setup
    if Pos('v3.0', version) = 1 then begin
        success := RegQueryDWordValue(HKLM, key + '\Setup', 'InstallSuccess', install);
    end else begin
        success := RegQueryDWordValue(HKLM, key, 'Install', install);
    end;

    // .NET 4.0 and newer use value Servicing instead of SP
    if Pos('v4', version) = 1 then begin
        success := success and RegQueryDWordValue(HKLM, key, 'Servicing', serviceCount);
    end else begin
        success := success and RegQueryDWordValue(HKLM, key, 'SP', serviceCount);
    end;

    // .NET 4.5 and newer use additional value Release
    if versionRelease > 0 then begin
        success := success and RegQueryDWordValue(HKLM, key, 'Release', release);
        success := success and (release >= versionRelease);
    end;

    result := success and (install = 1) and (serviceCount >= service);
end;


function InitializeSetup(): Boolean;
begin
     if not IsDotNetDetected('v4.6', 0) then begin
        MsgBox('wifi.brussels requires Microsoft .NET Framework 4.6.2'#13#13
            'Please install .NET Framework 4.6.2,'#13
            'and then re-run the setup program.', mbInformation, MB_OK);
        result := false;
    end else
        result := true;
end;