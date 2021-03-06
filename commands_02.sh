#!/bin/bash

set -x

for t in `cat mini_nrlist`; do
    # paste -d',' $t/queries.mop2d $t/actives.2d > $t/queries.2d
    # paste -d',' $t/db.mop2d $t/inactives.2d > $t/db.2d
    mv $t/queries.2d $t/queries.mop2d
    cat $t/queries.mop2d $t/inactives.2d > $t/db.mop2d
    # cat $t/queries.mop2d $t/db.2d > $t/db.mop2d
done

# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_alpha/+/inactives.mol2  -o data/ER_alpha/+/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_alpha/+/actives.mol2    -o data/ER_alpha/+/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_alpha/-/inactives.mol2  -o data/ER_alpha/-/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_alpha/-/actives.mol2    -o data/ER_alpha/-/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/RAR_alpha/-/inactives.mol2 -o data/RAR_alpha/-/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/RAR_alpha/-/actives.mol2   -o data/RAR_alpha/-/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_beta/+/inactives.mol2   -o data/ER_beta/+/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_beta/+/actives.mol2     -o data/ER_beta/+/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/ER_beta/+/queries.mol2     -o data/ER_beta/+/queries.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/GR/+/inactives.mol2        -o data/GR/+/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/GR/+/actives.mol2          -o data/GR/+/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/GR/-/inactives.mol2        -o data/GR/-/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/GR/-/actives.mol2          -o data/GR/-/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/AR/-/inactives.mol2        -o data/AR/-/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/AR/-/actives.mol2          -o data/AR/-/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/RXR_alpha/-/inactives.mol2 -o data/RXR_alpha/-/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/RXR_alpha/-/actives.mol2   -o data/RXR_alpha/-/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/PR/+/inactives.mol2        -o data/PR/+/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/PR/+/actives.mol2          -o data/PR/+/actives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/PR/-/inactives.mol2        -o data/PR/-/inactives.2d
# ./mop2d_encoder -idx data/all_ligands.mop2d_index -i data/PR/-/actives.mol2          -o data/PR/-/actives.2d

# babel -ismi data/ER_alpha/+/inactives.smi   -omol2 data/ER_alpha/+/inactives.mol2 -d
# babel -ismi data/ER_alpha/+/actives.smi     -omol2 data/ER_alpha/+/actives.mol2 -d
# babel -ismi data/ER_alpha/-/inactives.smi   -omol2 data/ER_alpha/-/inactives.mol2 -d
# babel -ismi data/ER_alpha/-/actives.smi     -omol2 data/ER_alpha/-/actives.mol2 -d
# babel -ismi data/RAR_alpha/-/inactives.smi  -omol2 data/RAR_alpha/-/inactives.mol2 -d
# babel -ismi data/RAR_alpha/-/actives.smi    -omol2 data/RAR_alpha/-/actives.mol2 -d
# babel -ismi data/ER_beta/+/inactives.smi    -omol2 data/ER_beta/+/inactives.mol2 -d
# babel -ismi data/ER_beta/+/actives.smi      -omol2 data/ER_beta/+/actives.mol2  -d
# babel -ismi data/ER_beta/+/queries.smi      -omol2 data/ER_beta/+/queries.mol2 -d
# babel -ismi data/GR/+/inactives.smi         -omol2 data/GR/+/inactives.mol2 -d
# babel -ismi data/GR/+/actives.smi           -omol2 data/GR/+/actives.mol2 -d
# babel -ismi data/GR/-/inactives.smi         -omol2 data/GR/-/inactives.mol2 -d
# babel -ismi data/GR/-/actives.smi           -omol2 data/GR/-/actives.mol2 -d
# babel -ismi data/AR/-/inactives.smi         -omol2 data/AR/-/inactives.mol2 -d
# babel -ismi data/AR/-/actives.smi           -omol2 data/AR/-/actives.mol2 -d
# babel -ismi data/RXR_alpha/-/inactives.smi  -omol2 data/RXR_alpha/-/inactives.mol2 -d
# babel -ismi data/RXR_alpha/-/actives.smi    -omol2 data/RXR_alpha/-/actives.mol2 -d
# babel -ismi data/PR/+/inactives.smi         -omol2 data/PR/+/inactives.mol2 -d
# babel -ismi data/PR/+/actives.smi           -omol2 data/PR/+/actives.mol2 -d
# babel -ismi data/PR/-/inactives.smi         -omol2 data/PR/-/inactives.mol2 -d
# babel -ismi data/PR/-/actives.smi           -omol2 data/PR/-/actives.mol2 -d

