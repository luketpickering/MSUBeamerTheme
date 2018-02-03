#!/bin/sh

INP=${1}

if [ -z ${INP} ] || [ ! -e "${INP}" ]; then
  echo "[ERROR]: Could not find input file \"${INP}\"."
  exit 1
fi

OUP=${INP%%.pdf}.embedded.pdf

gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dEmbedAllFonts=true -sOutputFile=${OUP} -f ${INP}

pdffonts ${OUP}
