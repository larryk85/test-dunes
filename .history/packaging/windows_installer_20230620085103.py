#! /usr/bin/env python3

import os
import sys
import platform
import subprocess
import tempfile
import glob
import zipfile
import wget

if __name__ == "__main__":
   url = 'https://download.docker.com/win/static/stable/x86_64/docker-24.0.2.zip' 
   fn = wget.download(url)
   with zipfile.ZipFile(fn, 'r') as zip_ref:
      zip_ref.extractall(os.getcwd())
   print('Extracted docker to ' + os.getcwd())