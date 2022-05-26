# Little script to compile the CoC Vim plugin as fast as possible

sudo dnf install nodejs npm -y
npm install yarn 
cd $HOME/.local/share/nvim/plugged/coc.nvim && yarn install
cd ~

