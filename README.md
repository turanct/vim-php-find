# Vim PHP Find

This plugin was written to have some more finding/refactoring abilities for PHP in vim, when using the [refactoring browser](https://github.com/vim-php/vim-php-refactoring).


## Functionality

- Find usage of a method
- Find implementations of an interface
- Find subclasses of a class (extends)
- Extract an interface
- Write assignments of class properties


## DISCLAIMER

This stuff doesn't take any care to your files. Always check the outcome yourself. It's completely based on some simple search queries and basic vim functionality. It doesn't use AST's or doesn't really parse your code, so it's very prone to errors.


## Dependencies

This plugin depends on [Ack.vim](https://github.com/mileszs/ack.vim). Install that first. You can make it faster by installing [ag](https://github.com/ggreer/the_silver_searcher) and setting the `ackprg` for that plugin:

```vim
" Ack -> Ag
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
```


## Installing

Use your favorite plugin manager to install this plugin.

