(module saenkomm.plugins.bufferline
  {require {bufferline bufferline
            util saenkomm.util}})

(bufferline.setup
  {:options {:mode :tabs
             :numbers :none
             :always_show_bufferline false
             :show_buffer_close_icons false
             :show_close_icon false}})
