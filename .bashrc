if [ -d /etc/skel/.bashrc ]
then
	source /etc/skel/.bashrc
fi

source ~/.bash-alias
source ~/.bash-prompt-for-git.sh
source ~/.bash-history
