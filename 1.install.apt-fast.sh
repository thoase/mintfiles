#!/bin/bash

sudo add-apt-repository ppa:saiarcot895/myppa

sudo apt-get update

sudo apt-get -y install apt-fast

## You can edit settings directly too:
## sudo nano /etc/apt-fast.conf

## To retrieve new lists of packages using apt-fast
## sudo apt-fast update

## To perform an upgrade using apt-fast
## sudo apt-fast upgrade

## To perform distribution upgrade (release or force kernel upgrade), enter:
## sudo apt-fast dist-upgrade

## To install new packages, the syntax is:
## sudo apt-fast install pkg

## For example, install nginx package, enter:
## sudo apt-fast install nginx
