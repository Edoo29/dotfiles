# Termina icons
Import-Module Terminal-Icons

# Alias
Set-Alias ll ls
Set-Alias vim nvim

# Default location on startup
Set-Location C:\your\path\

# Oh-my-posh config
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\theme.omp.toml"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

#PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Which command to find where a file is located
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }
