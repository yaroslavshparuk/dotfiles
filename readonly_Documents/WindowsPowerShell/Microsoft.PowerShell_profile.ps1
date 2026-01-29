function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -Path $cwd
    }
    Remove-Item -Path $tmp
}
Set-Alias -Name lg -Value lazygit
Set-Alias -Name ld -Value lazydocker
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config 'D:\config\oh-my-posh\themes\catppuccin_mocha.omp.json' | Invoke-Expression
