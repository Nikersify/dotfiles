# Defined in - @ line 1
function ngrm --wraps='npm uninstall -g' --description 'alias ngrm npm uninstall -g'
  npm uninstall -g $argv;
end
