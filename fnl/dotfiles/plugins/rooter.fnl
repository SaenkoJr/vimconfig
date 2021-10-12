(module dotfiles.plugins.rooter
  {require {util dotfiles.util}})

(util.set-var :g :rooter_silent_chdir 1)
(util.set-var :g :rooter_change_directory_for_non_project_files :current)
(util.set-var :g :rooter_patterns [".git" ".gitignore" "docker-compose.yml"
                                   "Gemfile" "Makefile" "package.json" "stack.yaml"])
