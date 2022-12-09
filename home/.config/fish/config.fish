if test -e ~/.env
   source ~/.env
end

if test -d $HOME/.cargo/bin
   export PATH="$HOME/.cargo/bin:$PATH"
end

if status is-interactive
   fish_vi_key_bindings
end
