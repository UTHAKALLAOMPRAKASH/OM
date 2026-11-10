# OM popup-only startup reminder — 25 October 2026

- Previous final OM 0.4.0 installer/build completed successfully; installation exited 0 without a Windows restart. Three installed copied-data restarts passed and production data matched the backup (`repair040final-installed-verification.json`). The later installed glass/live check was not executed because automatic approval review reached its usage limit; do not infer live acceptance from those restart checks.
- Current request: only the screenshot-style floating reminder, no Windows toast, scheduler or service. Removed the extra tray notification from lightweight reminder mode. Existing compact design and explicitly approved 10-second calibration retained. Updates/publishing remain deferred.
- 16 targeted reminder, entry-point and shortcut tests passed (`tests-popup-only.xml`), including popup-only startup, camera-free import, calibration handoff, dismissal and snooze. Initial restricted run had five temporary-directory setup errors; rerun with approved access passed.
- Startup-folder migration now completed: created and read back `OM Calibration Reminder.lnk`, targeting installed PostureGuard.exe with `--startup-reminder`. Backed up and removed only OM's matching legacy Run value to avoid duplicate execution. Evidence: `startup-040-migration.json`, `startup-popup-only-readback.json`. Unrelated Omni startup item preserved.
- Dismiss exits the standalone reminder process; normal-app Dismiss only closes its card. Snooze retains one idle timer/process for ten minutes (not zero RAM). Camera remains off until explicit calibration. Actual Windows sign-in and a ten-minute wall-clock snooze remain manual checks.
- Popup-only correction rebuilt and installed successfully (installer exit 0). Previous installer preserved in `backups/OM-0.4.0-before-popup-only-Setup.exe`. Current installer: `artifacts/OM-0.4.0-Setup.exe`, 204332127 bytes, SHA256 `d908826f7de91c564295da99058144968c037939b2010c27bd0a2c44cc702fa2`. Frozen source comparison matches the corrected reminder. Evidence: `build-040-release-result.json`, `installer-040-release-result.json`, `install-popup-only-040.log`.
- One focused installed smoke check PASS on a disposable database: executable hash matches the build; ten pages open; monitoring/camera OFF; clean shutdown. Production settings, calibration and all checked histories exactly match the integrity-checked pre-install backup. Evidence: `popup-only-installed-verification.json`, `popuponly040-install-backup.json`. No full-suite or live posture retest was needed for this reminder-only change. Real Windows sign-in remains unverified; no current approval blocker remains.

---

# OM 0.4.0 accepted rendering and final adjustments — 25 October 2026

- User explicitly accepted fully software-rendered check: “It stayed stable.” Prior partial fixes remain recorded as rejected, not silently relabelled PASS. The release now applies that process-local Qt/Chromium profile and disables the same CSS filter/transition/animation layers. Layout, colour scheme and working controls retained. Exact upstream driver/Qt defect unproven; short-session workaround accepted. Evidence: `render-040-full-software.json`, `docs/RENDERING_REPAIR.md`.
- Guided copied-data posture check PASS: upright70valid/70GOOD/0warnings; bending23valid/19warnings; return33valid/33GOOD/0warnings after settling. Calibration10seconds; production unchanged; worker released. `posture-accuracy-040.json`.294observations included READY Arduino onCOM4, with GOOD/TOO_CLOSE/TOO_FAR/UNAVAILABLE evaluated states. This verifies reception/integration, not ruler accuracy or a deliberate camera-absence trial.
- Latest user adjustment implemented: border reduced28→3logical pixels, one compact22pixel-high fault label; red travelling highlight stays within narrow edges. No full-screen surface. Reminder reduced420×240→420×176 with OM heading, short body, Dismiss / Remind in10m / Calibrate Now. Same card on ordinary app launch and Windows sign-in; no camera starts just from showing it. App-open Dismiss only closes card; startup-only Dismiss exits the lightweight process. Original opening splash removed.
- Actual native compact render inspected. All four edges3pixels; badge22pixels; reminder loaded no camera/model/application modules; Dismiss exited its event loop. `compact-ui-040.json`, `reminder-040-compact.png`. Actual WSH shortcut creation/readback/removal passed in disposable folder.
- Clean full suite before final compact adjustment:180passed+24subtests40.16s (`tests-040-final.log/xml`). Then15render-profile/dispatch/reminder checks passed;24compact/reminder/overlay/navigation checks passed;20presence/reminder action checks passed. No claim that these prove physical blink accuracy or long-session performance.
- Earlier two0.4.0 package attempts are superseded (the second stopped during payload collection). No concurrent build remained when inspected. Final hidden supervised build now records durable exit status in `build-040-release-result.json`; installer and installed checks remain pending. Healthy production backup preserved in `repair040-install-backup.json`.

Current: final package, installation and startup-folder migration. Remaining manual limits: ruler-measured HC-SR04 accuracy, deliberate blink accuracy, actual Windows sign-in, sustained monitoring and unsupported forward shoulder/spinal metrics.

---

# OM 0.4.0 repair in progress — 25 October 2026

- Confirmed previous 0.3.9 installer completed successfully (`install-039-final.log`), but flicker remained user-reported. No claim that the old overlay repairs solved it.
- Reviewed user's supplied four-second recording. Prior native camera-only check blinked with warnings disabled. New 90-second software-rendering A/B also rejected by user (“Still blinking”): camera READY, 820 preview updates, one successful page load, no renderer termination, worker released. Thus neither overlay removal nor software rendering alone is an accepted fix. No proven GPU-driver root-cause claim.
- New rendering candidate: preserve native last preview during stale gaps, visibly mark paused; clear on stop. Remove page opacity fades and large filtered backdrop layers; retain existing layout, card gradients, colours and controls. Avoid rebuilding hidden native reports on glass-page navigation. Dark WebEngine background and bounded renderer lifecycle diagnostics added. Ten-page source navigation passed; camera-OFF screenshot inspected. User visual acceptance of this latest candidate remains pending.
- Removed the opening logo splash as explicitly requested. No production data reset. Source checkpoint `backups/before-040-20261025-095121.zip`; production SQLite backup integrity OK in `artifacts/repair040-install-backup.json`.
- New requested warning policy supersedes earlier posture-only policy: head/shoulder/lateral torso plus fresh, camera-present Arduino TOO_CLOSE/TOO_FAR share red edges with fault names. Other notifications remain normal; visual camera proximity remains relative and separate. Four narrow edge windows, optional travelling red highlight, steady label, reduced-motion support; no full-screen overlay surface. Latest animated overlay visual acceptance remains unverified.
- Hardware diagnosed rather than guessed: COM4 USB VID2341/PID0043 detected after connection. Existing firmware sends “Standard: ... cm | Current: ... cm | ...” at9600, not OM's115200 handshake. Bounded probe confirmed exact format. Added strict legacy adapter after handshake timeout; no firmware upload. Live adapter got12 READY snapshots, last raw200cm, portCOM4. Uses Current distance only, ignores board's baseline/presence claim. Camera-presence and freshness gates remain authoritative. Raw serial reception PASS; measured centimetre accuracy and combined live alerts NOT YET VERIFIED.
- Exposed hardware health/port and blink control/status in existing cards. Blink algorithm remains experimental; no fabricated count or accuracy claim. Head-pitch, angle, blink, presence, range-gating focused tests passed.
- Lightweight StartupReminderWindow implemented;10-second text; early CLI dispatch; .lnk create/remove; camera stays off; calibrate opens existing app/preview; snooze uses one idle timer; dismiss exits. Actual Windows Script Host create/read/remove passed in disposable APPDATA folder. Native notification added. Real Startup folder migration, installed process checks and real Windows sign-in still pending. Windows controls notification ordering; first notification cannot be guaranteed, and sign-in differs from unlocking an existing session.
- Validation:31 initial targeted tests passed. Full run177 passed+24subtests with2 failures caused by obsolete posture-only expectations; those expectations updated for user's new distance-overlay requirement. Subsequent68 focused tests+8subtests passed;35 rendering/head/preview checks passed. Frontend build passed. Executable/installer rebuild and installed verification in progress. Earlier failing logs retained; not represented as a clean full-suite pass.

Current: finish candidate build/install verification, then confirm visual stability. Remaining physical limits: controlled upright/bend/recovery, deliberate blink count, Arduino ruler accuracy/presence-gated alerts, real Windows sign-in, sustained performance. Unsupported forward shoulder protraction/spinal curvature remain unavailable.

Earlier checkpoints below are historical.

---

Final integration correction: independent review caught a caller passing freshness as worker health, defeating the display hold. Caller now passes worker health separately. Integration regression uses the real freshness implementation: at age0.6s measurements UNKNOWN but border remains; at1.01s border clears. Calibration clears the border and suppresses relatching while collecting. 19 targeted tests passed3.45s; prior two test failures retained (a fake omitted freshness and an old assertion expected immediate hide instead of boundedhold). Final full suite/rebuild running after this correction. Reviewer found no remaining release-blocking code issue in this scope; live acceptance is still required.

# OM 0.3.9 final candidate — 24 October 2026

Independent review confirmed freshness crossing causes direct overlay hide/show: numeric states correctly become UNKNOWN after 0.5 seconds, but that should not repeatedly flash the display. Added a presentation-only hold for a confirmed warning, expiring at captured timestamp +1 second (duplicate polls cannot extend it). Fresh recovery, explicit absence, monitoring/overlay off, calibration and camera faults clear it. Numeric states, recording, screen-time and sensor freshness rules are unchanged.

Full suite PASS: 160 tests +24 subtests in 29.46 seconds (`tests-039-final.log/xml`). A full run was justified by the changed calibration policy and shared warning-display path. Final executable rebuilding; installed release still0.3.8. Four narrow strips replace the full-screen warning surface. User said the latest fourstrip check was not completed; visual acceptance and complete posture recovery remain NOT VERIFIED. Earlier repaint-only attempt was explicitly rejected by the user's observation. No false PASS claimed.

# OM 0.3.9 live repair follow-up — 24 October 2026

