#!/bin/bash

jatorria = /home/irune/Segurtasuna
helmuga = /var/tmp/Backups

data = $(date + %F)

mkdir -p $helmuga/$data

rsync -a --link-dest=$helmuga/$(date -d yesterday + %F) $jatorria/ $jatorria/$data/
