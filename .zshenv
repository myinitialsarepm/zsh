for dir in \
  /opt/local/bin \
  /opt/local/sbin
; do
  if [[ -d $dir ]]; then path=($dir $path); fi
done
export PATH

POWERLINE_COMMAND=/opt/local//Library/Frameworks/Python.framework/Versions/2.7/bin/powerline
export POWERLINE_COMMAND
POWERLINE_CONFIG_COMMAND=/opt/local//Library/Frameworks/Python.framework/Versions/2.7/bin/powerline-config
export POWERLINE_CONFIG_COMMAND