The user reported the repaint-only change still blinked. It is NOT accepted as a fix. Replaced the full-screen translucent overlay with four narrow, steady, input-transparent edge windows: no overlay surface covers the center. Actual render/geometry check passed (`red-overlay-check.json`); 15 affected integration/routing/overlay tests passed. Visual user acceptance is still pending. This latest overlay change is not yet in the candidate executable and requires a rebuild before installation.

10-second live calibration passed: 93 head-pitch samples, 9.703 seconds valid coverage, baseline -9.24 degrees, tolerance +/-16.59 degrees. Latest focused run: 42 upright GOOD/no warnings, 4 bend warnings; recovery did NOT pass (initial GOOD followed by stale/unavailable observations and later high pitch). No threshold changes made to disguise this. Numeric details retained; independent review requested. Production baseline remains unchanged. Previous 0.3.8 acceptance evidence preserved as `posture-accuracy-038.json`.

# OM 0.3.9 repair in progress — 24 October 2026

User reported whole-screen/whole-window blinking during the live check, unsure whether it coincides with red warnings. Prior numeric posture PASS does not prove visual stability. Confirmed unnecessary full-screen overlay repaint/geometry work: static alerts were updated every tick plus a 40 ms animation timer. Removed travelling white highlight and continuous repaint; unchanged alert calls now do no resize/update. Live visual acceptance remains pending; no proven GPU/driver root-cause claim.

Calibration now collects exactly 10 seconds, exposes seconds remaining, requires >=20 distinct reliable observations and >=8 seconds of valid adjacent coverage (no gaps over 0.5 seconds credited), and retains stability/drift checks. Insufficient view fails without overwriting the baseline. This explicitly replaces the earlier 80-sample/40-second policy to meet the requested duration at slower inference. Tolerance = bounded minimum regional allowance plus three robust measured-noise deviations; saved UI text shows baseline ± tolerance. Existing saved calibrations unchanged until the user recalibrates.

44 focused tests passed (`tests-039-focused.log`), covering calibration, tolerance, filtering, app integration, notification routing and no-repaint overlay stability. New build/install pending; installed 0.3.8 remains unchanged. Restorable source checkpoint in `backups/before-039-*.zip`. A frontend command run from the wrong directory failed to resolve index.html; corrected to the frontend directory, not a product defect.

# VERIFIED RELEASE — OM 0.3.8 installed, 24 October 2026

- PASS: final installer compiled after the stylesheet performance fix. Frozen executable inspected for the stylesheet guard and head-pitch filter; both bundled local AI models load. Installed executable hash equals the verified build and frontend assets match. Installer exited 0; no Windows restart.
- Installer: `artifacts/OM-0.3.8-Setup.exe`, 204,309,969 bytes (194.85 MiB), SHA256 FC28201DD32FBFF37FA75C229CC151E7D386954CD2B75D07AA32A4297E7AEAA4. Payload 808,246,214 bytes /3,240 files. Evidence: `repair038-release.json`, `038-frozen-source-check.json`, `install-038-final.log`.
- Reused final regression PASS: 153 tests +24 subtests in 44.38 seconds. No code changes after that run. Only the installer needed rebuilding on this resumption; the earlier installer predated the final stylesheet fix.
- PASS: installed application launched, ten desktop pages passed, three copied-data restarts shut down cleanly with camera off. Calibration/preferences/history preserved; only expected focus timer bookkeeping occurred in disposable copies. Production exactly matches the existing integrity-checked backup before installation and after the focused live check. No production setting or calibration changes in this release.
- PASS, short installed camera check: DirectShow/index 0, READY, 158 inference results, 185 native diagnostic preview updates, p95 frame age 47 ms, no camera faults, worker released, no saved images/video (`repair038-installed-live.json`). This installed diagnostic uses the native preview; previous embedded canvas stability was user-accepted and its implementation remains unchanged. No sustained FPS/long-session claim.
- PASS, focused user-paced live check on the same release source with copied data: upright 45/45 valid GOOD observations, zero warnings; looking down 11 warning/BAD observations out of 17 valid observations (20 total); return upright 26/26 GOOD, zero warnings after the two-second settling interval. User explicitly confirmed readiness and controlled phase buttons. `posture-accuracy-038.json`; all three acceptance flags true, worker released. This validates this controlled session, not universal or medical accuracy. The test calibration was NOT copied into production.
- Confirmed fixes: head-pitch spike filtering and sustained confirmation with unchanged angle thresholds; head-pitch history included in posture score; stored notification times displayed; slow-inference relative proximity calibration; avoid reapplying the global stylesheet when the theme is unchanged. Existing Liquid Glass design preserved.
- Remaining limitations only: physical HC-SR04 accuracy, actual Windows sign-in/reminder cycle, deliberate-blink accuracy and long-session stability remain NOT VERIFIED. Forward shoulder protraction and sagittal torso metrics remain NOT IMPLEMENTED; lateral measurements are separate and unavailable when landmarks are hidden. Camera proximity remains relative, not centimetres. Signed hosted auto-update delivery is not implemented.

Current section: release installation and focused posture acceptance complete. No release-blocking failure remains in the performed checks. Detailed requirement scope: `docs/FEATURE_AUDIT.md`. Prior entries below are historical.

# OM 0.3.8 verification in progress — 23 October 2026

Source checkpoint: `backups/verified-037-before-posture-20261023-192716.zip`. Production data unchanged in this follow-up. Installed version remains verified 0.3.7.

- Head pitch now uses a three-observation median and sustained confirmation, with unchanged angle thresholds. Focused regression passed; controlled upright/bend/recovery live acceptance remains NOT VERIFIED.
- Historical posture scores now include recorded head pitch, excluding distance. Glass notifications display stored timestamps.
- Slow-inference visual proximity calibration retains the same 15 reliable samples over up to 10 seconds. Camera estimates remain relative, never centimetres.
- Focused posture/lifecycle/routing: 55 tests passed. Proximity/sensor: 27 tests +8 subtests passed. Initial test temporary-directory permission errors were resolved with workspace test storage; failure log retained.
- Latest source desktop: all 10 pages passed, timestamp rendering and panel setting persistence passed. Screenshot inspected. Synthetic preview retained decoded pixels during gaps and cleared on stop; camera off.
- Additional demonstrated performance fix: diagnostic stack captured `apply_settings` reapplying QApplication stylesheet during an opacity-only change. Compare the actual current stylesheet and only repolish when it changes. Regression confirms unrelated settings do not restyle windows and a real theme change still does; 12 integration tests passed in 5.38 seconds. Two earlier full runs were interrupted for diagnosis; they are not counted as passes. Earlier 0.3.8 installer is superseded pending rebuild.
- Final full suite PASS: 153 tests +24 subtests in 44.38 seconds (`tests-038-final.log/xml`), after stylesheet guard. This is test-suite runtime, not camera FPS or long-session performance evidence. Final 0.3.8 package rebuilding. Complete evidence/physical limitations in `docs/FEATURE_AUDIT.md`. No physical validation claim from unit tests.

# VERIFIED RELEASE — OM 0.3.7 installed, 23 October 2026

## Completed and checked
- PASS: installed upgrade exited 0, no Windows restart (`install-037-final.log`). Final installer `artifacts/OM-0.3.7-Setup.exe`: 204,385,112 bytes (194.92 MiB); SHA256 B018F1A0E9EDC7B0D5F1DF36A905B3478DBD59FB901EE9112E118254E46A665A. Payload 808,589,280 bytes /3,241 files. `repair037-release.json`.
- PASS: latest full suite 145 tests +24 subtests in 509.55 seconds (`tests-037-final.log/xml`). Separate synthetic preview rendering test passed; packaged and installed desktop passed all 10 pages. Installed frontend bytes match final source assets. Actual installed screenshot inspected: `repair037-installed-desktop.png`.
- PASS: red perimeter now ONLY covers head/shoulder/lateral back posture warnings, per the latest user correction. Proximity and all other alerts use normal notification delivery, with existing deduplication, quiet hours and snooze. Actual overlay render verified red, transparent center and no input/focus interception; normal notification routing regression passed. Windows notification presentation itself depends on OS notification settings.
- PASS: Overview live orb replaced by local date, weekday and time. Steady violet, blue and rose glass accents; removed continuous background motion and card layout animation. Analysis and Progress have separate real-data content. Panel contrast improved; exposed native sliders show current values and persist through the bridge.
- PASS in short live check: persistent canvas preview retained frames through gaps and cleared on stop; user confirmed the latest picture stayed stable. No images/videos saved. See `canvas-live-preview.json` and `preview-buffer-check.json`; sustained performance remains unverified.
- PASS: installed camera connection DirectShow/index 0, READY, 54 inference results, 218 native diagnostic preview updates, no faults, worker released (`repair037-installed-live.json`). Installed live diagnostic uses the legacy native surface; the final embedded canvas surface was checked separately in source live tests and by installed byte equality/UI checks. Do not confuse those evidence types.
- PASS: three installed copied-data restarts preserved calibration, preferences and existing histories, and production compared unchanged to the post-selection backup (`repair037-installed-verification.json`). The ONLY intentional production change was the user-approved camera backend 0→1; original backup and exact-change audit retained. Camera never starts automatically.

## Remaining limits and smallest user action
- Live head-pitch calibration succeeded (94 samples) and user confirmed look-down response. It remains an experimental camera-relative angle, not a clinical or general accuracy claim. The successful test calibration was deliberately NOT copied into production. Smallest action: in the installed app choose **Calibrate with preview** once while sitting comfortably, to create your own current head-pitch baseline.
- Back/torso landmarks were not visible in the guided check; no torso calibration or forward-back/shoulder-protraction accuracy claimed. Lateral posture signals remain separate. Forward shoulder protraction and sagittal torso metrics are NOT IMPLEMENTED.
- Physical HC-SR04 accuracy, a real Windows sign-in reminder/snooze cycle, long-session stability and blink accuracy remain NOT VERIFIED. Existing Windows Run entry was read and includes `--startup`; exact manual acceptance steps are in `docs/REPAIR_VERIFICATION.md`.
- Signed hosted auto-updates and completion-based study/eye-adherence streaks remain NOT IMPLEMENTED. Unsupported features are not filled with invented values.

Current section: 0.3.7 repair installed and verified. Next validation: normal-user calibration, sustained use, and physical hardware/sign-in acceptance—not another project restart. Earlier checkpoint entries below are historical and may describe superseded warning routing or pending builds.