# for t in `cat VU_QSAR_datasets`; do
#     # paste -d',' $t/queries.mop2d $t/actives.mop2d > $t/queries.2d
#     # paste -d',' $t/db.mop2d $t/inactives.mop2d > $t/db.2d
#     \cp $t/queries.2d $t/queries.mop2d
#     cat $t/queries.mop2d $t/db.2d > $t/db.mop2d
# done

# for t in `cat VU_QSAR_datasets`; do
#     echo mop2d_encoder -i $t/actives.mol2 -o $t/actives.mop2d -idx /home/berengfc/hdd/usr/VU_QSAR_datasets/attic/all_unique.mop2d_index
#     echo mop2d_encoder -i $t/inactives.mol2 -o $t/inactives.mop2d -idx /home/berengfc/hdd/usr/VU_QSAR_datasets/attic/all_unique.mop2d_index
# done

# #plot distribution of IC50 values per target
# for t in `cat mini_nrlist VU_QSAR_datasets`; do
#     echo $t/IC50.txt
#     cut -d',' -f2 $t/queries.ecfp4 | sort -n | uniq > $t/IC50.txt
#     gnuplot -persist <<EOF
# set logscale y
# set title '$t'
# plot '$t/IC50.txt' u 1 w l
# EOF
# done

# for n in `echo 2 3 4 5 6 7 8 9 10 12 15 20`; do
#     echo ./cons_size_effect -q ~/hdd/usr/VU_QSAR_datasets/463087/queries.ecfp4 \
#                            -db ~/hdd/usr/VU_QSAR_datasets/463087/db.ecfp4 -n $n -r 100
# done

# for t in `cat mini_nrlist`; do
#     echo $t
#     paste -d',' $t/queries.mop2d $t/actives.mop2d > $t/queries.2d
#     paste -d',' $t/db.mop2d $t/inactives.mop2d > $t/db.2d
#     cp $t/queries.2d $t/queries.mop2d
#     cat $t/queries.2d $t/db.2d > $t/db.mop2d
# done

# for t in `cat mini_nrlist`; do
#     echo $t
#     cut -d',' -f1 $t/queries.csv | sed 's/active//g' > $t/actives.names
#     grep -v active $t/db.csv | cut -d',' -f1 > $t/inactives.names
#     rm -f $t/actives.smi
#     for name in `cat $t/actives.names`; do
#         egrep -m1 ' '$name'$' data/all_ligands.smi >> $t/actives.smi
#     done
#     for name in `cat $t/inactives.names`; do
#         egrep -m1 ' '$name'$' data/all_ligands.smi >> $t/inactives.smi
#     done
# done

# for t in `cat VU_QSAR_datasets`; do
#     echo $t
#     # paste -d',' $t/queries.mop2d $t/actives.mop2d > $t/queries.2d
#     # paste -d',' $t/db.mop2d $t/inactives.mop2d > $t/db.tmp
#     # cat $t/queries.2d $t/db.tmp > $t/db.2d
#     mv $t/db.2d $t/db.mop2d
#     mv $t/queries.2d $t/queries.mop2d
# done

# idx=/home/berengfc/hdd/usr/VU_QSAR_datasets/attic/mop2d.idx
# for t in `cat VU_QSAR_datasets`; do
#     echo ./mop2d_encoder -idx $idx -i $t/actives.mol2 -o $t/actives.mop2d
#     echo ./mop2d_encoder -idx $idx -i $t/inactives.mol2 -o $t/inactives.mop2d
# done

# for t in `cat VU_QSAR_datasets`; do
#     echo $t
#     paste -d',' $t/queries.mop2d $t/actives.mop2d > $t/queries.2d
#     paste -d',' $t/db.mop2d $t/inactives.mop2d > $t/db.2d
# done

# # erase previous MOP2D FP
# for t in `cat VU_QSAR_datasets`; do
#     echo $t
#     cp $t/queries.csv $t/queries.mop2d
#     cp $t/db.csv $t/db.mop2d
#     sed -i -E 's/,[01]+$//g' $t/queries.mop2d $t/db.mop2d
# done

# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./002258/inactives.mol2 -o ./002258/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./002258/actives.mol2   -o ./002258/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./002689/inactives.mol2 -o ./002689/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./002689/actives.mol2   -o ./002689/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./485290/inactives.mol2 -o ./485290/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./485290/actives.mol2   -o ./485290/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./488997/inactives.mol2 -o ./488997/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./488997/actives.mol2   -o ./488997/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./001834/inactives.mol2 -o ./001834/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./001834/actives.mol2   -o ./001834/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./435034/inactives.mol2 -o ./435034/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./435034/actives.mol2   -o ./435034/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./435008/inactives.mol2 -o ./435008/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./435008/actives.mol2   -o ./435008/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./463087/inactives.mol2 -o ./463087/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./463087/actives.mol2   -o ./463087/actives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./001798/inactives.mol2 -o ./001798/inactives.mop2d 2>/dev/null
# mop2d_encoder -idx ./attic/all_unique.mop2d_index -i ./001798/actives.mol2   -o ./001798/actives.mop2d 2>/dev/null

