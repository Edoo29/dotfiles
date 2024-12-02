# Import-Module posh-git
# Import-Module oh-my-posh
Import-Module Terminal-Icons

Set-Alias ll ls
Set-Alias vim nvim

Set-Location C:\your\path\

oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/takuya.omp.json' | Invoke-Expression