# Preview accepted; final installation pending — 23 October 2026

User confirmed the new canvas preview stayed stable. `canvas-live-preview.json`: 17.4 capture FPS, 2.5 inference FPS, 371 browser image loads /24.812 seconds (~14.95 FPS), p95 age 47 ms. Twelve visible-preview checks passed after opening; five initial checks occurred before readiness. No images/video saved; worker released. This is a short-run acceptance, not a long-session or 60 FPS guarantee.

Final suite PASS: 145 tests +24 subtests, 509.55 seconds (`tests-037-final.log/xml`). Synthetic preview test and packaged ten-page UI check also passed separately.

User approved using the verified camera connection. A guarded transaction changed ONLY `setting:camera_backend` from 0 (Media Foundation) to 1 (DirectShow); index remains 0. All other config rows, calibration and all history tables compared unchanged (`repair037-camera-selection.json`). Original backup `before-repair037-install-20261023-120024.sqlite3` retained; post-selection integrity-checked installation baseline `before-repair037-install-20261023-120357.sqlite3`. This explicit one-setting change supersedes previous claims that the backend remained untouched. Installer compression still running; installed 0.3.6 not yet upgraded.

# Final repair candidate verification — 23 October 2026

- Latest policy implemented: red overlay only for head pitch, lateral head tilt, shoulder tilt and lateral torso/back lean. All other alerts use normal notifications; proximity remains presence-gated and deduplicated. Date, weekday and time replace Overview's live orb. Steady violet/blue/rose Liquid Glass accents added; continuous background motion and card layout tweening removed.
- Live calibration PASS for observable head/shoulder regions: 94 samples, 9.457-second coverage; head-pitch profile saved only in the disposable copy. Torso unavailable (0 samples). `pitch-final-guided.json`: 14.95 capture FPS, 4.8 inference FPS, 680 browser loads /45.753 seconds (~14.86 FPS), p95 frame age 47 ms. User reported looking down worked, but preview was still flashing. This does not establish general posture accuracy.
- Subsequent preview repair: decode into a hidden image and draw to a persistent canvas only after a complete frame loads. No clearing between frames; explicit stop clears backing pixels. Synthetic desktop regression PASS (`preview-buffer-check.json`): real decoded pixels drawn, retained during an empty-frame signal, cleared and hidden on stop; camera never opened. Live stability after this change remains NOT VERIFIED until rechecked.
- Camera startup: two earlier bounded attempts timed out during dependency import; isolated import measured 2.594 seconds, and subsequent live opening succeeded. Root cause of intermittency is not proven. Startup supervision now allows a bounded 30-second initialization grace, retaining 15-second live-stall timeout and stage-specific errors; regression added.
- Final executable build PASS (`build-037-final.log`), bundled local models loaded. Final canvas frontend rebuilt separately and copied into the existing external web-assets directory; byte-for-byte comparison PASS (`037-package-assets.json`). Payload 808,589,280 bytes /3,241 files. Packaged desktop check PASS all 10 pages (`037-packaged-desktop.json`). No production data modified. Installer and final full suite still running.
- Color contrast spot-checks on the elevated surface: 5.59:1–11.65:1 for tested text colors (`glass-palette-contrast.json`); not a full accessibility audit.

# Latest user correction — 23 October 2026

This entry supersedes earlier all-warning-overlay routing: ONLY head/shoulder/back posture warnings belong on the red perimeter. Other alerts, including proximity, return to normal notifications. Implementation and regression tests updated accordingly. Overview live orb replaced with local date, weekday and time. Removed repeated card layout animation and continuous background glow motion for stability; added steady violet/blue/rose glass accents while preserving text contrast. These changes require a fresh build after the earlier 0.3.7 candidate; that candidate is NOT installed.

Previous full suite PASS: 144 tests +24 subtests in 541.94 seconds, but this predates the latest routing correction. Final focused/full checks will reflect the correction. Source UI check additionally passed panel-setting save/restore in a disposable database and advanced-controls opening. Isolated live retry in progress after packaging finished.

# OM 0.3.7 repair — latest checkpoint, 23 October 2026

Current section: regression/build and live verification. Continuing the existing application; production data is unchanged by these source and disposable-data checks.

- Baseline PASS: 140 tests +24 subtests in 407.87 seconds (`tests-warning-baseline.log/xml`).
- Focused warning/startup/integration PASS: 14 tests in 13.97 seconds (`tests-warning-final-focused.log`). Calibration/head-pitch/insight core PASS: 33 tests (`tests-repair-core.log`). Final full suite remains running.
- Actual red-overlay render PASS (`red-overlay-check.json`, `red-overlay-only.png`): edge RGBA 243/109/124/255, center alpha 0, click-through and non-focus flags. No desktop/camera capture. Added soft red perimeter glow; warnings/reminders routed without native popups subject to notification policy. Fatal database recovery dialogs retained.
- Source desktop PASS: all ten pages, bridge connected, no horizontal overflow (`glass-desktop-check.json`). Analysis and Progress now distinct; expanded panel darker. Latest slider-value refinement is included in the ongoing build and needs final packaged UI verification.
- Preview gap no longer removes the image: paused label keeps last image visibly stale. Hidden native forms skip refresh. Calibration no longer fails early solely because observations briefly disappear; quality thresholds and saved-baseline preservation remain intact.
- Live retry NOT VERIFIED: `pitch-warning-repair.json` recorded no frames. Worker timed out during dependency import while packaging was active; 0 preview updates, worker released. This is a startup-stage failure, not detection evidence. Retry after build completes; do not mark head bending validated.
- Build 0.3.7 running in `build-warning-repair.log`. Installed version remains 0.3.6 until an installer and installed-copy checks pass. No new release claim yet.
- Feature audit and exact hardware/sign-in acceptance steps: `docs/REPAIR_VERIFICATION.md`. Unsupported sagittal shoulder/torso measurements, blink accuracy, signed hosted updates, and physical sensor accuracy are not represented as completed features.

Warning-routing regression result: 13 tests PASSED in 13.78 seconds. Covers notification-to-overlay routing, no native warning popup, expiry, snooze/resolution, red posture priority, stale posture clearing, and reminders with monitoring off. Initial stale-posture test also saw the separate calibration reminder; test now explicitly isolates that source and separately verifies reminder delivery. Full baseline/UI build still running; no installed-release claim.

# Performance/warning repair — 23 October 2026 (in progress)

New brief read; actual architecture is Python/Qt WebEngine + local React/QWebChannel, not FastAPI. Existing design and data retained. Restorable source checkpoint: backups/before-warning-repair-*.zip. Baseline suite running in tests-warning-baseline.log/xml.

- PARTIAL: warning routing. Camera/sensor faults, calibration failures, break reminders, limit warnings and explicitly WARNING/ERROR/CRITICAL notifications now use the red-overlay channel instead of native popups, subject to existing notification/quiet/snooze preferences. Ten-second notice expiry, deduplication, and resolution clearing; active posture/proximity takes precedence. Relevant setting can still disable the overlay. Routing tests: tests-warning-routing.log.
- PARTIAL: preview blank flashes. Code explicitly removed/hidden the preview on a missing frame. It now retains the last image with an explicit paused label; stopping monitoring clears it. This does not reuse stale frames as valid measurements. Live flicker validation still NOT VERIFIED.
- Removed “Private by design” from React UI. Overlay timer no longer restarts every telemetry tick.
- NOT VERIFIED: current source build/installed behaviour; installed 0.3.6 is unchanged in this stage. Calibration reliability remains FAIL from the prior live check. Analysis/Progress differentiation, missing-feature audit and supported threshold/panel refinements remain pending, not completed by warning tests.

# Installed verification — 23 October 2026

OM 0.3.6 installed successfully; no reboot required (install-completion.log). Three installed copied-data restarts passed and production compared unchanged to fresh backup (completion-installed-verification.json). Installed embedded desktop UI passed all ten pages (completion-installed-desktop.json). Installer 204,357,946 bytes (~194.89 MiB), SHA256 9994364BADDE5A056A7475DD5D9DD3E03E1D71AC49CC6F01D7ADD2EA1C6A1E19. Full suite previously passed 140 tests +24 subtests.

Lighted live check DID NOT validate head bending: camera READY, presence/preview available, capture 8.99 FPS, inference 3.16 FPS, 165 preview updates, p95 age 47 ms. Calibration still failed safely; saved baseline unchanged. Evidence pitch-lighted-check.json. The adaptive calibration path can still end on a gap in reliable observations after ten seconds, and actual head-pitch sample quality/coverage needs further investigation; no accuracy claim. No images/videos saved; worker released. Installed settings remain preserved, including the user's camera backend; DirectShow/index 0 is the verified copied-data connection, not silently applied to production.

Current section: installed UI/overlay/calibration-navigation release verified; calibration reliability remains unresolved. Next: diagnose missing/fresh sample rejection and forward-pitch coverage, then validate a successful head baseline and warning before marking completion. Physical Arduino and Windows sign-in remain unverified. This is NOT a claim that the whole app is finished.

Packaged renderer verification PASSED: completion-packaged-desktop.json, 10 pages, bridge connected, no horizontal overflow, camera off. Actual packaged screenshot inspected: completion-packaged-desktop.png. Final build assets matched byte-for-byte and bundled models loaded. Payload: 808,228,950 bytes /3,238 files (~770.79 MiB). Installer compression and installed-copy checks remain pending.

Remaining manual checks (not requested tonight): in adequate lighting choose camera index 0 / DirectShow, start monitoring, hold comfortable posture until calibration completes (up to 40 seconds), then separately check forward pitch and lateral tilt with red border and recovery. Confirm leaving view pauses screen-time and Arduino evaluation. Physical HC-SR04 and a real Windows sign-in/reminder/snooze cycle remain unverified. No clinical/accuracy or sustained 30/60 FPS claim.

Final automated suite PASSED: 140 tests +24 subtests in 655.60 seconds (artifacts/tests-completion.log/xml). This covers the adaptive calibration change; real low-light accuracy is not inferred. Final guarded build/package checks remain in progress below.

# Completion verification in progress — 23 October 2026

