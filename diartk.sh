
meetingname=ES2013c
echo $meetingmane

#HCopy -C ./conf/hcopy.conf ./amicorpus/AMI1/${meetingname}/audio/${meetingname}.Array1-01.wav ./data/mfcc/${meetingname}_Array1-01.fea
echo $meetingname
maxdur=250

outputdir=mfcc${maxdur}
mkdir -p ${outputdir}/${meetingname}

diarizeme \
    --mfcc data/mfcc/${meetingname}_Array1-01.fea 1 \
    --recid ${meetingname}\
    --maxdur ${maxdur} \
    --outdir ${outputdir}/${meetingname} \
    --tmpdir ${outputdir}/${meetingname} \
    -s data/scp/${meetingname}.scp \
    --beta 10 \
    --NMIvalue 0.3 \
    --nthread 8

#../deranalysis/deranalysis.sh ${meetingname}
echo $scptype
