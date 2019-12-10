#!/usr/bin/env bash
pct stop 300
pct stop 301
pct stop 302
pct stop 303
pct stop 304

pct destroy 300 --purge
pct destroy 301 --purge
pct destroy 302 --purge
pct destroy 303 --purge
pct destroy 304 --purge