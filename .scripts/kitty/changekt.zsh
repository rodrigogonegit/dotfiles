#!/bin/zsh
# rodrigogonegit @ github.com

if [ "$#" -lt 1 ]; then
    echo "Expecting at least one parameter. What's the theme?"
    exit
fi

rm $KITTY_CONFIG_PATH/theme.conf
cp $KITTY_THEMES_PATH/$1 $KITTY_CONFIG_PATH/theme.conf

echo "# Current Theme:$1\n\n$(cat ~/.config/kitty/theme.conf)" > $KITTY_CONFIG_PATH/theme.conf

# Remove background from text (color0) because I don't like it
# To see it, comment this code, and execute "ls"
BG_COLOR=$(grep -oE '#.*' $KITTY_CONFIG_PATH/theme.conf | head -2 | tail -1)
sed -i -e 's/color0.*/#Color value replaced by changekt script\ncolor0 '$BG_COLOR' /g' $KITTY_CONFIG_PATH/theme.conf