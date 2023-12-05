#!/usr/bin/env bash


# wget -qO- 'https://raw.hellogithub.com/hosts'
wget -qO- 'https://raw.hellogithub.com/hosts' \
  | sudo tee /etc/hosts


