# I don't care about tensorflow inner implementation -> mask such traceback lines
# source:  http://stackoverflow.com/questions/31949760/how-to-limit-python-traceback-to-specific-files#32999522

from __future__ import print_function
from os.path import join, abspath
from traceback import extract_tb, format_list, format_exception_only
import sys

def spotlight(*show):
    ''' Return a function to be set as new sys.excepthook.
        It will SHOW traceback entries for files from these directories. '''
    show = tuple(join(abspath(p), '') for p in show)

    def _check_file(name):
        return name and name.startswith(show)

    def _print(type, value, tb):
        show = (fs for fs in extract_tb(tb) if _check_file(fs[0]))
        fmt = format_list(show) + format_exception_only(type, value)
        print(''.join(fmt), end='', file=sys.stderr)

    return _print

def shadow(*hide):
    ''' Return a function to be set as new sys.excepthook.
        It will HIDE traceback entries for files from these directories. '''
    hide = tuple(join(abspath(p), '') for p in hide)

    def _check_file(name):
        return name and not name.startswith(hide)

    def _print(type, value, tb):
        show = (fs for fs in extract_tb(tb) if _check_file(fs[0]))
        fmt = format_list(show) + format_exception_only(type, value)
        print(''.join(fmt), end='', file=sys.stderr)

    return _print
