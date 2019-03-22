" PHP Find Usage
function! PhpUsage(word)
    exe 'Ack "::' . a:word . '\(|>' . a:word . '\("'
endfunction

" PHP Find Implementations
function! PhpImplementations(word)
    exe 'Ack "implements.*' . a:word . ' *($|{)"'
endfunction

" PHP Find Subclasses
function! PhpSubclasses(word)
    exe 'Ack "extends.*' . a:word . ' *($|{)"'
endfunction

" PHP Extract Interface
command! -range PhpExtractInterfaceFromRange <line1>,<line2>call PhpInterfaceFromRange()

function! PhpInterfaceFromRange() range
  let interface = input('Enter extracted interface name: ')
  call PhpExtractInterface(a:firstline, a:lastline, interface)
endfunction

function! PhpExtractInterface(start, end, interface)
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

