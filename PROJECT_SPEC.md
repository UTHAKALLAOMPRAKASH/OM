# PostureGuard V1 execution specification

Started 2026-10-17 20:16 IST. Target: 2026-10-20 20:16 IST (72 hours).
Build a local Windows ergonomic-awareness application with OM Edge Panel,
optional UNO/HC-SR04, camera posture proxies, robust calibration, fast overlay,
notifications, reminders, focus tools, active-use estimates, reports and 60-day retention.
No medical claims. No persisted camera frames, screenshots, video or landmark streams.
Monitoring initially OFF; stopping releases hardware and clears overlay.
Unknown/unobservable measurements are never GOOD. Unsupported regions remain unavailable.
Installed payload goal: strictly <300,000,000 bytes; verify actual build.
Optional blink estimation is experimental; app limits are soft warnings only.
Website blocking deferred unless independently implementable and validated.

## Integration contracts
Package at src/postureguard. UI uses PySide6. Business modules must work without Qt.
State strings: GOOD, WARNING, BAD, UNKNOWN, UNAVAILABLE; distance TOO_CLOSE, GOOD, TOO_FAR, UNKNOWN.
Events/results carry monotonic timestamps for freshness. Wall UTC timestamps used for storage.
Hardware never implies person identity. Presence defaults UNKNOWN; no unvalidated blue alert.
Public module interfaces must be documented in module docstrings and tests.

## Ownership during parallel work
- Main agent: shell/UI, orchestration, dependencies, packaging, documentation, integration.
- Vision worker: vision.py, posture.py, tests/test_posture.py, tests/test_vision.py.
- Sensor worker: sensor.py, firmware/, tools/mock_sensor.py, tests/test_sensor.py, docs/HARDWARE.md.
- Data worker: storage.py, productivity.py, tests/test_storage.py, tests/test_productivity.py.
