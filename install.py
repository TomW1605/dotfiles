import os
import subprocess

def run(a):
	try:
		output = subprocess.check_output(a, shell=True, stdin=subprocess.PIPE).strip()
	except Exception as e:
		output = e
		print e
	return output

home = os.getenv("HOME")

os.chdir(home)

if os.path.isdir(home+"/dotfiles/.git"):
	os.chdir(home+"/dotfiles")
	print "git pull"
	run("git pull")
else:
	print "git clone https://github.com/TomW1605/dotfiles.git"
	run("git clone https://github.com/TomW1605/dotfiles.git")
	os.chdir(home+"/dotfiles")

for dotFile in os.listdir(home+"/dotfiles/copy"):
	if dotFile == ".DS_Store":
		continue
	run("sed -i '' 's/dotfiles\/files/dotfiles\/source/g' "+home+"/"+dotFile)
	#print(dotFile)
	newFile = open(home+"/dotfiles/copy/"+dotFile).read()
	oldFile = open(home+"/"+dotFile, "a+")
	if newFile not in oldFile.read():
		oldFile.write("\n"+newFile)
