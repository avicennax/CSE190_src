DBTYPE=lmdb
EXAMPLE=data

./build/tools/compute_image_mean -backend=$DBTYPE \
  $EXAMPLE/cifar100_trainnorm_$DBTYPE $EXAMPLE/mean.binaryproto
