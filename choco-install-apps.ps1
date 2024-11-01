# Description: Install suite of desktop applications
# Usage: powershell -ExecutionPolicy Bypass -File .\choco-install-apps.ps1

Set-ExecutionPolicy Bypass -Scope Process -Force

# Install Chocolatey, if not installed
if (!(Test-Path -Path "$env:ProgramData\Chocolatey")) {
  Invoke-Expression((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Define packages to install
$packages =
    # Web Browsers
    'firefox',
    'googlechrome',

    # Imaging
    'sharex',

    # Utilities
    ## PC Monitoring & Testing
    'crystaldiskinfo',
    'crystaldiskmark',
    'hwmonitor',
    'hwinfo',
    'msiafterburner', # checksum issues. RivaTuner Statistics Server not confirmed to be included
    'aida64-extreme --version=6.88.6400', # UFF61-1RDD6-FJDJG-NDMN4-U6YB5
    'prime95.portable',
    ## Other
    'czkawka',
    'dupeguru',
    'git',
    'jdownloader',
    'wiztree',
    'ffmpeg'
    'yt-dlp',
    'nircmd',
    'soundswitch',
    'cinebench',
    'ddu',

    # Messaging
    'discord',

    # Documents
    'drawio',
    'openoffice',
    'foxitreader',
    'sublimetext3',

    # Online Storage
    'dropbox',

    # Archive & Compression
    '7zip',

    # Media
    'vlc',

    # Other
    'steam',
    'ubiquiti-unifi-controller',
    'obs-studio',

    # Security
    'malwarebytes',
    'windscribe',

    # Developer Tools
    'vscode',
    'python39'

    # Unlisted
    # AMD Cleanup Utility
    # WLmouse
    # FlyDigi Space Station
    # ShurePlus MOTIV
    # FanControl
    # SpecialK
    # wfdownloader

ForEach($package in $packages) {
    choco install $item -fy
}
