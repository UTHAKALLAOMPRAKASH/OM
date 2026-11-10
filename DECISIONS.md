# Decisions

- 2026-10-17: User authorises implementation through all eight sections; no per-section approval required.
- Windows x64 detected, build 26200, 8 logical processors. CIM hardware inventory unavailable under current permissions.
- Existing workspace contains only .git; preserve it. Python 3.13.15 available; verify runtime wheel compatibility before pinning.
- PySide6 desktop candidate; use Qt Widgets with restrained custom painting for the first vertical slice to reduce QML/plugin footprint and implementation risk. Preserve independent UI/engine/overlay adapters.
- Single supervised vision subprocess for fault isolation; bounded latest numerical results, no saved images.
- No blue absence alert until evidence classifier is validated. Invalid distance stays UNKNOWN.
- No hard process termination or unvalidated website blocking. Soft app limits are feasible candidate.
- Packaging and actual footprint measured early, then again for release.
- 2026-10-17 resume: backup workspace-20261017-215818.zip made before edits. The dependency installation had completed before interruption.
- MediaPipe 0.10.35 attempted native telemetry in synthetic self-test; do not ship that environment. Use separate Python 3.12.14 / MediaPipe 0.10.21 environment and preserve original for reproducibility. This is a compatibility/privacy correction within the approved Python architecture.
- Numerical intervals now coalesce and write on a bounded worker queue, avoiding per-frame SQLite commits on the UI thread.
- Installer uses Inno Setup 6.7.3 (publisher signature verified). Per-user install; no automatic camera launch, startup registration or data deletion.
- User accepted the current MB size on 2026-10-17; stop size-only optimisation and prioritise reliable function. Current successful payload was 296,492,454 bytes; installer footprint measured separately.


## 18 October continuation decisions
- User removed package-size cap; report actual installed footprint, preserve useful functionality.
- Preserve approved Edge Panel; add separate normal main window sharing existing services.
- Closing main hides to Edge Panel; explicit Exit terminates. Initial monitoring remains OFF.
- Torso is frontal lateral alignment only. Explain visibility and calibration limits without inventing forward/back spinal measures.
- Live preview may cross a separate bounded RAM queue only. Numeric storage never receives image frames.
- OM symbol used for app/window icon and main branding. Existing panel typography retained.
