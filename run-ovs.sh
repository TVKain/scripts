#!/bin/sh

set -x

ovs-ctl --system-id=$1 --ovsdb-server-options='--remote=ptcp:6640:127.0.0.1' start