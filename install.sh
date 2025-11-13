The somebody say : just eat 

wget -O- https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip | bsdtar -xvf- -C ~/.local/share/fonts && fc-cache -fv








mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip && unzip -o JetBrainsMono.zip && rm JetBrainsMono.zip && fc-cache -fv