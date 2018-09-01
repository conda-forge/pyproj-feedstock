import os
import sys
import pyproj
pyproj.test()

from pyproj import Proj
Proj(init='epsg:4269')


# Re-enable this test on Windows when the PROJ_LIB var issue is resolved.
if not sys.platform == 'win32':
    # Test pyproj_datadir.
    if not os.path.isdir(os.path.join(pyproj.pyproj_datadir)):
        sys.exit(1)