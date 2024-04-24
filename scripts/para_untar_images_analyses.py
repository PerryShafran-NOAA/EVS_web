import os
import glob

os.chdir('/home/people/emc/www/htdocs/users/verification/analyses/para/tar_files')

tar_file_list = glob.glob('evs.plots.analyses.atmos.*.tar')
for tar_file in tar_file_list:
    print(tar_file)
    image_dir = '../grid2obs/images/'
    if not os.path.exists(image_dir):
        os.makedirs(image_dir)
    os.system('tar -xvf '+tar_file+' -C '+image_dir)
    os.remove(tar_file)
