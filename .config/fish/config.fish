if test -e ~/.env
   source ~/.env
end

if status is-interactive
   fish_vi_key_bindings
end
