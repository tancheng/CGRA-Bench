#!/usr/bin/env python
"""
=========================================================================
trimJSON.py
=========================================================================
A python file used to trim the generated JSON to adapt to the target
CGRA architecture with various constraints.

Author : Cheng Tan
  Date : September 10, 2019
"""
import os
import sys
import argparse
import re
import json
from collections import OrderedDict
#import rhinoscriptsyntax as rs
#from pathlib import Path

def main():

  with open('test.json') as json_file:
    configAll = json.load(json_file, object_pairs_hook=OrderedDict)

  for configItem in configAll:

    # change the name of the first bypass
    if 'bps_dst0' in configItem and configItem['bps_dst0'] != None:
      configItem['bps_src'] = configItem.pop('bps_src0')
      configItem['bps_dst'] = configItem.pop('bps_dst0')

    # change the name of the second bypass
    if 'bps_dst1' in configItem and configItem['bps_dst1'] != None:
      configItem['bps_alt_src'] = configItem.pop('bps_src1')
      configItem['bps_alt_dst'] = configItem.pop('bps_dst1')

    # perform the third bypass using alu
    if 'bps_dst2' in configItem and configItem['bps_dst2'] != None:
      assert( configItem['op'] == 'none')
      configItem['op']  = 'cp0'
      configItem['src_a'] = configItem.pop('bps_src2')
      configItem['dst'] = configItem.pop('bps_dst2')

  # update the key
  for configItem in configAll:
    # handle 'load'
    if configItem['op'] == 'load':
      configItem['op'] = 'cp0'
      if configItem['src_b'] == 'self':
        assert( configItem['src_a'] != 'self' )
        configItem['src_b'] = configItem['src_a']
        configItem['src_a'] = "S"
      elif configItem['src_a'] == 'self':
        assert( configItem['src_b'] != 'self' )
        configItem['src_a'] = "S"
      else:
        assert( 0 )

    elif configItem['op'] == 'getelementptr':
      configItem['op'] = 'add'

    elif configItem['op'] == 'fadd':
      configItem['op'] = 'add'

    elif configItem['op'] == 'fsub':
      configItem['op'] = 'sub'

    elif configItem['op'] == 'fmul':
      configItem['op'] = 'mul'

    elif configItem['op'] == 'icmp':
      configItem['op'] = 'cmp'

    OrderedDict(configItem)

  with open('test_pro.json', 'w') as outfile:
    json.dump(configAll, outfile, indent = 2)

main()
