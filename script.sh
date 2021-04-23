
#!/bin/bash

mv ~/Downloads/input.webm -f ~/Desktop/web
ffmpeg -i input.webm input.mp4 && rm input.webm
cp -f input.mp4 recorded
#rm ~/Desktop/web/output/output.mp4
/home/homan/openface/newfile/OpenFace/build/bin/FeatureExtraction -f input.mp4 -out_dir processed
ffmpeg -y -loglevel info -i processed/input.avi output/output.mp4




