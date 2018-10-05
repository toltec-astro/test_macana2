#! /bin/sh
#
# run_idl.sh
# Copyright (C) 2018 Jerry Ma <jerry.ma.nk@gmail.com>
#
#----------------------------------------------------------------------------
#"THE BEER-WARE LICENSE" (Revision 42):
#Jerry wrote this file. As long as you retain this notice you
#can do whatever you want with this stuff. If we meet some day, and you think
#this stuff is worth it, you can buy me a beer in return Poul-Henning Kamp
#----------------------------------------------------------------------------


if [[ ! $1 ]]; then
    echo "usage: $0 <.nc file>"
    exit 1
fi
infile=$1
inname=${infile##*/}
outfile=output_idl/${inname%.*}_out.nc

params="sigma_cut=3.0, despike=15.0, /overwrite_cleanfile"
script="aztec_beammap_wrapper, \"${infile}\", outfile=\"${outfile}\", ${params}"
echo ${script}
${HOME}/Codes/exelis/idl82/bin/idl -e "${script}"