## create .mol2 files with HA only prior to MOP2D encoding
# obabel -isdf ./002258/inactives.sdf -omol2 ./002258/inactives.mol2 -d
# obabel -isdf ./002258/actives.sdf   -omol2 ./002258/actives.mol2 -d
# obabel -isdf ./002689/inactives.sdf -omol2 ./002689/inactives.mol2 -d
# obabel -isdf ./002689/actives.sdf   -omol2 ./002689/actives.mol2 -d
# obabel -isdf ./485290/inactives.sdf -omol2 ./485290/inactives.mol2 -d
# obabel -isdf ./485290/actives.sdf   -omol2 ./485290/actives.mol2 -d
# obabel -isdf ./488997/inactives.sdf -omol2 ./488997/inactives.mol2 -d
# obabel -isdf ./488997/actives.sdf   -omol2 ./488997/actives.mol2 -d
# obabel -isdf ./001834/inactives.sdf -omol2 ./001834/inactives.mol2 -d
# obabel -isdf ./001834/actives.sdf   -omol2 ./001834/actives.mol2 -d
# obabel -isdf ./435034/inactives.sdf -omol2 ./435034/inactives.mol2 -d
# obabel -isdf ./435034/actives.sdf   -omol2 ./435034/actives.mol2 -d
# obabel -isdf ./435008/inactives.sdf -omol2 ./435008/inactives.mol2 -d
# obabel -isdf ./435008/actives.sdf   -omol2 ./435008/actives.mol2 -d
# obabel -isdf ./463087/inactives.sdf -omol2 ./463087/inactives.mol2 -d
# obabel -isdf ./463087/actives.sdf   -omol2 ./463087/actives.mol2 -d
# obabel -isdf ./001798/inactives.sdf -omol2 ./001798/inactives.mol2 -d
# obabel -isdf ./001798/actives.sdf   -omol2 ./001798/actives.mol2 -d

# # regenerate ECFP4 FPs for */db.ecfp4
# for t in `cat VU_QSAR_datasets`; do
#     echo $t
#     cat $t/queries.ecfp4 $t/db.fp4 > $t/db.ecfp4
# done

# gunzip -f ./001798/actives.sdf.gz
# gunzip -f ./001798/inactives.sdf.gz
# gunzip -f ./001834/actives.sdf.gz
# gunzip -f ./001834/inactives.sdf.gz
# gunzip -f ./002258/actives.sdf.gz
# gunzip -f ./002258/inactives.sdf.gz
# gunzip -f ./002689/actives.sdf.gz
# gunzip -f ./002689/inactives.sdf.gz
# gunzip -f ./435008/actives.sdf.gz
# gunzip -f ./435008/inactives.sdf.gz
# gunzip -f ./435034/actives.sdf.gz
# gunzip -f ./435034/inactives.sdf.gz
# gunzip -f ./463087/actives.sdf.gz
# gunzip -f ./463087/inactives.sdf.gz
# gunzip -f ./485290/actives.sdf.gz
# gunzip -f ./485290/inactives.sdf.gz
# gunzip -f ./488997/actives.sdf.gz
# gunzip -f ./488997/inactives.sdf.gz

# name2maccs=data/all_ligands.csv
# name2ecfp4=data/all_ligands.ecfp4
# name2ecfp4=/home/berengfc/hdd/usr/VU_QSAR_datasets/attic/name2ecfp4.csv

# #regenerate ECFP4 FPs for */db.csv
# for t in `cat VU_QSAR_datasets`; do
#     echo $t
#     db=$t/db.csv
#     grep -v active $db | cut -d',' -f1 > db_names
#     rm -f $t/db.fp4
#     while read name; do
#         header=`grep -m1 ^$name, $db | cut -d',' -f1,2`
#         footer=`grep -m1 ^$name, $name2maccs | cut -d',' -f2`
#         echo $header','$footer >> $t/db.fp4
#     done < db_names
#     cat $t/queries.ecfp4 $t/db.fp4 > $t/db.ecfp4
# done

