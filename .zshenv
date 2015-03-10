for dir in \
  /opt/local/bin \
  /opt/local/sbin \
  /Users/peter/Library/Python/2.7/bin
; do
  if [[ -d $dir ]]; then path=($dir $path); fi
done
export PATH

POWERLINE_CONFIG_COMMAND=/Users/peter/Library/Python/2.7/bin/powerline-config
export POWERLINE_CONFIG_COMMAND
