# sigil cookbook

Installs [sigil](https://github.com/gliderlabs/sigil) using the [ark](https://github.com/opscode-cookbooks/ark) cookbook.

# Requirements

None.

# Usage

Just include `recipe[sigil]` in your run list.

This will install sigil to `/usr/local/sigil-X.X.X` with a symlink of `/usr/local/sigil`, and the single sigil binary symlinked to `/usr/local/bin/sigil`.

# Attributes

* `node[:sigil][:url_base]` - Base URL from which to download (in case you have your own mirror). Defaults to the link at https://github.com/gliderlabs/sigil/releases
* `node[:sigil][:version]` - The version of sigil to install.
* `node[:sigil][:arch]` - Architecture to use (sigil only supports x86_64)
* `node[:sigil][:raw_checksums]` - The contents of the upstream checksum file to allow checksum auto-detection.
* `node[:sigil][:checksums]` - A `Hash` mapping file name to checksums, derived by default from `raw_checksums`.
* `node[:sigil][:checksum]` - SHA-256 checksum of appropriate binary. Should be auto-detected for the default version using data in `raw_checksums` or `checksums`.

# Testing

This cook book has been tested with the following platforms:

- ubuntu-12.04
- ubuntu-14.04
- centos-5.9
- centos-6.4

# Author

Author: David Wooldridge (<zombie@zombix.org>)
