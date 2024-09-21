# Ubuntu Auto  remove any existing Docker And Install New Version Docker

### Ubuntu 20.04  and  22.04

This repository contains a script for automatically installing Docker on Ubuntu systems.


## Contents

- `dockerinstall.sh`: A bash script that automates the installation of Docker and Docker Compose on Ubuntu.
- **IMPORTANT**: This script will remove any existing Docker installations before installing the new version. Make sure to backup any important Docker data or images before running this script.

## Usage

To use this script, you need to run the following command in sudo mode. You can do this by either:

1. Switching to the root user first:
   ```bash
   sudo su
   ```
   Then running the command:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/tanlentboy/Linux/main/dockerinstall.sh -o dockerinstall.sh && chmod +x dockerinstall.sh && ./dockerinstall.sh
   ```

2. Or, running the entire command with sudo:
   ```bash
   sudo bash -c "curl -fsSL https://raw.githubusercontent.com/tanlentboy/Linux/main/dockerinstall.sh -o dockerinstall.sh && chmod +x dockerinstall.sh && ./dockerinstall.sh"
   ```

These commands will:
1. Download the script
2. Make it executable
3. Run it with root privileges

## What the Script Does

The `dockerinstall.sh` script performs the following actions:

1. Removes old versions of Docker
2. Updates the apt package index
3. Installs necessary packages to use HTTPS repositories
4. Adds Docker's official GPG key
5. Adds the Docker repository for Ubuntu 20.04 (focal)
6. Installs Docker CE
7. Installs Docker Compose
8. Verifies the Docker Compose installation
9. Checks the Docker version

## Compatibility

This script is primarily designed for Ubuntu 20.04 (Focal Fossa). For Ubuntu 22.04 (Jammy Jellyfish), you may need to uncomment the appropriate line in the script.

## Note

Please review the script before running it on your system. It's always a good practice to understand what a script does before executing it with root privileges.

