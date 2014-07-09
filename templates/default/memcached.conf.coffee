module.exports = -> """
#######################################################################
# WARNING: This file automatically generated by Borg on #{Date.create().format('{yyyy}-{MM}-{dd} {HH}:{mm}:{ss} {tz}')}
#          If you need to edit this file, do so in the Borg repository.
#          Any change you make here WILL be overridden on assimilation.
#######################################################################

# memcached default config file
# 2003 - Jay Bonci <jaybonci@debian.org>
# This configuration file is read by the start-memcached script provided as
# part of the Debian GNU/Linux distribution.

# Run memcached as a daemon. This command is implied, and is not needed for the
# daemon to run. See the README.Debian that comes with this package for more
# information.
-d

# Log memcached's output to /var/log/memcached
logfile /var/log/memcached.log

# Be verbose
-v

# Be even more verbose (print client commands as well)
# -vv

# Start with a cap of 64 megs of memory. It's reasonable, and the daemon default
# Note that the daemon will grow to this size, but does not start out holding this much
# memory
-m #{@server.memcached.memory}

# Default connection port is 11211
-p #{@server.memcached.port}

# Run the daemon as root. The start-memcached will default to running as root if no
# -u command is present in this config file
-u #{@server.memcached.user}

# Specify which IP address to listen on. The default is to listen on all IP addresses
# This parameter is one of the only security measures that memcached has, so make sure
# it's listening on a firewalled interface.
-l #{@server.memcached.listen}

# Limit the number of simultaneous incoming connections. The daemon default is 1024
#-c #{@server.memcached.maxconn}

# Lock down all paged memory. Consult with the README and homepage before you do this
# -k

# Return error when memory is exhausted (rather than removing items)
# -M

# Maximize core file limit
# -r
"""
