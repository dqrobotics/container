![GitHub License](https://img.shields.io/github/license/dqrobotics/container)![GitHub contributors](https://img.shields.io/github/contributors/dqrobotics/container)

# `dqrobotics` container(s)

Containerized environments for development with the DQ Robotics library

This repository provides ready-to-use Ubuntu-based Docker images with the DQ Robotics library. These images simplify setup, ensure reproducibility, and enable rapid prototyping across different systems without dependency conflicts. 

## Ubuntu 26.04 (Resolute) 

```
docker pull ghcr.io/dqrobotics/container:resolute
```

## Development Overview

For each version of Ubuntu, it is expected one folder with the entire docker build context and one GitHub actions workflow file.

|Ubuntu Version|Folder           |Workflow                           |
|--------------|-----------------|-----------------------------------|
|Ubuntu 26.04  |`ubuntu/resolute`|`.github/workflows/ubuntu_resolute`|

The workflow will create one intermediate tags for `amd64` and `arm64` and then merge them. For instance, for `resolute`, the intermediate tags will be
- `resolute_amd64`
- `resolute_arm64`
  
which are then merged into

- `resolute`.
