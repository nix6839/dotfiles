"""
Python Startup file
"""

import sys
import os
import atexit
import readline


def get_history_path() -> str:
    """
    Check $PYTHONHISTORY
    if not set use $XDG_DATA_HOME/python/history path
    if not set $XDG_DATA_HOME then use ~/.local/share/python/history
    """
    xdg_data_home = os.path.expanduser("~/.local/share")
    if sys.flags.ignore_environment:
        return os.path.join(xdg_data_home, "python", "history")
    return os.getenv("PYTHONHISTORY", os.path.join(
        os.getenv("XDG_DATA_HOME", xdg_data_home), "python", "history"))


history_path = get_history_path()
try:
    readline.read_history_file(history_path)
except OSError:
    pass

atexit.register(readline.write_history_file, history_path)
