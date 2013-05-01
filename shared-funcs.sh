#!/bin/bash

report_debug_info() {
    env
    which stereo
    which point2dem
}

startup_cleanup() {
    d=../data
    dir=run
    rm -rfv $dir
    report_debug_info
}
