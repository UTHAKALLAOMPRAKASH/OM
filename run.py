"""Source and frozen application entry point."""
import multiprocessing
import sys
from pathlib import Path

if __name__ == "__main__":
    multiprocessing.freeze_support()
    if not getattr(sys, "frozen", False):
        sys.path.insert(0, str(Path(__file__).parent / "src"))
    from postureguard.main import main
    raise SystemExit(main())
