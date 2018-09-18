import os
import sys
import pyproj
pyproj.test()

from pyproj import Proj
Proj(init='epsg:4269')


# Test pyproj_datadir.
if not os.path.isdir(pyproj.pyproj_datadir):
    sys.exit(1)