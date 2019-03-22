" Mappings for the php find usage/implementation/subclasses commands
noremap <Leader>fu :call PhpUsage('<cword>')<CR>
noremap <Leader>fi :call PhpImplementations('<cword>')<CR>
noremap <Leader>fe :call PhpSubclasses('<cword>')<CR>

" PHP autocomplete a class property declaration and assignment
let @p="yiw/}O$this->pA = $pA;/class/{oprivate $pA;/0nN/mlkjsdf"
