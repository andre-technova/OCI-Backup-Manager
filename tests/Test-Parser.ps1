<#
PT-BR: Valida somente a sintaxe/parser do script principal. Não executa OCI CLI.
EN-US: Validates only the syntax/parser of the main script. It does not run OCI CLI.
ES-ES: Valida solo la sintaxis/parser del script principal. No ejecuta OCI CLI.
#>

$ScriptPath = Join-Path (Split-Path -Parent $PSScriptRoot) "scripts\OCI-Backup-Manager-v1.0.ps1"

$tokens = $null
$errors = $null

[System.Management.Automation.Language.Parser]::ParseFile(
    $ScriptPath,
    [ref]$tokens,
    [ref]$errors
) | Out-Null

if ($errors.Count -gt 0) {
    $errors | Format-List *
    throw "Parser encontrou erro / Parser found an error / Parser encontró un error."
}

Write-Host "PARSER OK - script sem erro de sintaxe / no syntax error / sin error de sintaxis." -ForegroundColor Green
