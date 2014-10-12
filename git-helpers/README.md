Git Helpers
===========
Scripts for helping in git tasks.

Helpers
-------
* [ggp](https://github.com/hermanzdosilovic/scripts/tree/master/git-helpers#ggp) - global `git pull` script

###ggp
1. In your `~/.profile` export a `REPO` variable that contains paths to your git repositories:

		export REPO="$HOME/workspace/project1"
		export REPO=$REPO:"$HOME/Documents/project2"
		export REPO=$REPO:"/Volumes/MyHDD/workspace/my-secret-project"
	
	This is just an example. I prefere one path per line, because I can then easily remove one from `$REPO`.

2. Download script and make it executable:
	
		$ chmod +x ggp
	
3. Copy or move script in some directory that is included in your `$PATH` environment variable.
	
	Copy:
	
		$ cp ggp /usr/local/bin
	
	Or move:
	
		$ mv ggp /usr/local/bin 
		
		
Now you will be able to use `ggp` from terminal anywhere you are and it will do `git pull` on all of your repositories that you included in `$REPO` environment variable.

