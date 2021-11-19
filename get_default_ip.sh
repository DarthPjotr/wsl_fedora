#!/bin/bash

nic=$(ip r show default | cut -d " " -f 5)
ipadress=$(ip -4 a show $nic | grep inet  | awk '{print $2}' | cut -d "/" -f 1)

echo $ipadress