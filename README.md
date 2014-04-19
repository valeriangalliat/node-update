Node Update
===========

Update a portable Node.js installation.

Description
-----------

This command will download the latest Node.js version into the specified
directory (with the specified architecture) and when ran again with the
same parameters, will try to update if a new version came out.

When updating, all files from the new archive will be copied but the added
files (like modules and stuff) are kept.

Examples
--------

The examples are assuming the `node-update` command is globally accessible
but feel free to use the relative path to the file if needed.

If you want a local installation for your user.

```sh
mkdir node
cd node

# Install 32-bit version in current directory
node-update -a x86

# Add Node.js binaries to environment (if using Bash)
echo "PATH=$(pwd)/node/bin:\$PATH" >> ~/.bash_profile
```

To install globally (I don't like this way).

```sh
su -
mkdir /opt/node

# Instal 64-bit version (default) to specified directory
node-update -t /opt/node

# Globally add to environment
echo "PATH=/opt/node/bin:\$PATH" >> /etc/profile
```
