# OM

Windows 11 x64 release candidate. Start the installed app or double-click launch.cmd.
Version 0.3.0 uses OM branding, coordinated dark/light themes and a compact OM Panel.
Existing executable and database identifiers remain stable for upgrades.
Monitoring starts OFF. Use Start monitoring, wait for camera readiness, then Calibrate.
The optional UNO wiring and firmware are in docs/HARDWARE.md and firmware/postureguard_uno.

This build provides head tilt, shoulder tilt and observable torso-lean estimates,
not medical measurements or frontal spinal-curvature assessment. Real-camera
accuracy is not yet validated. Optional blink estimation is experimental.
Privacy/runtime limitations and current release gates are documented in docs/USER_GUIDE.md,
docs/DEPENDENCIES.md and PROGRESS.md.

Development runtime: Python 3.12; .venv312 is the active environment. The original
.venv (Python 3.13 / MediaPipe 0.10.35) is preserved but MUST NOT be used for release.
Tests: .venv312/Scripts/python.exe -m pytest -q
Build: .venv312/Scripts/python.exe tools/build.py
Installer: .runtime/inno/ISCC.exe packaging/PostureGuard.iss
Exact environment: requirements-lock.txt. Build tools are not shipped to end users.

All operational reports are local. No cloud service is required. Hosted updates and
website blocking are not implemented. See the user guide for supported behaviours.


## Local desktop interface development
OM uses bundled React assets inside Qt WebEngine; it is not a hosted website. Install the Python requirements (including matching PySide6 Essentials/Addons), and run `pnpm install --frozen-lockfile` in `frontend` with Node available. `python tools/build.py` builds the bundled interface before packaging the Windows app. No Node runtime or network server is required by the installed app. `--native-ui` keeps the existing native interface available as a rollback. `--desktop-check --data-dir <disposable-copy> --diagnostic-output <report.json>` verifies the embedded renderer with monitoring off. Legacy smoke tests explicitly cover the native interface.
