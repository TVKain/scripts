#!/bin/bash

DB=$1

alias ovn-nbctl="ovn-nbctl --db tcp:$DB:6641"
alias ovn-sbctl="ovn-sbctl --db tcp:$DB:6642"