#!/usr/bin/env bash
rm -rf results*
jmeter -n -t Ora_Native.jmx -l results_Ora_Native.jtl -e -o results_Ora_Native