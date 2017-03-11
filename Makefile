main:
	make install

get_clang:
	git clone https://github.com/TwinProduction/clang_complete.git
	mv clang_complete/doc/* doc/
	mv clang_complete/plugin/* plugin/

install_to_root:
	sudo mkdir /root/.vim/autoload /root/.vim/doc /root/.vim/plugin
	sudo cp autoload/* /root/.vim/autoload/
	sudo cp doc/* /root/.vim/doc/
	sudo cp plugin/* /root/.vim/plugin/

install_to_current_user:
	sudo mkdir ~/.vim/autoload ~/.vim/doc ~/.vim/plugin
	cp autoload/* ~/.vim/autoload/
	cp doc/* ~/.vim/doc/
	cp plugin/* ~/.vim/plugin/

install: install_to_root install_to_current_user
	sudo mv vimrc /etc/vim/vimrc

full-install: get_clang install
	