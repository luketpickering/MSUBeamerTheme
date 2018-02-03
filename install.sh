#!/bin/bash

SDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

TEXEMFH=$(kpsewhich -var-value=TEXMFHOME)

echo "Install Beamer theme into ${TEXEMFH}/tex/latex/MSU_Light ? y/[n]"
read -n 1 A

if [ "${A}" == "y" ]; then
  set -x
  mkdir -p ${TEXEMFH}/tex/latex/MSU_Light
  cp ${SDIR}/*.sty ${TEXEMFH}/tex/latex/MSU_Light/
  cp -r ${SDIR}/MSU_design_elements ${TEXEMFH}/tex/latex/MSU_Light/
  texhash ${TEXEMFH}
  set +x
fi
