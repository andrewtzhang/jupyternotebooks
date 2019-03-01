# %load dataproc.py
import binvox_rw
import numpy as np
from pathlib import Path
from glob import iglob
import glob
import os
from sklearn.model_selection import train_test_split

def get_immediate_subdirectories(a_dir):
    return [name for name in os.listdir(a_dir)
            if os.path.isdir(os.path.join(a_dir, name))]

os.chdir(os.path.dirname(os.getcwd()))
currentdir = os.getcwd()
#os.system("C:\Windows\System32\cmd.exe /c C:\\Users\\775657\\Documents\\jupyternotebooks\hellothere.bat")

splits = ['train','test']
def_path = currentdir + '/data/ModelNet2/'
types = get_immediate_subdirectories(def_path)
x = []
y = []

for typ in range(len(types)): #Model Directory
    
    for split in range(len(splits)): #test/train splits
        sof_paths =[]
        full_path = def_path + types[typ] + '/' + splits[split] + '/*.binvox'
        for filepath in iglob(full_path):
            sof_paths.append(filepath)
        
        for file in range(len(sof_paths)): #File
            
            #Voxels
            with open(sof_paths[file], 'rb') as f:
                model = binvox_rw.read_as_3d_array(f)
            x.append([model.data])
            
            #Labels
            label = [0] * len(types)
            label[typ] = 1
            y.append(label)

x = np.reshape(np.array(x, dtype=int), (572, 32, 32, 32, 1))
y = np.array(y, dtype=float)

x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=0.2, random_state=442)

x=None
y=None

def data():
	return x_train, x_test, y_train, y_test