
#!/bin/bash
if [[ -f "input.mp4" ]]
then
    rm input.mp4
fi
mv ~/Downloads/input.webm -f ~/Desktop/web
# new  trying
#old wway : ffmpeg -i input.webm input.mp4 && rm input.webm
ffmpeg -fflags +genpts -i input.webm -r 24 input.mp4 && rm input.webm
cp -f input.mp4 recorded
#rm ~/Desktop/web/output/output.mp4
/home/homan/openface/newfile/OpenFace/build/bin/FeatureExtraction -f input.mp4 -out_dir processed
ffmpeg -y -loglevel info -i processed/input.avi output/output.mp4
ffmpeg -fflags +genpts -i processed/input.avi -r 24 output.mp4
mv output.mp4 -f /output




