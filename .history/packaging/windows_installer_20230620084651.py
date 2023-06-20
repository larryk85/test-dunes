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
   url = 'https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module&_gl=1*gzmmsq*_ga*MTcxNjI4NDgyMS4xNjg3MjI1Nzk5*_ga_XJWPQMJYHQ*MTY4NzI2Mzk0NS4zLjEuMTY4NzI2NDY3NS42MC4wLjA.' 
   fn = wget.download(url)