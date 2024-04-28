(local util (require :dotfiles.utils))

(util.set-var :g :NERDSpaceDelims 1)
(util.set-var :g :NERDCreateDefaultMappings 0)
(util.set-var :g :NERDDefaultAlign :left)

(util.noremap :n :<A-/> "<plug>NERDCommenterToggle" {:noremap false})
(util.noremap :v :<A-/> "<plug>NERDCommenterToggle" {:noremap false})