# # regenerate ECFP4 FPs for queries
# for t in `cat VU_QSAR_datasets`; do
#     echo $t
#     queries=$t/queries.ecfp4
#     cut -d',' -f1 $queries | sed 's/^active//g' > query_names
#     rm -f $t/queries.fp4
#     while read name; do
#         header=`grep -m1 ^active$name, $queries | cut -d',' -f1,2`
#         footer=`grep -m1 ^$name, $name2ecfp4 | cut -d',' -f2`
#         echo $header','$footer >> $t/queries.fp4
#     done < query_names
#     mv $t/queries.fp4 $t/queries.ecfp4
# done

# git diff 001798/queries.ecfp4
# git diff 001834/queries.ecfp4
# git diff 002258/queries.ecfp4
# git diff 002689/queries.ecfp4
# git diff 435008/queries.ecfp4
# git diff 435034/queries.ecfp4
# git diff 463087/queries.ecfp4
# git diff 485290/queries.ecfp4
# git diff 488997/queries.ecfp4

# # regenerate ECFP4 FPs for db
# for t in `cat mini_nrlist`; do
#     echo $t
#     db=$t/db.ecfp4
#     grep -v active $db | cut -d',' -f1 > db_names
#     rm -f $t/db.fp4
#     while read name; do
#         header=`grep -m1 ^$name, $db | cut -d',' -f1,2`
#         footer=`grep -m1 ^$name, $name2ecfp4 | cut -d',' -f2`
#         echo $header','$footer >> $t/db.fp4
#     done < db_names
#     cat $t/queries.ecfp4 $t/db.fp4 > $t/db.ecfp4
# done

# tkdiff  data/AR/-/queries.ecfp4        data/AR/-/db.ecfp4
# tkdiff  data/ER_alpha/+/queries.ecfp4  data/ER_alpha/+/db.ecfp4
# tkdiff  data/ER_alpha/-/queries.ecfp4  data/ER_alpha/-/db.ecfp4
# tkdiff  data/ER_beta/+/queries.ecfp4   data/ER_beta/+/db.ecfp4
# tkdiff  data/GR/+/queries.ecfp4        data/GR/+/db.ecfp4
# tkdiff  data/GR/-/queries.ecfp4        data/GR/-/db.ecfp4
# tkdiff  data/PR/+/queries.ecfp4        data/PR/+/db.ecfp4
# tkdiff  data/PR/-/queries.ecfp4        data/PR/-/db.ecfp4
# tkdiff  data/RAR_alpha/-/queries.ecfp4 data/RAR_alpha/-/db.ecfp4
# tkdiff  data/RXR_alpha/-/queries.ecfp4 data/RXR_alpha/-/db.ecfp4

# # regenerate ECFP4 FPs for queries
# for t in `cat mini_nrlist`; do
#     echo $t
#     queries=$t/queries.ecfp4
#     cut -d',' -f1 $queries | sed 's/^active//g' > query_names
#     rm -f $t/queries.fp4
#     while read name; do
#         header=`grep -m1 ^active$name, $queries | cut -d',' -f1,2`
#         # echo $header
#         footer=`grep -m1 ^$name, $name2ecfp4 | cut -d',' -f2`
#         # echo $footer
#         echo $header','$footer >> $t/queries.fp4
#     done < query_names
#     mv $t/queries.fp4 $t/queries.ecfp4
# done

##regenerate MACCS FPs for */queries.csv
# for t in `cat mini_nrlist`; do
#     echo $t
#     queries=$t/queries.csv
#     cut -d',' -f1 $queries | sed 's/^active//g' > query_names
#     rm -f $t/queries.maccs
#     while read name; do
#         header=`grep -m1 ^active$name, $queries | cut -d',' -f1,2`
#         footer=`grep -m1 ^$name, $name2maccs | cut -d',' -f2`
#         echo $header','$footer >> $t/queries.maccs
#     done < query_names
#     mv $t/queries.maccs $t/queries.csv
# done

##regenerate MACCS FPs for */db.csv
# for t in `cat mini_nrlist`; do
#     echo $t
#     db=$t/db.csv
#     grep -v active $db | cut -d',' -f1 > db_names
#     rm -f $t/db.maccs
#     while read name; do
#         header=`grep -m1 ^$name, $db | cut -d',' -f1,2`
#         footer=`grep -m1 ^$name, $name2maccs | cut -d',' -f2`
#         echo $header','$footer >> $t/db.maccs
#     done < db_names
#     cat $t/queries.csv $t/db.maccs > $t/db.csv
# done

## check db files start with all the actives
# for t in `cat mini_nrlist`; do
#     tkdiff $t/queries.csv $t/db.csv
# done
