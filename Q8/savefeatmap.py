import matplotlib as mt
mt.use('Agg')
import caffe
import numpy as np
import sys

if __name__ == "__main__":
	# sys.argv[1] = net prefix
	# sys.argv[2] = model prefix
	# sys.argv[3] = model _iter_
	# sys.argv[4] = output directory

	if len(sys.argv) != 5:
		raise ValueError("4 args required")

	net = caffe.Net(sys.argv[1]+".prototxt", sys.argv[2]+"_iter_"+sys.argv[3]+".caffemodel", caffe.TEST)
	c1 = net.params['conv1'][0].data
	c2 = net.params['conv2'][0].data
	np.save(sys.argv[4]+'c1map.npy', c1)
	np.save(sys.argv[4]+'c2map.npy', c2)