User requested automated checks because the room is dark; no further guided/live camera accuracy test will be requested in this run. The already-started capture-only benchmark completed and released the camera: 9.96 FPS with no AI, ~11.2% of one CPU core (capture-only-performance.json). Thus the approximately 10 FPS preview tracks the observed source rate in these conditions; no claim that 30/60 FPS is achieved or that darkness alone is proven causal.

Production backup verified healthy: backups/before-completion-install-20261023-001610.sqlite3. Current full-suite run: tests-completion.log/xml. Current build: build-completion.log. Neither the current build nor installation is claimed complete until checked. Previous resume build did complete; current adaptive-calibration changes require this new build. Real head-bending accuracy and physical Arduino remain unverified.

# Calibration correction — 23 October 2026

Fresh package build completed and byte-for-byte frontend checks passed (build-glass-resume.log), before this calibration correction. New correction: allow up to 40 seconds to obtain the SAME 80 samples, 8-second coverage and stability checks, rather than inevitably failing slower inference at 10 seconds. Bounded failure still preserves the baseline. 24 focused calibration/head-pitch tests passed (tests-adaptive-calibration.log). Guided check now waits for an actual saved head-pitch baseline before prompting movement. Live validation and a rebuilt package containing this change remain pending.

# Verified resume evidence — 23 October 2026

- Full suite: 138 tests +24 subtests passed in 459.14 seconds (tests-glass-final.log/xml). Later focused camera diagnostics: 24 passed. These do not establish real head-bending accuracy.
- Preview was capped by the 200ms dashboard update. It now has a separate latest-frame path on the existing 33ms preview timer, with no second camera owner. Live DirectShow run: 468 browser image loads /47.329 seconds (~9.89 FPS), capture 9.31 FPS, inference 3.38 FPS, p95 frame age 47ms. Normal-camera smoothness is NOT achieved. Numerical evidence: pitch-fast-preview-guided.json.
- Guided calibration failed safely, retaining the copied baseline. Head pitch changed while looking down, but no head-pitch warning was validated because calibration did not succeed. The 80-sample/8-second calibration criteria were NOT weakened to force a pass.
- Media Foundation index 0 specifically timed out inside device open; no Windows error code was supplied. DirectShow index 0 opened and displayed frames and confirmed presence in a copied configuration. Production camera selection remains unchanged.
- Earlier package build emitted a missing frontend asset warning after a concurrent frontend rebuild. That payload is not a releasable artifact. Packaging now checks every bundled frontend file byte-for-byte. A fresh build is required; installed 0.3.5 is still the last verified installation.
- Latest camera-off desktop rerun passed all 10 pages after preview decoupling (glass-desktop-check.json; glass-resume-desktop.log). Fresh package build is running in build-glass-resume.log; completion is not yet verified.
- Current section: desktop integration/performance verification. Remaining: smooth camera capture/inference, reliable head-pitch calibration and warning, final package/installed tests. No production database, calibration or history reset.

# OM desktop continuation — 22 October 2026

Current section: 0.3.6 local desktop interface and posture-warning correction, under verification. Installed 0.3.5 remains the last verified release. This is an installed Windows application with a bundled React surface inside Qt WebEngine, not a website, hosted service or separate browser app. Existing Python camera/Arduino/storage owners are retained.

- Root cause of missing posture overlay: app._tick passed an empty regional-state dictionary to select_alert. Fresh regional states now reach the overlay. WARNING/BAD posture and confirmed too-close request red only; stale posture and monitoring-off suppress alerts.
- Home/Panel calibration routes to the Posture camera preview before readiness checks. Existing baseline is retained on failed calibration; partial successful calibration merges only verified regions.
- Added experimental camera-relative head pitch using the existing face model's rigid transform. It is separate from lateral tilt; turned-away, non-rigid and missing observations return unavailable. This is NOT validated cervical flexion, forward translation or shoulder protraction.
- 25 focused posture/controller tests passed. 9 integration tests passed, including red-overlay routing, stale suppression and calibration-preview navigation. No physical-device correctness is implied.
- Bundled desktop UI build passed after pinning compatible motion-dom/motion-utils versions. Original dependency selection produced an actual missing-export build failure; resolved in pnpm-workspace.yaml and lockfile.
- Camera-off source desktop check passed all 10 page headings, local service bridge, and horizontal-overflow checks. Actual desktop screenshots inspected; dark scrollbars and tighter navigation corrected. Advanced data-management forms remain native within OM; migration is incremental, not a complete replacement of every form.
- Full suite and standalone build are in progress. A first live pitch launcher failed Windows multiprocessing bootstrap; that run is invalid for accuracy. Corrected guarded launcher is being retested on a disposable SQLite copy. No camera images/video are saved. Production data has not been modified by this stage.
- Native --smoke-test and --live-camera-test still explicitly test the legacy surface; new --desktop-check tests the embedded desktop surface and requires a disposable data directory. Do not confuse these evidence types.

# Flowdo-inspired OM design — 22 October 2026

## Final verified outcome: OM 0.3.5 installed
- Installer compiled successfully and in-place installation exited 0, no restart required (installer-flow-design.log, install-flow-design.log). Installer: 81,956,046 bytes (~78.16 MiB), SHA256 2BC3A14D9AFA9D745B4CCF15275661A9BDBEE23DE8A47BEA89A68F024A57EDC8; artifacts/flow-release.json.
- Full suite passed: 125 tests +24 subtests. Final clipping correction additionally passed the native motion/render probe; final build and installed bundled-model checks passed without opening the camera.
- Installed three-restart copied-data check PASSED (flow-installed-verification.json): preferences/calibration and existing history preserved, 10 pages, panel/main restore controls, timer, camera-off startup and clean shutdown verified. Production compared exactly unchanged to its pre-install backup.
- Initial strict copied-settings audit failed solely because smoke testing deliberately runs a focus timer and decreases setting:work_reminder_remaining. Initial report/log retained with -initial suffix. The revised audit explicitly bounds that countdown decrease by elapsed test time and allows no other existing-setting changes. Intentional focus-test records exist only in disposable copies. No application behaviour was weakened to make the audit pass.
- Actual installed Home screenshot inspected (flow-installed-smoke-1-overview.png); dark/light and minimum-size source renders inspected separately. No camera images/videos saved.
- This delivers a native interpretation of the supplied written design, not every web-template mechanism. Calendar month-slide animation, portalled sticky toolbar, film grain and Flowdo task/integration features were not added. Broader forward-posture, physical Arduino, in-view presence accuracy and actual sign-in tests remain unverified. Next product work is those outstanding functional validations and further navigation refinement; no claim of overall project completion.

Current section: implementing and verifying OM 0.3.5 using the user's supplied Base44 design explanation. Existing native project, storage identifiers, camera owner and sensor rules retained. The attachment is a written design reference, not original source or screenshots; no pixel-clone claim.

Implemented: soft drifting colour-cloud date hero; cursor-sensitive heading weight with fixed character positions; staggered letter-swap monitoring button; neutral surfaces/emerald accents in light and dark; calendar rail linked to the selected Analysis day; responsive rail stacking; existing scroll-linked story cards now disable covered controls; shorter Focus page with advanced presence options disclosed on demand. Camera stays off until explicitly started. No invented tasks, activity dots or measurements. Native adaptation boundaries: docs/FLOW_DESIGN_ADAPTATION.md.

Source backup: backups/before-flow-design-20261022-125812.zip. User closed installed OM before upgrade preparation. Fresh production database backup: backups/before-flow-install-20261022-130907.sqlite3; source and backup integrity OK. No database or calibration reset.

Actual Qt camera-off renders captured in artifacts/flow-design-renders, normal and minimum window size, dark/light. Reviewed Home and Focus. Fixed the calendar's default blue header and a letter-swap clipping defect found at the animation midpoint. Final native motion probe passes camera-off, visible animation, and scroll/hidden/reduced-motion stop checks (flow-motion-check.json, flow-motion-check-final.log). This is not a sustained frame-rate or live-camera benchmark. Full suite, final build and installation outcomes follow when complete.

--- Previous installed design checkpoint ---

Verification follow-up: full suite PASSED, 125 tests +24 subtests in 458.64s (artifacts/tests-flow-design.xml/log). The final letter-swap clipping adjustment was separately exercised by the camera-off native motion probe after the full suite started. Final rebuild succeeded (build-flow-design-final.log), both bundled models loaded and both Windows camera backends present without camera access (flow-packaged-capabilities.json). Payload: 312,215,554 bytes /421 files. Installer and installed restart outcomes pending below.

# Design continuation — 22 October 2026

## Latest verified outcome — installed 0.3.4
- Isolated final build succeeded: artifacts/design-final-dist/PostureGuard; log artifacts/build-plugin-isolated.log. Both bundled models loaded, no camera accessed (design-final-capabilities.json). Use this output for this release: the earlier dist output was partially cleaned by the failed locked-file build and is not the verified release payload.
- Installer succeeded, then installed in place with exit 0 and no Windows restart (installer-plugin-design.log, install-plugin-design.log). Existing installation identifiers retained. User closed the review app before upgrade.
- Installer artifacts/OM-0.3.4-Setup.exe: 81,937,071 bytes (~78.14 MiB), SHA256 D1EA767FABBBF747962FA3761DDC720160601105F76453728A2ACDF582FAE4C9. Payload 312,203,097 bytes /420 files (~297.74 MiB), design-final-size.json.
- Installed app passed THREE disposable-copy restarts: all existing settings/calibration and history preserved, integrity OK, camera OFF, clean shutdown. Only intentional smoke-test focus rows were added to the disposable copy. Production database compared exactly unchanged against backup (design-installed-verification.json).
- Installed pose and face model checks passed without camera access (design-installed-capabilities.json). This is initialization evidence, not live accuracy validation.
- Full card-stage suite: 122 tests +24 subtests passed. After cosmetic corrections: 31 focused UI/presence tests passed. Actual native source renders reviewed in dark/light and minimum-size layouts; live packaged Focus screen inspected. No camera imagery saved.
- Current section: installed design increment verified. Next: reduce long Focus/settings forms and group navigation, then separately validate in-view presence, forward-posture detection, physical Arduino and real sign-in reminders. Those are NOT completed by these software tests. Smallest user action: review the updated app; no calibration reset or ruler measurement is required.

