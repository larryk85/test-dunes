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
   url = 'https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe' 
   fn = wget.download(url)