main:
	sudo make full

get_clang:
	git clone https://github.com/TwinProduction/clang_complete.git
	mv clang_complete/doc/* doc/
	mv clang_complete/plugin/* plugin/

install_to_root:
	sudo mkdir -p /root/.vim/autoload /root/.vim/doc /root/.vim/plugin
	sudo cp -a autoload/* /root/.vim/autoload/
	sudo cp -a doc/* /root/.vim/doc/
	sudo cp -a plugin/* /root/.vim/plugin/

install_to_current_user:
	sudo mkdir -p ~/.vim/autoload ~/.vim/doc ~/.vim/plugin
	cp -a autoload/* ~/.vim/autoload/
	cp -a doc/* ~/.vim/doc/
	cp -a plugin/* ~/.vim/plugin/

install: install_to_root install_to_current_user
	sudo mv vimrc /etc/vim/vimrc

full: get_clang install
	