(module dotfiles.plugins.bufferline
  {require {bufferline bufferline
            util dotfiles.util}})

(bufferline.setup {:options {:numbers :none
                             :show_buffer_close_icons false
                             :show_close_icon false}})

