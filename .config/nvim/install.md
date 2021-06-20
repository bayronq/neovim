#Instalación de Plugins en neovim

#Descargar repo
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Descargar mydotfiles, estar en el path ~/
git clone https://github.com/bayronq/mydotfiles

#copiar carpeta nvim al pat:
~/.config/nvim     

#referenciaar el archivo init.vim desde el repositorio, ejemplo:
ln -s ~/mydotfiles/nvim/init.vim init.vim

#Instalar Plugins de neovim
nvim +PlugIntall

#Descargar repo del tema onedark para nvim, se debe estar en ~/.config/nvim/themes/
git clone https://github.com/bayronq/onedark.vim.git

#reiniciar archivo init.vim
source ~/.confing/nvim/init.vim

#Ejecutar comando:
nvim + PlugInstall


