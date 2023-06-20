#! /usr/bin/env python3

import os
import sys
import platform
import subprocess
import tempfile
import glob
import ctypes
import argparse
import zipfile
import wget

if __name__ == "__main__":
   url = 'https://download.docker.com/win/static/stable/x86_64/docker-24.0.2.zip' 

   parser = argparse.ArgumentParser(description='Install DUNES and dependencies.')
   parser.add_argument('--install_dir', default='C:\Program Files\dunes', help='Path to the install to.')
   args = parser.parse_args()

   def is_admin():
      try:
         return ctypes.windll.shell32.IsUserAnAdmin()
      except:
         return False
   
   if is_admin():
      print('Installing Docker Engine...')
      with tempfile.TemporaryDirectory() as temp_dir:
         # Create the executable.
         fn = wget.download(url, out=temp_dir)
         with zipfile.ZipFile(fn, 'r') as zip_ref:
            zip_ref.extractall(args.install_dir)
         print('Installing DUNES...')
         fn = wget.download
   else:
      ctypes.windll.shell32.ShellExecuteW(None, "runas", sys.executable, __file__, None, 1)