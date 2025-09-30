import os
import subprocess

def run(a):
	try:
		output = subprocess.check_output(a, shell=True, stdin=subprocess.PIPE).strip()
	except Exception as e:
		output = e
		print(e)
	return output

home = os.getenv("HOME")

os.chdir(home)

if type(run("git")) == subprocess.CalledProcessError:
	run("sudo apt-get install git -y")

if os.path.isdir(home+"/dotfiles/.git"):
	os.chdir(home+"/dotfiles")
	print("git pull")
	run("git pull")
else:
	print("git clone https://github.com/TomW1605/dotfiles.git")
	run("git clone https://github.com/TomW1605/dotfiles.git")
	os.chdir(home+"/dotfiles")
	run("git update-index --assume-unchanged source/personal.sh")

for dotFile in os.listdir(home+"/dotfiles/copy"):
	if dotFile == ".DS_Store":
		run("rm "+home+"/dotfiles/copy/"+dotFile)
		continue
	newFile = open(home+"/dotfiles/copy/"+dotFile)
	oldFile = open(home+"/"+dotFile, "a+")
	oldFileText = open(home+"/"+dotFile, "r").read()
	if oldFileText != '':
		oldFile.write("\n")
	for line in newFile:
		if line not in oldFileText:
			oldFile.write(line)
	newFile.close()
	oldFile.close()

for linkFile in os.listdir(home+"/dotfiles/link"):
	if linkFile == ".DS_Store":
		run("rm "+home+"/dotfiles/link/"+linkFile)
		continue
	if os.path.islink(home+"/"+linkFile):
		continue
	elif os.path.isfile(home+"/"+linkFile):
		print(linkFile+" already exists in your home directory. please copy the contents of "+home+"/dotfiles/link/"+linkFile+" manually")
	else:
		os.symlink(home+"/dotfiles/link/"+linkFile, home+"/"+linkFile)
