if [ $(uname -s) = "Darwin" ]
then
	for dir in \
	  /opt/local/bin \
	  /opt/local/sbin
	; do
	  if [[ -d $dir ]]; then path=($dir $path); fi
	done
	export PATH
fi

if [ $(uname -s) = "Darwin" ]
then
	POWERLINE_COMMAND=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/powerline
	POWERLINE_CONFIG_COMMAND=/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/powerline-config
elif [ $(uname -s) = "Linux" ]
then
	POWERLINE_COMMAND=/home/peter/.local/bin/powerline
	POWERLINE_CONFIG_COMMAND=/home/peter/.local/bin/powerline-config
fi

export POWERLINE_COMMAND
export POWERLINE_CONFIG_COMMAND
