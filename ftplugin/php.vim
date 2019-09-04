" Mappings for the php find usage/implementation/subclasses commands
noremap <Leader>fu :call find#PhpUsage('<cword>')<CR>
noremap <Leader>fi :call find#PhpImplementations('<cword>')<CR>
noremap <Leader>fe :call find#PhpSubclasses('<cword>')<CR>

" PHP Extract Interface
command! -range PhpExtractInterfaceFromRange <line1>,<line2>call find#PhpInterfaceFromRange()

" PHP autocomplete a class property declaration and assignment
let @p="yiw/}O$this->pA = $pA;/class/{oprivate $pA;/0nN/mlkjsdf"
