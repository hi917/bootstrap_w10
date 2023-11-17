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
    'crystaldiskinfo',
    'crystaldiskmark',
    'czkawka',
    'dupeguru',
    'git',
    'hwmonitor',
    'jdownloader',
    'wiztree',
    'yt-dlp',
    'nircmd',
    'cinebench',
    'aida64-extreme --version=6.88.6400', # UFF61-1RDD6-FJDJG-NDMN4-U6YB5

    # Messaging
    'discord',
    'foxitreader',
    'sublimetext3',

    # Documents
    'drawio',
    'openoffice',

    # Online Storage
    'dropbox',

    # Compression
    '7zip',

    # Media
    'vlc',

    # Other
    'steam',
    'razer-synapse-3',
    'ubiquiti-unifi-controller',

    # Security
    'malwarebytes',
    'windscribe',

    # Developer Tools
    'vscode'

ForEach($package in $packages) {
    choco install $item -fy
}
