# What is this?

[![Release](https://github.com/jacobsfederal/Collector-VSCode/actions/workflows/collect-main.yml/badge.svg?branch=main)](https://github.com/JacobsFederal/Collector-VSCode/actions/workflows/collect-main.yml)

This is a project that automatically collects artifacts to ease in air-gapped transfer from the internet.

It runs actions on Push or on Mondays at 00:00 and creates a release.

In this case, it collects the source code repository and the associated VSCode artifacts via [vscodeoffline](https://github.com/LOLINTERNETZ/vscodeoffline) for both extensions in artifacts/specified.json and the associated binaries based on a set version.