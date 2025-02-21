(fn build [on-attach]
  {:on_attach on-attach
   :settings {:pylsp {:plugins {:pycodestyle {:enabled false}}}}})

{: build}
