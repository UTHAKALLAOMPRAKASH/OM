$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot
if (-not (Test-Path -LiteralPath '.venv312\Scripts\python.exe')) { py -3.12 -m venv .venv312 }
if (-not (Test-Path -LiteralPath '.venv312\Scripts\python.exe')) { throw 'Python 3.12 is required for development only. End users should use the packaged application.' }
& '.\.venv312\Scripts\python.exe' -m pip install -r requirements-lock.txt
if ($LASTEXITCODE -ne 0) { throw 'Dependency setup failed' }
& '.\.venv312\Scripts\python.exe' tools/fetch_models.py
if ($LASTEXITCODE -ne 0) { throw 'Model verification failed' }
