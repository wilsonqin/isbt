#!/usr/bin/python

import sys
	
def print_instr():
	print "Usage: "
	print "python binarytree.py [node-depth]"
	sys.exit()

def get_sets(depth):
	if depth == 0:
		return 1
	elif depth == 1:
		return 2
	elif depth == 2:
		return 5
	else:
		return pow(get_sets(depth-2),4) + pow(get_sets(depth-1),2)

def run():
	if len(sys.argv) < 2:
		print 'Not enough arguments'
		print_instr()

	if len(sys.argv[1]) > 0:
		print get_sets(int(sys.argv[1]))
	return


run()