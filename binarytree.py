#!/usr/bin/python

import sys
	
def print_instr():
	print "Usage: "
	print "python binarytree.py [node-depth]"
	sys.exit()

#not actually needed. oops
def is_power(num):
	if num == 0:
		true 
	elif (num % 2) == 0:
		return is_power(num / 2)
	return false

def get_tree_size(depth):
	return ((2 ** depth) - 1)

def calculate_tree(size):
	print "This is tree size: ", size
	tree_arr = []
	for i in range(0,size):
		tree_arr.append(i)
	return

def run():
	if len(sys.argv) < 2:
		print 'Not enough arguments'
		print_instr()

	if len(sys.argv[1]) > 0:
		tree_size = get_tree_size(int(sys.argv[1]))
		calculate_tree(tree_size)
	return

run()