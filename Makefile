install-lsp-servers:
	make install-docker-lsp
	make install-bash-lsp
	make install-yaml-lsp
	make install-typescript-lsp
	make install-efm-lsp
	make install-solargraph-lsp
	make install-html-lsp
	make install-css-lsp
	make install-json-lsp

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
	npm i -g typescript-language-server

install-efm-lsp:
	go get github.com/mattn/efm-langserver
	asdf reshim go

install-solargraph-lsp:
	gem install solargraph
	asdf reshim ruby
