outputdirectory=docking_results
vinapath=~/diverse/decoys_finals/splits
for f in ./ligands/*.pdbqt; do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
${vinapath}/vina --config vina_conf.txt --cpu 1 --ligand $f --out ${outputdirectory}/${b}_out.pdbqt --log ${outputdirectory}/${b}_log.txt

done
