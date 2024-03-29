install-lsp-servers:
	make install-docker-lsp
	make install-bash-lsp
	make install-yaml-lsp
	make install-typescript-lsp
	make install-solargraph-lsp
	make install-html-lsp
	make install-css-lsp
	make install-json-lsp

clojure:
	yay -S clj-kondo-bin

install-docker-lsp:
	npm i -g dockerfile-language-server-nodejs

install-bash-lsp:
	npm i -g bash-language-server

install-yaml-lsp:
	npm i -g yaml-language-server

install-json-lsp:
	npm i -g vscode-json-languageserver-bin

install-html-lsp:
	npm i -g vscode-html-languageserver-bin

install-css-lsp:
	npm install --global vscode-css-languageserver-bin

install-typescript-lsp:
	npm i -g typescript typescript-language-server

install-solargraph-lsp:
	gem install solargraph
	asdf reshim ruby

install-racket:
	asdf plugin-add racket
	asdf install racket latest
