# Description
Powershell script to install a suite of applications on a fresh Windows 10 computer using Chocolatey.

# Usage
## Download Powershell scripts
```sh
wget https://raw.githubusercontent.com/hi917/bootstrap_w10/main/choco-install-apps.ps1 -OutFile .\choco-install-apps.ps1;
wget https://raw.githubusercontent.com/hi917/bootstrap_w10/main/set_regs.reg -OutFile .\set_regs.reg;
```

## Run script
```sh
powershell -ExecutionPolicy Bypass -File .\choco-install-apps.ps1;
# Double click set_regs.reg
```