## Plugin-assisted visual review
Applied the explicitly requested Product Design screenshot audit and UI UX Designer layout guidance to the existing native OM app. Reviewed the actual packaged Focus screen with disposable data/camera off, then refreshed all native page/theme renders. Detailed scope and remaining findings: docs/PLUGIN_DESIGN_REVIEW.md. No new project, hosted site or fake data was created.

Analysis/Progress card stage full suite PASSED: 122 tests +24 subtests in 326.07s (artifacts/tests-design-cards.log/xml). Follow-up visual corrections: circular panel swatches use standard buttons without animated inset distortion; handle preview reflects opacity; vertical scrollbars follow the theme; horizontal navigation scrolling disabled; panel page title is OM Panel. Post-correction focused tests and final build/install are in progress, not yet claimed passed.

Pre-install production backup verified OK: backups/before-design-install-20261022-070407.sqlite3. Production not edited during design review. Installed checks will use disposable copies so smoke-test focus sessions never enter real history.

Post-correction UI/presence tests PASSED: 31 tests in 278.41s (artifacts/tests-plugin-design.log). The first rebuild failed with WinError 5 on dist/PostureGuard/_internal/PySide6/plugins/platforms/qwindows.dll; elevated process inspection confirmed the disposable review app PID 20204 still held that payload open. No forced termination or production edits. Native automation could not safely exit after its user-input/minimized-window guard, so the user was asked to exit normally. A separate build output under artifacts/design-final-dist is being produced; packaging/PostureGuard-design-staging.iss changes only the package input path for this build. Installed version remains unchanged until explicitly recorded below.

Current work: replace dense report presentation with native Analysis cards and Progress calendar/milestone cards; tighten Privacy layout. Existing camera/Arduino behaviour is unchanged. Production database has not been opened by this design stage yet.

Corrected progress eligibility: use the UNION of calibrated posture intervals intersected with confirmed presence. Multiple body regions cannot triple-count time. A steady day requires 30 minutes of that combined evidence and >=85% good regional posture time. Posture Pioneer now uses actual combined hours within the displayed 30-day window. New regression tests cover overlapping regions, absence, and a misleading one-second-good sample during an hour of presence. This is a consistency feature, not a medical assessment.

Native renders refreshed for all pages/themes and minimum-size Analysis/Progress. Reviewed dark Analysis, light Progress and 720x480 Analysis: labels wrap and remain readable. No fabricated usage values or camera images were produced. Full-suite/build/install results will be recorded below when complete. Remaining forward-posture, study/completion milestones and physical/sign-in validation are still not finished.

--- Previous verified work ---

# OM resume checkpoint — 22 October 2026

Current section: camera fix verified; UI/data continuation implemented and release-copy checks underway. Existing project and identifiers retained. This is NOT a finished master redesign.

## Camera root cause and verified correction
- Production configuration selected index 9 with Media Foundation; the previous live check reported device-open failure and no frames. Copied-database test of index 0 with the SAME backend succeeded: READY, 149 received inference results, 494 captured frames, 185 actual preview paints, no faults, worker released. Evidence: artifacts/resume-index0-live.json. Capture ~23.82 FPS; last-ten-second preview ~11.02 FPS; p95 frame age 47 ms. No claim of lag-free performance.
- User confirmed they were NOT in view during that check. Observed presence time remained zero, consistent with that observation. In-view presence and controlled departure/return accuracy remain unverified.
- After this successful test, only setting:camera_index was changed from 9 to 0 in production. Fresh backup: backups/before-camera-selection-20261022-011307.sqlite3. All other config values, calibration and every history row compared unchanged (artifacts/resume-camera-selection.json). No fresh database/recovery replacement/reset.

## Final camera/Arduino contract
Camera presence, relative visual proximity, Arduino status and posture are separate signals. Arduino evaluation now requires BOTH fresh positive camera evidence and a fresh sensor timestamp; camera-off hardware-only evaluation was removed per the final clarification. Missing/stale presence suppresses sensor status and alerts. Visual and Arduino statuses use separate new history region names; old mixed distance rows remain untouched. Either confirmed too-close signal can request the red perimeter, without posture popups. No camera centimetres. Physical Arduino verification pending.

## Implemented UI/data continuation
- Ten pages, merged Breaks & Eye Care, dedicated Focus/Analysis/Progress/Notifications/Data & Privacy/Edge Panel destinations. Full grouped navigation styling remains to finish.
- Date-clipped union/intersection analysis separates presence, device activity, overlap and focus time; CSV summary export. Thirty-day real-data heatmap and an explicit consistency streak. No synthetic history. Several requested achievements still lack completion/study/session evidence and remain unavailable; full achievement tracking is NOT complete.
- Persistent notification Done/Snooze 5/10/15 state, severity/status filters, backup-before-delete for selected/all notifications. Relevant eye/movement snooze also updates the work-time scheduler. Scope-safe storage deletion tested only on disposable databases.
- Retention 30/60 legacy/90/180 days, backup before shortening; actual DB path displayed. Existing settings/calibration retained. Dedicated handle controls include colour swatches, length/width, opacity, position/lock, preview and reset. Custom colour, full theme-following and additional privacy modes remain unfinished.
- Five actual motion mechanisms: layered scroll parallax, one-time description reveal, reversible scroll rotation, smoothed pointer tracking/reset, progressive card stacking. Reduced motion restores static readable layout and timers/animations stop when hidden. Motion tests passed; subjective premium-design acceptance remains open.

## Posture and startup truth
Forward head bending and shoulder protraction are NOT implemented/validated. Investigation proves lateral image-plane formulas cannot detect pure forward movement; no depth guess or animation was substituted. docs/RESUME_VERIFICATION_LIMITS.md records landmark/API findings and separate forward-pose validation requirements.
Windows Run entry points to the existing executable with --startup; target exists (artifacts/resume-startup-registry.json). Automated opt-in/duplicate/action/simulated-snooze tests pass. Real sign-in and ten actual minutes of snooze are UNVERIFIED; exact manual steps are in docs/RESUME_VERIFICATION_LIMITS.md.

## Verification
- Source backup before changes: backups/before-resume-20261022-011210.zip.
- Full suite: 118 tests +24 subtests passed, 189.77 seconds (artifacts/tests-resume-full.xml). Two UI tests were added after collection; final focused UI run passes all 11 (tests-resume-interactions.log), including notification actions and motion restoration. Focused sensor/startup/UI run: 21 tests +8 subtests passed (tests-resume-focused.log). Pure analysis/retention/proximity tests: 14 passed.
- Actual native camera-OFF renders captured for all ten pages in both themes, plus minimum-size handle settings and panel views: artifacts/resume-renders/. Reviewed Analysis, Progress, Notifications, Data & Privacy and Edge Panel; empty-state/dense-report polish remains outstanding.
- Rebuild succeeded (artifacts/build-resume.log). Bundled pose and face models loaded; both Windows backends compiled. Payload 312,197,161 bytes /419 files (~297.73 MiB). Packaged-copy smoke with disposable DB passed: ten pages, camera OFF, timer, collapse/expand, main restoration, clean shutdown (artifacts/resume-package-check.json). Installed executable has NOT been upgraded by this resume stage. Packaged live and installer results follow when available.

Next: verify packaged live result, preserve release artifacts, then address forward-pose validation and the remaining achievement/UI/privacy requirements. Smallest user action for accuracy acceptance: a controlled in-view/leave/return session, followed separately by physical Arduino and real sign-in tests. No ruler needed for camera proximity.

### Packaged verification follow-up
Packaged visible live check passed camera acquisition at index 0: 217 captured frames, 63 GUI-received inference results, 47 distinct actual preview paints, last-ten-second preview ~10.67 FPS, no faults and worker released (artifacts/resume-package-visible-live.json). This was a short run while other verification tasks ran; it is not a sustained performance benchmark. A prior hidden-window run had zero actual paints despite receiving frame updates; it was explicitly not accepted as visible-preview evidence. No images/video saved.

The first copied-database restart audit expected byte-for-byte identical history and failed because each smoke run deliberately starts the focus timer. Inspection found zero deleted/changed original rows in every table and three new focus rows only. Original evidence retained as resume-copy-persistence.json. The corrected audit checks all original rows unchanged and allows only these intentional new focus rows, with per-table addition counts. Production was not used by either test.

Final stage artifacts: installer build succeeded (installer-resume.log): 81,924,586 bytes / 78.13 MiB; SHA256 f104024395b8868ac6d78540b72f30ae7182d82f835fbb7bca7456d758d6e78d. Release metadata: artifacts/resume-release.json. Corrected three-restart copied-DB audit PASSED with all original settings/calibration/history unchanged and only expected focus-test additions (artifacts/resume-copy-persistence-verified.json). Installer is staged, not installed over the existing application. The full master project remains unfinished for the reasons listed above.

--- Prior checkpoints ---

# OM master redesign — verified stage 1, 2026-10-21

Current section: corrected camera/Arduino semantics, Home simplification and handle controls. This is an incremental continuation, not completion of the master redesign. Source is 0.3.4; installed checkpoint remains 0.3.3 until the installation evidence below says otherwise.

Latest user clarification supersedes the older camera-centimetre plan below. Camera now classifies relative closeness against a comfortable-position baseline; it does not report centimetres. Arduino remains the measured-distance source. Combined sensor evaluation requires fresh positive person evidence; camera failure does not silently switch to hardware-only. Explicit camera-off hardware mode is labelled presence unverified. Relative calibration uses a separate configuration key; old calibration and settings are preserved. Hysteresis, sustained hold, stale/quality guards and failed-recapture preservation are covered by synthetic tests. Physical proximity accuracy remains unverified.

Changes: Home is now a short product introduction with local native artwork and compact actions. Preview moved to Posture; diagnostic live checks select that page. Artwork uses scroll parallax, reversible scroll rotation and smoothed pointer movement; reduced motion disables movement and hidden widgets stop timers. One-time text reveal and stacking-card motion are still pending. Handle thickness is independently adjustable and persistent; no panel logo. Visual inspection caught and fixed an overly broad transparent-background rule that hid the primary button fill.

