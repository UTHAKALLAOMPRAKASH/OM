# Test plan

Automate calibration quality/rejection, angle geometry, stale states, hysteresis,
sensor malformed input/identity/timeout/reconnect simulation, operating modes,
notification deduplication, timer clocks, report denominators and 60-day boundaries.
Test packaged startup without development dependencies and measure payload bytes.
Audit source and runtime writes for prohibited imagery; no camera images in artifacts.
Physical gates: camera framing and accuracy, real UNO readings, click-through/focus,
mixed DPI, other-PC install. Never mark these passed without observations.
Targets: 10s calibration (80 usable samples across 8s); severe software latency p95
<=250ms; <=2 false episodes/30min under supported conditions; 90% detection on
30 scripted deviations per supported region. Targets are unvalidated engineering goals.
Performance targets: <=15% total CPU and <=400MB combined working set at 15Hz;
2h stability. Actual laptop measurements required.
No arbitrary first-run camera activation; tests requiring camera need explicit user action.
