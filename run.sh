source tf_env/bin/activate

IMAGENET_HOME=raw
rm -rf $IMAGENET_HOME/tf_records/*
rm -rf $IMAGENET_HOME/validation/*
cd $IMAGENET_HOME/validation
wget -O cat.JPEG https://raw.githubusercontent.com/intel/caffe/master/examples/images/cat.jpg
cp cat.JPEG cat1.JPEG
for i in {1..352}
do
   cp cat.JPEG "cat$i.JPEG"
done

cd -
python3 imagenet_to_gcs.py \
  --raw_data_dir=$IMAGENET_HOME \
  --local_scratch_dir=$IMAGENET_HOME/tf_records \
  --nogcs_upload
deactivate
