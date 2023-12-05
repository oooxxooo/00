#!/usr/bin/env bash


cd $( dirname $0 )


killall python

../code/remind/remind.pyw &


