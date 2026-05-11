[![Build and Publish](https://github.com/slmingol/Solitairey/actions/workflows/docker.yml/badge.svg)](https://github.com/slmingol/Solitairey/actions/workflows/docker.yml)
[![GitHub Release](https://img.shields.io/github/v/release/slmingol/Solitairey?logo=github)](https://github.com/slmingol/Solitairey/releases)
[![Container Image](https://img.shields.io/badge/ghcr.io-slmingol%2Fsolitairey-blue?logo=docker)](https://github.com/slmingol/Solitairey/pkgs/container/solitairey)
[![License](https://img.shields.io/badge/license-BSD--2--Clause-blue)](LICENSE)
[![GitHub Stars](https://img.shields.io/github/stars/slmingol/Solitairey?style=social)](https://github.com/slmingol/Solitairey/stargazers)

Solitairey is a JavaScript Solitaire collection using YUI 3.

A [playable version is available online](https://foss-card-games.github.io/Solitairey/) on GitHub Pages.

This is a [FOSS](https://en.wikipedia.org/wiki/Free_and_open-source_software) fork of the most recent version
of the original repository by Paul Harrington that had a LICENSE file.

Current games include:

- Agnes
- Flower Garden
- Forty Thieves
- Freecell
- Golf
- Grandfather's Clock
- Klondike
- Monte Carlo
- Pyramid
- Russian Solitaire
- Scorpion
- Spider (1, 2, and 4 Suit)
- Spiderette
- Tri Towers
- Will O' The Wisp
- Yukon

Build Process:
==============

### Traditional Build

```
bash -ex bin/install-npm-deps.sh
rake
rake test
rake upload
```

### Podman Build

For a containerized build and deployment using Podman (rootless, daemonless alternative to Docker):

```bash
# Quick setup
./docker/podman-setup.sh

# Production mode (serves on port 8080)
podman-compose up web
# or: podman compose up web

# Development mode (serves on port 8000)
podman-compose --profile dev up dev

# Build only
podman-compose --profile build run --rm builder
```

See [PODMAN.md](PODMAN.md) for detailed Podman documentation.

**Note**: The setup is fully compatible with Docker as well. Simply use `docker-compose` instead of `podman-compose`.

License
=======

(FreeBSD License)

Copyright 2011 Paul Harrington <pharrington@solitairey.com>. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright notice, this list of
      conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above copyright notice, this list
      of conditions and the following disclaimer in the documentation and/or other materials
      provided with the distribution.

THIS SOFTWARE IS PROVIDED BY PAUL HARRINGTON ''AS IS'' AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL PAUL HARRINGTON OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the
authors and should not be interpreted as representing official policies, either expressed
or implied, of Paul Harrington <pharrington@solitairey.com>.
