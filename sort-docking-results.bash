outputdirectory=docking_results
for f in ./ligands/*.pdbqt; do
    b=`basename $f .pdbqt`
   score=`cat ${outputdirectory}/${b}_log.txt | grep "   1  " | awk ' { print $2 } ' `
  echo " ${b} ${score}" >> all_docking_scores.txt
done

cat all_docking_scores.txt | sort -n -k2 > all_docking_scores_sorted.txt
