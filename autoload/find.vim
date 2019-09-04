" PHP Find Usage
function! find#PhpUsage(word)
    exe 'Ack "::' . a:word . '\(|>' . a:word . '\("'
endfunction

" PHP Find Implementations
function! find#PhpImplementations(word)
    exe 'Ack "implements.*' . a:word . ' *($|{)"'
endfunction

" PHP Find Subclasses
function! find#PhpSubclasses(word)
    exe 'Ack "extends.*' . a:word . ' *($|{)"'
endfunction

function! find#PhpInterfaceFromRange() range
  let interface = input('Enter extracted interface name: ')
  call find#PhpExtractInterface(a:firstline, a:lastline, interface)
endfunction

function! find#PhpExtractInterface(start, end, interface)
  normal! qkq
  execute ''.a:start.','.a:end.'g/public.*function.*(\_.\{-})/normal ^f(V%"Ky'
  let @k = substitute(@k, ' \?{', '', 'g')
  let @k = substitute(@k, ')', ');', 'g')
  ?class
  execute "normal! A implements ".a:interface
  execute "normal! Ointerface ".a:interface
  execute "normal! o{\<CR>}\<CR>"
  normal! k"kP
  normal! dd
endfunction