Safety: source backup backups/before-master-redesign-20261021-200327.zip predates edits. Fresh production database read-only check and backup: artifacts/master-stage1-database.json. Original and backup integrity both OK; 32 settings and existing calibration present; 1,020 intervals, 724 presence records, 85 events, 2 focus records, 24 sessions and 0 usage records. No WAL/SHM/journal sidecars at check; ~97 GB available. No original database edits or recovery replacements in this stage.

Verification: baseline 107 tests +24 subtests passed. Updated full suite 111 tests +24 subtests passed (artifacts/tests-master-stage1-final.xml), plus 9 focused UI/story tests (artifacts/tests-story-final.log), which include the newly added preview-page and hidden/reduced-motion regression. An earlier run without the workspace TEMP setting hit sandbox temporary-directory permissions; that run is not counted as passing. Source camera-OFF smoke and renders passed, including main/panel restoration, timer, clean shutdown and dark/light renders (master-stage1-ui-final.json and PNGs). Reviewed Home and expanded panel. No camera images saved. Build/install/live checks are recorded when complete below.

Higgsfield: user chose both logo animation and Home artwork. Image request was rejected by provider (Basic plan or higher required); no generation job or downloadable asset. No subscription change or project creation. Native local illustration avoids blocking existing app work. Existing short logo animation remains; no generated video claimed.

Next section: ten-page grouped navigation; merged eye/break tools; genuine analysis/progress data; actionable persisted notifications; privacy/retention improvements; richer handle palette/live preview and remaining two Home motion techniques. Forward flexion/spinal curvature, physical Arduino accuracy, actual Windows-logon reminder delivery and blind presence/blink validation remain unverified. Do not label the app complete or bug-free. No ruler measurement needed for the camera.

--- Historical checkpoints (superseded where noted above) ---

# OM 0.3.4 — reference-guided redesign and camera distance, in progress

Current section: integration and regression verification. Existing installed checkpoint is 0.3.3. No data reset or architecture replacement. Backups before edits: backups/before-om-034-20261019-110620.zip and before-om-034-20261019-110649.sqlite3 (integrity OK).

Implemented in source:
- User's second image guides violet/cyan gradients, layered rounded surfaces, navigation rail, short hover lift and reduced-motion behavior. References 3–5 guide a logo-free 18px edge handle, vertical drag, locking, left/right docking, color swatches, translucency and length controls inside Settings. No desktop sampling or camera imagery saved. Quick controls retain monitoring, meeting pause, recalibration and focus actions. About removed; version/privacy/update limitations moved to Settings.
- Camera-only approximate distance uses quality-gated eye landmarks already produced by the single pose pipeline. Known-distance reference captures a stable ~3-second sample; no anthropometric average or fabricated FOV. Same camera/backend/format required. Median and exponential smoothing, hysteresis, stale/yaw/roll/occlusion guards; display rounds to 5 cm. Calibration and measured validation are numeric config additions. Arduino retained as optional collapsed compatibility controls. Overlay uses camera-distance state; posture stays in-app.
- Posture desktop alerts blocked at notification policy and removed from tick delivery. Error episodes notify once until resolved. Eye/walking schedules advance only through observed presence, or explicit focus time when camera monitoring is off; no uptime credit. Settings saves do not reset unchanged timers. Meeting pause and 20-second eye break pause work credit. Remaining work deadlines persist on clean exit. A real 20-second break countdown resets the eye deadline on completion.

Verification so far: first full suite 98 passed +24 subtests, 3 failures were obsolete ball/About expectations and were corrected. New targeted suite 23 passed. Camera-off source smoke: 9 pages, shared panel restoration and clean shutdown passed; screenshots reviewed. Final full suite/build/installed checks pending. Physical distance accuracy at 40/60/80/100 cm NOT verified. User agreed to measure with a ruler/tape; no measured values received yet. Screen presence and blink limitations from 0.3.3 remain.

Next: finish regression checks, build/install in place, measure live performance and perform user-assisted distance reference/validation. No claims of absolute centimetre accuracy or zero bugs.

--- Previous verified checkpoint ---

# OM 0.3.3 redesign — active checkpoint, 2026-10-19

Current section: compact panel and main-window layout verification. Installed release and source are OM 0.3.3. No project restart or database reset.

- Installed 0.3.2 upgrade exited 0; packaged pose/face models and both Windows camera backends passed. Release suite: 98 tests plus 24 subtests passed (artifacts/tests-om-032-release.xml).
- Login startup is registered and read back at HKCU Run/PostureGuard. Exact installed --startup command launched; native window metadata showed the reminder and OM Panel, main window hidden, no new monitoring session. Evidence: om-startup-registration.json, om-032-startup-launch.json. Real offline Windows login, actual native balloon delivery and ten-minute wall-clock reminder remain unverified.
- Calibration restoration APPLIED and verified: only empty calibration setting restored from the integrity-checked before-om-032-20261018-225043.sqlite3 backup. Current database preserved first at backups/before-calibration-restore-20261019-095340.sqlite3. Other settings unchanged, integrity OK; evidence artifacts/om-calibration-restoration.json. Earlier failed calibration cleared the baseline; 0.3.2 now retains it on failure, with regression coverage.
- Before redesign: backups/before-om-033-ui-20261019-095306.zip. Source 0.3.3 adds aligned Home controls/cards, lavender/navy and light palettes, compact focus controls, meeting pause that releases the existing camera and silences alerts, adjustable 48–96 px ball, progressive panel options, explicit quick recalibration, short reduced-motion-aware logo reveal. UI subset: 26 passed; full suite: 101 passed plus 24 subtests (artifacts/tests-om-033.xml). Final source camera-off smoke passed all ten pages, panel restore and clean shutdown. Packaged models and both Windows camera backends passed; payload 312,152,365 bytes / 417 files. Installer built and upgrade exited 0. Installer 81,887,361 bytes (~78.1 MiB); SHA256 in artifacts/om-033-release.json. Three installed camera-off restarts passed: all existing settings/calibration and every history row unchanged, integrity OK, clean shutdown (artifacts/om-033-installed-persistence.json). Fresh backups before install and restart checks preserved. User-approved installed live check completed: READY, 337 inference results, no faults, single worker released; 27.36 capture FPS, 19.96 actual preview paint FPS in final ten seconds, 32 ms p95 preview age. Presence displayed/saved both 32.25 seconds, no history errors. Evidence: artifacts/om-033-installed-live.json. Manual blink phase counted 6 for declared 5; departure phase recorded no UNKNOWN. Camera operation PASSED. User confirmed option 2 (partly visible or returned sooner) and said working; departure result is therefore inconclusive, not evidence of a confirmed presence bug. Blink/departure accuracy NOT accepted. No images/video saved.
- Earlier blink phase detected 0/5; latest installed 0.3.3 phase detected 6/5. Accuracy is NOT accepted. No physical Arduino accuracy claim for 0.3.3. No images/video saved. Update delivery remains unavailable without release hosting and publisher signing configuration.

Next: a controlled complete ten-second departure and blink-validation improvement; real offline Windows login and physical Arduino checks remain outstanding. No user action is needed to use the redesigned app; those physical acceptance checks remain optional follow-up work. Installer is unsigned; automatic update distribution requires release hosting and trusted publisher configuration.

--- Earlier checkpoints (historical; current evidence above takes precedence) ---

# OM 0.3.2 release verification — 2026-10-19

Current section: startup reminder and release packaging. Existing installed version is still 0.3.1 until the upgrade below is verified. No project restart or data reset.

## Implemented and tested in source
- OM branding, actual logo splash, circular OM Panel, visible Exit OM, no Home tagline, ten retained pages, light/dark themes and reduced motion.
- Login reminder deduplicated by real Windows logon identity. Calibrate Now opens the actual page, starts the existing camera owner explicitly, and retains the saved baseline. Remind Me in 10 Minutes uses a cancellable 600000 ms Qt timer. Dismiss cancels that timer. Automated expiry is simulated; the genuine ten-minute wait is not yet verified.
- Windows shortcut AppUserModelID now matches OM.Desktop. Startup registration was absent and user explicitly approved enabling it; registration remains pending until installation is verified. No Windows startup-disable setting has been overridden.
- Complete suite: 96 tests plus 24 subtests passed (artifacts/tests-om-032-final.xml). This includes the new camera format and reminder action regressions.

## Camera evidence
- Original saved index 9 caused the initial camera failure; verified working index 0 is preserved.
- DirectShow-only capture measured 14.9 FPS; Media Foundation measured 28.7 FPS on the same device. Media Foundation is an explicit setting with DirectShow compatibility, never a silent fallback.
- Full-app Media Foundation initially timed out. A sequential driver probe measured 3.64 seconds to open/read the already-correct 640x480/30 format, versus 11.73 seconds after redundant format resets. Source now skips matching width/height/FPS settings and removes the unsupported MJPG request.
- Corrected full-app test: READY, no faults, 26.91 capture FPS, 10.37 inference FPS, 333 actual preview paints/40 seconds (8.32 average including startup), 47 ms p95 read-to-GUI age. Worker released. GUI total is not a steady-state smoothness claim. Added a last-ten-seconds actual-paint measurement for installed verification.
- Latest user-paced check completed: declared 5 blinks, detected 0 during the marked blink phase. Five events occurred across the entire run, which does NOT establish accuracy. Longest UNKNOWN period 2.891 seconds, zero time credited while UNKNOWN, recovery observed. Ten-second departure ground truth remains unverified. Feature remains experimental.
- Presence counter 173.429766724 seconds matched saved 173.429766655 after stop, no recording error. Stable monotonic/wall anchor prevents overlapping persisted intervals. No images or video saved.

## Pending release gates
Build/install 0.3.2; register and execute the actual Windows Run command; verify reminder visibility/actions, native notification and duplicate suppression; measure installed steady-state preview; check database preservation and restarts. Real sign-out/login with internet disconnected has NOT been performed. Physical Arduino testing and blink accuracy remain unverified.

