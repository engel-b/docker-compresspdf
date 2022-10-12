#!/bin/sh
#
# Run compression, meant to reside on the container.
#

set -e

if [ -z "$1" ]; then
  echo "Please provide the type (screen, ebook, printer)."
  echo ""
  echo "docker run --rm engelb/compresspdf ebook"
  echo ""
  exit 0;
fi

mkdir -p original
mkdir -p compressed

for pdf in *.pdf; do
  echo "Processing $pdf..."
  compressedPdf="$pdf".compressed.pdf
  /run.sh "$1" "$pdf" "$compressedPdf"
  echo "Done..."

  if test -f "$compressedPdf"; then
    echo "$compressedPdf exists. Move and rename"
    mv "$pdf" original/.
    mv "$compressedPdf" compressed/"$pdf"
  fi
done

