import h5py
import numpy as np
import MMA_administration as MMA

with open('msg.tmp','r') as msg_file:
    results_file = msg_file.readline()[:-1] # need to strip the last character due to Fortran msg.tmp
    
with h5py.File(results_file, 'a') as h5f:
    h5f[MMA.paths['Hankel_inputs']+'/store_cumulative_result'][()] = int(False)

print("Done")