Backups before this work: backups/before-om-032-20261018-225043.zip and .sqlite3, plus all older recovered originals/backups retained. Implementation files: src/postureguard/{app,main_window,vision,preview,windows,checks,design,blink,storage,controller}.py; packaging version resources and installer; tests/test_vision.py, test_om_presence.py, test_startup.py, test_preview_buffer.py. Research and design decisions are in docs/OM_DESIGN_AUDIT.md.

--- Earlier checkpoints (historical; latest evidence above takes precedence) ---

# OM 0.3.2 completion — active checkpoint, 2026-10-18

Stage A: resumed installed0.3.1,88tests+24subtests passed and19UI checks after finalHome change. User confirmed moving installedvideo; installed-visible test458actualpaints/60sec(7.63FPS),14captureFPS,9.4inferenceFPS,47ms95thread-to-GUIage. No fault; camera released. BlinkOPEN7events but no reliablemanualcount. Firstguidedtest inconclusive: userperformedactionsatdifferenttimes.

Stage B: current Run/startup-approval entry absent(artifacts/om-startup-audit.json). User explicitly approved enabling Windowslogin startup+reminder (reply1). NOT YET REGISTERED; enable after final install. New source0.3.2 has OM traytooltip, ExitOMpanelaction, noPRIVATEBYDESIGNUItext, realstartupOMsplash, brandedPEversionresource, OM sensor wording(unchangedprotocol). Startupnotification+nonmodalactionwindow and login-session dedup implemented; Windowsloginidentity API available. Source needs tests/build/installedverification; do not claim actualboot test.

Stage C: compact ten-page navigation, Home commands and circularpanel inherited; fade moved from entirepage toheading to avoid offscreencompositingvideo. Prototype/renderinspection pending for0.3.2.

Stage D investigations: directcapture/pose/pose+face isolation sustained~30captureFPS; workerwithoutGUIonly~10.7FPS, directchildsteady~15FPS. SharedRAMpreviewimplemented to eliminateframepickling, but alone did NOT curelowFPS: source8.83actualpaints/sec. QoSdiagnostic showednoimprovement; noQoSchanges shipped. Backendcomparison underway. All diagnostics useonecamerastream sequentially, noimages saved.

Stage E correctness: found wall/monotonic timestampremapping could create overlappingpresenceintervals and droppedwrites. Stableanchorpermonitoringsessionimplemented. Source0.3.2sharedpreviewlive had nohistoryerror; observedtotal154.006767107seconds matched saved154.006767035afterstop. Realdeparture/returngroundtruth remains pending. No syntheticpresence inserted into userDB.

Stage F: blinkFaceTasks missing-scoreadapter retained andtested(0.3.1); actualvalidframes now observed, countsnotaccuracy. Stage G0.3.2tests/build/install pending. Existinginstalled0.3.1remains usable withmonitoringoff.

Backups: backups/before-om-032-*.zip and.sqlite3 (integrityOK). Originaldata/settings/calibrationpreserved; onlyintentionalcameraindex9->0 earlier; newpreferences additive. See originalrecordbelow and docs/OM_DESIGN_AUDIT.md.

--- Earlier checkpoint ---

# OM 0.3.1 continuation — in progress, 2026-10-18

Stage A complete: verified camera fault caused by saved index9; calibrated index0 produced108 original-worker inference results in12seconds. Corrected only index after backup. Evidence: artifacts/camera-original-live-probe.json, camera-windows-diagnosis.json, camera-selection-correction.json. Database integrity OK; all other settings/calibration unchanged. Backups: backups/before-camera-fix-*.

Stage B implemented and camera-OFF prototype reviewed: circular status/timer ball, compact shared controls, Home commands, narrower navigation, two live summaries. Stage C implementation: one capture-owner thread, latest-only frames, independent33ms preview rendering, structured safe camera failures. Stage D: durable observed-today counter shared across Home/panel/Analytics; no uptime credit. Stage E: opt-in startup reminder and live Home switches implemented. See docs/OM_DESIGN_AUDIT.md. These stages still require final installed verification; do not treat implementation as acceptance.

Tests at this checkpoint:82 passed +24 subtests. Initial sandbox temporary-directory permission failures were environmental; rerun with workspace TEMP/TMP passed. Source60second live test underway; physical ground-truth blink/leave-return check requested. Stage F update:88 tests +24 subtests passed; last Home summary change additionally passed19 UI/presence tests. Release build and installer succeeded; installed upgrade exit0, no Windows restart. Packaged models and worker fault/stop checks passed. Installed90second live test is running; final evidence still pending.

Files changed: src/postureguard/{app,vision,main_window,design,windows,storage,__init__}.py; tests/test_vision.py; pyproject.toml; packaging/PostureGuard.iss; tools/camera_original_probe.py; docs/OM_DESIGN_AUDIT.md. Existing services and identifiers retained.

--- Previous verified release record ---

# OM 0.3.0 — installed and verified, 2026-10-18

## Current section
Database recovery and OM release verification completed. Next section is live camera/presence/posture/blink evaluation and physical Arduino testing. Existing project continued in place.

## Confirmed result
- Recovery was explicitly verified as unapplied before work. The 40,960-byte default DB matched its damaged original exactly. Repaired using the validated candidate after user authorization; no empty replacement or reset.
- Default DB: C:/Users/Lenovo/AppData/Local/PostureGuard/PostureGuard/postureguard.sqlite3.
- Missing B-tree pages 11–15 caused structural corruption. The external event that removed them remains unknown. Disk free/ACL checks were adequate; no matching disk/NTFS/controller warning or error metadata in the last day. This does not rule out every storage fault.
- Recovered all 23 current readable preferences and two verified calibration preferences, 227 older posture intervals, 45 current events, 2 focus records, 7 sessions. Newer history on missing pages may be unrecoverable. All damaged originals and healthy backups preserved.
- Three pre-upgrade and three OM installed restarts passed. SQLite integrity OK. All original 25 settings/calibration entries preserved, all original recovered history unchanged. Three new OM preferences bring configuration count to 28. Zero fabricated presence rows.
- Temporary focus rows created by the first restart test were removed by exact match after a full verified backup. Default-data diagnostics now avoid starting a test timer.
- Source adds integrity validation and useful startup failure messages, read-only restoration and atomic preference saves; no hidden failure or silent data reset.

## OM interface and functionality
- Visible names: OM and OM Panel. Data/install/executable identifiers remain stable. OM shortcuts and embedded seven-size icon; vector artwork in assets/om-symbol.svg.
- Dark/light themes, grouped settings, compact everyday panel, legible 60-pixel collapsed mark, floating/docked modes, lock and background-only opacity. Original service modules retained.
- Main app opens normally; opening it collapses the panel to avoid obstruction. Tray/panel/repeated launch restore it. Main close hides to panel; explicit Exit shuts down.
- Wordmark reveal, page transitions and button feedback respect reduced motion. Panel expansion geometry is immediate; no claim of complete bespoke animation for every interaction.
- Optional presence estimate counts stable positive camera observations only. Unknown/stale/duplicate frames and sleep gaps add no time. Absence, seating and attention cannot be reliably proved; no false Away state. Grace changes the gap explanation, not credited time.
- Presence totals appear separately in daily/weekly/monthly reports; history uses existing background numeric recording and 60-day cleanup. Preferences/calibration survive cleanup.
- Monitoring OFF by default; camera/Arduino ownership unchanged; no camera image/video persistence, no physical simulation passed off as hardware.

## Verification evidence
- 78 tests + 24 subtests passed: artifacts/tests-om-030.xml. Syntax compilation passed; no separate lint/type tool configured.
- Source/packaged/installed both-model initialization and missing-model worker checks passed. Synthetic frames, not real-camera accuracy proof.
- Installed OM shell checks passed on actual default DB through three restarts. Both themes, normal/maximized main, expanded/collapsed panels inspected using native camera-OFF renders.
- Live installed process responds; normal OM window and OM Panel tool window visible, repeat launch restores existing process. Qt adds application name to native panel caption (OM Panel - OM); an initially exact-caption diagnostic assertion was corrected to recognize that platform suffix. artifacts/om-installed-launch.json.
- Firmware unchanged; prior compile evidence remains valid. No upload or physical Arduino validation this turn.
- Core model versions/dependencies unchanged. Full network audit and long monitoring stability remain outstanding.

## Package
- Installer: artifacts/OM-0.3.0-Setup.exe, 77,369,243 bytes (77.37 MB decimal), unsigned preview.
- Payload: 296,512,708 bytes / 415 files.
- Installed including uninstaller: 301,271,457 bytes / 417 files (301.27 MB decimal).
- SHA256: CB2329774560148A803064BDC36DDB2DAB666CDA2D64D41F13DAB3FD34265F44.
- Installation exited 0, no restart. No former size cap enforced.
- Installed executable retained at C:/Users/Lenovo/AppData/Local/Programs/PostureGuard/PostureGuard.exe.

## Smallest next user action
OM is open with monitoring OFF. In Screen time & focus, enable the presence estimate, then explicitly Start monitoring. Check whether it changes to Person observed while you face the camera, and pauses rather than counting unknown tracking. No recording or screenshot needed.

Remaining: real posture/blink/presence accuracy and latency, physical Arduino ranging/disconnect, sustained monitoring, broad DPI/multimonitor acceptance, network audit, signing/hosted updates. Forward torso lean/spinal curvature remain unsupported. Full Store screenshot research was unavailable due browser/network timeout; no copied product assets.

Earlier checkpoints below are historical.

---

# OM 0.3.0 continuation — database repaired, release verification in progress

## Completed recovery
- Final visible names approved: OM and OM Panel. Existing executable/data/install identifiers retained.
- Reinspection proved recovery had NOT been applied: default DB hash still exactly matched the damaged original, 40,960 bytes, 23 readable settings; candidate/healthy backup each had 25 and integrity OK.
- Current default path: C:/Users/Lenovo/AppData/Local/PostureGuard/PostureGuard/postureguard.sqlite3.
- No running process or journal/WAL/SHM at final recovery check; user directory ACL allows full control, disk free ~126.5 GB.
- Approved verified recovery applied through a sibling staging file, SQLite backup API, full integrity and table equality checks, writable fsync, then atomic replacement. Initial read-only fsync failed before replacement; corrected Windows handle mode and reverified existing staging contents. No originals/backups deleted.
- Restored all 23 current readable settings plus verified calibration/camera-index entries (25 total), 227 older posture intervals, all 45 current events, 2 focus records, 7 sessions. Missing newer history on absent pages cannot be reconstructed.
- Three installed-app restarts against DEFAULT repaired DB exited 0; settings/calibration unchanged, all original history retained, integrity OK. artifacts/default-recovery-verified.json.
- Three diagnostic timer records were subsequently removed by exact matching after another full healthy backup: backups/repaired-before-om-030.sqlite3. No original user history removed. Future default-data smoke tests no longer start a test timer.
- Structural cause confirmed: B-tree pointers to absent pages 11–15 in a ten-page file. External truncation/corruption event remains unknown; no unsupported disk/permission diagnosis claimed.

