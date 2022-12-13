#!/bin/bash
#
# This shell skript cuts two columns from file 2022-11-25-Article_list_dirty.tsv does some additional
# data cleansing and writes the output to a file ergebnis.tsv. 
#
# To be sure that the data cleansing is correct we do a diff between output file and given file. If 
# both files are identical we rename the interims output file ergebnis.tsv to 2022-11-25-Dates_and_ISSNs.tsv

sed -r 's/IMPORTANT\t\t//' 2022-11-25-Article_list_dirty.tsv | cut -f 5,12 | sed -r 's/ISSN:[ ]{0,2}//I' | sort | uniq | grep ^[0-9] > ergebnis.tsv
diff -w ergebnis.tsv 2022-11-25-Dates_and_ISSNs.tsv

if [ $? -ne 0 ]; then
  echo "Files aren't identical. Try again!"
else
  mv ergebnis.tsv 2022-11-25-Dates_and_ISSNs.tsv
  echo "Files are identical. Done."
fi