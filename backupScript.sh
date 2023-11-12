#!/bin/bash
# Kopiaren jatorria eta helmuga definitu.
jatorria = /home/irune/Segurtasuna
helmuga = /var/tmp/Backups

# Data lortzea UUUU-HH-EE formatoan.
data = $(date + %F)

# Direktorioa sortzea data erabiliz.
mkdir -p $helmuga/$data

# Jatorria eta helmuga sinkronizatu.
rsync -a --link-dest=$helmuga/$(date -d yesterday + %F) $jatorria/ $jatorria/$data/