## OM implementation and evidence
- Integrity checks before normal startup writes; useful path/error message; no silent reset. Read-only preference restoration, atomic batch saves, explicit save failures.
- Dark/light themes; visible OM branding; centered OM icon (vector plus seven ICO sizes); short wordmark reveal; grouped settings; compact OM Panel with quick controls, floating/docking/locking and background-only alpha.
- Original camera/posture/blink/Arduino services remain shared. Monitoring OFF initially. Torso remains lateral lean only; blink events experimental.
- Optional conservative presence counter uses only stable positive observations. Unknown frames and uptime never count. Unknown is NOT labelled Away; seating/attention cannot be verified. Presence intervals use existing background numeric writer, 60-day cleanup, and separate report totals.
- Native dark/light, expanded/collapsed and main/maximized renders inspected; corrected transparent panel background and excess navigation spacing.
- Latest relevant suite: 77 tests + 24 subtests passed. Final rerun/build executing; installed OM 0.3.0 still pending. No camera or board test performed by development tools.
- Current: package and installed verification. Next: installed restart/theme/panel checks, then user-driven live presence/torso/blink validation. No user action needed while packaging.

Earlier checkpoints below are historical.

---

# Premium continuation — startup recovery in progress, 2026-10-18

- Current installed database: C:/Users/Lenovo/AppData/Local/PostureGuard/PostureGuard/postureguard.sqlite3.
- Confirmed SQLite structural corruption (SQLITE_CORRUPT), not a camera permission problem. File contains 10 x 4096-byte pages but B-tree pointers reference missing pages 11–15. This proves missing structural data; the external event that caused truncation/corruption is NOT established.
- Disk free about 125.7 GB; inspected user/folder ACLs grant full control. No WAL/SHM or rollback journal present at inspection; no running PostureGuard process found.
- Workspace preserved in backups/premium-before-20261018-071758.zip. SQLite backup API produced backups/database-premium-20261018-071805.sqlite3. It retains the source corruption; integrity check fails. Separate byte-for-byte original preserved as backups/damaged-database-premium-original.sqlite3 (SHA256 df4c56ded59d18b59b31bcbb6a518ff4de5f049b5e1daec095a9094b38f3f48c).
- Earlier backups/user-data-before-020.sqlite3 passes full integrity check.
- Verified recovery candidate created separately, NOT installed: backups/recovery-candidate-premium.sqlite3. Integrity check OK; retains all 23 current readable settings, 45 events, 2 focus records, 7 sessions; restores 227 earlier posture intervals and two missing calibration settings from verified backup. Newer missing-page history may be unrecoverable. See artifacts/recovery-candidate-report.json.
- User recovery decision requested before replacing the installed database; no empty database/reset or silent data loss used. Name approval also requested: Omera recommended, with Svara, Oria, Stillwell, Omvia alternatives. No permanent identifiers changed.
- Code hardening: startup checks database integrity before modifying tables, errors identify exact path and keep database intact; settings restoration no longer rewrites preferences; settings save is one atomic transaction and visible errors do not claim success.
- Regression result: 71 tests + 24 subtests passed (artifacts/tests-database-reliability.xml), including malformed DB preservation, atomic rollback, settings/calibration reopen, read-only restoration, visible write errors.
- Current section: database recovery awaiting specific user decision; independent design research started. Installed restart/persistence validation still pending, so database fix is NOT yet claimed complete.
- Next: apply approved recovery, verify installed restart/persistence, then continue OM/desktop redesign and presence work. Original checkpoint below is historical, not current status.

---

# PostureGuard progress — 2026-10-18 06:38 IST

## Previous section
- 0.1.0 installed preview verified. User reports camera works and head/shoulders appear to work; torso feedback and blink accuracy were not accepted.
- The user removed the former 300 MB restriction. No size-only feature removal in this continuation.

## Current section — 7 verification completed; 8 live validation pending
- Resumed existing workspace and modules; did not restart the project.
- Backups: backups/continuation-20261018-062327.zip (8,897,666 bytes), backups/PostureGuard-0.1.0-Setup-20261018-062327.exe (77,345,524 bytes), backups/user-data-before-020.sqlite3 (61,440 bytes, made using SQLite backup API). Earlier backups retained.
- Dependency check passed. Active runtime remains .venv312, Python 3.12.14, MediaPipe 0.10.21. No dependency installation was needed this turn.
- Root cause of missing main app confirmed: old startup only instantiated EdgePanel, a Qt Tool window. No normal main window existed.
- Added normal QMainWindow with Overview, Posture, Arduino & distance, Calibration, Eye care, Focus & breaks, Analytics & reports, Notification history, Settings, About. Shares the original monitoring/storage services, with no second camera owner.
- Monitoring starts OFF. Minimize keeps monitoring running. Close hides to the Edge Panel; Exit quits and releases devices. Open app/tray/repeated launch restores the main window. Local restore marker requires no network listener.
- Preserved approved panel styling/text, added Open app and OM icon. OM icon also embedded in executable. Added page/startup fades, button outline feedback, panel fades and reduced-motion behavior; existing perimeter animation retained.
- Added opt-in bounded RAM-only preview path. No camera images/videos or landmark streams persisted. Diagnostic screenshots contain only camera-OFF UI, never camera frames or desktop imagery.
- Torso algorithm unchanged: shoulders and hips must pass confidence/framing/separation gates. Added quality and reason explanations. It measures lateral lean only, not forward lean or spinal curvature. User-specific missing-hip cause remains unconfirmed until live view; no values invented.
- Blink tracking now rejects explicit low landmark confidence, reports transition state and clears stale results. Fixed floating-point gap boundary. Bilateral event count/rate remain experimental; actual accuracy not established. Eye reminders remain independent.
- Notifications now preserve type/severity, deduplicate posture transitions and sensor faults, allow native-delivery mute and reminder snooze. Session-only history dismissal is explicit. Unknown data remains excluded from posture scores; 60-day cleanup preserves preferences/calibration.

## Evidence
- Final suite: 66 tests + 24 subtests passed, artifacts/tests-continuation.xml. Intermediate 79 count included inherited duplicate tests, removed before final run.
- Syntax compilation passed. No separate lint/type tool is configured.
- Source, packaged and installed copies load BOTH local models with synthetic blank frames. DirectShow backend confirmed. These are initialization tests, not real-camera accuracy tests.
- Source/packaged/installed missing-model worker probes passed fault reporting and shutdown without accessing camera.
- Source/packaged/installed shell checks passed: monitoring OFF, separate visible main window, minimize/restore, close-to-panel and panel-to-main restoration, ten pages, independent timer, clean shutdown.
- Native camera-OFF renders reviewed at normal and maximized sizes. Fixed nested graphics effects that initially hid buttons; headless font renders were unsuitable, so Windows rendering was used.
- Firmware compiled: 3,964 bytes flash / 221 bytes static RAM. Sandbox DLL relocation failed; normal execution passed. No board opened or uploaded.
- Installer upgrade exited 0, no restart. Installed-copy model/worker/shell checks all exited 0.
- Running app PID 14068 at verification; both visible windows confirmed with Windows window metadata: PostureGuard normal window and OM Edge Panel Tool window. Repeated launch exited 0 and restore request was consumed. App responding. Initial working set 137,486,336 bytes; not a sustained-performance claim.
- All 25 existing configuration entries preserved byte-for-byte, including any calibration entries; artifacts/settings-preservation-020.json.

## Build and footprint
- Version 0.2.0 unsigned preview.
- Installer: artifacts/PostureGuard-0.2.0-Setup.exe — 77,337,757 bytes (77.34 MB decimal).
- Payload: 296,475,893 bytes / 415 files.
- Installed INCLUDING uninstall files: 301,137,903 bytes / 417 files (301.14 MB decimal).
- SHA256: 888439931524273B196DC6B78D1845570C519BCB692E54B63371DA2844F4F1F2.
- Installed executable: C:/Users/Lenovo/AppData/Local/Programs/PostureGuard/PostureGuard.exe.
- Size cap removed; reports contain actual sizes, no cap failure gate.

## Next section and smallest user action
- App left open with monitoring OFF. Click Start monitoring, then inspect Posture → Lateral torso lean and report its status/reason. No screenshot or camera recording needed.
- If hips are outside the view, position camera to include hips and shoulders and recalibrate for ten seconds. Forward leaning alone is not a supported metric.
- Next live blink validation: enable experimental tracking, hold eyes naturally open during setup, compare deliberate blink count with displayed detected events, then test sustained closure. Accuracy requires the user's observations, not synthetic claims.
- Arduino upload remains approval-gated; no upload attempted. Real range and disconnect/reconnect tests require connected physical hardware.

## Remaining limitations / overall state
- Main-window software defect fixed and installed verification passed. Motion/layout reviewed, but all DPI/multimonitor combinations and subjective polish are not accepted yet.
- Physical posture/blink accuracy, live false-alert/latency checks, long monitoring stability, hardware measurements, second-PC install, network audit and signed hosted updates remain outstanding.
- No forward-lean/spinal measurement, charts/report export, sensor simulation UI, website blocking, app termination, or hosted updater. Unsupported features are not represented by fake controls.
- MediaPipe 0.10.35 environment remains preserved but must not be used for release: earlier native telemetry attempt was observed. 0.10.21 probes emitted no such message; this is not a complete network audit.
- Original execution window: 2026-10-17 20:16 to 2026-10-20 20:16 IST. No claim of unattended future work. Resume from this checkpoint after live feedback without recreating code or environments.
