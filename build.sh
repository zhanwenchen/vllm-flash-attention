#!/bin/bash
# A simple build script for local testing.
# NOTE: This script is not used for the actual build process.


pip install packaging;
time python setup.py bdist_wheel --dist-dir=dist;
