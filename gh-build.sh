#!/usr/bin/env bash

# SPDX-License-Identifier: BSD-3-Clause
# Copyright 2024-2025 <Nitrux Latinoamericana S.C. <hello@nxos.org>>


# -- Build package.

mk-build-deps -i -t "apt-get --yes" -r
debuild -b -uc -us


# -- Move Deb to current directory because debuild decided that it was a GREAT IDEA TO PUT THE FILE ONE LEVEL ABOVE.

mv ../*.deb .
