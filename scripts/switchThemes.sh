GHOSTTY_CONFIG="$DOTFILES/ghostty/config"
sed -i  -r "s/theme = .*/theme = $(ghostty +list-themes | awk -F '(' '{print $1}' | fzf)/g" "$GHOSTTY_CONFIG"
cat $GHOSTTY_CONFIG | grep "theme" | xargs echo
