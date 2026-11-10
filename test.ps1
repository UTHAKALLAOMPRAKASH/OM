$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
& '.\.venv312\Scripts\python.exe' -m pytest -q
if ($LASTEXITCODE -ne 0) { throw 'Tests failed' }
