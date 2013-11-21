Cheat sheet for Dylan's VIM
========

Basic Operations
--------

        N<command>          Repeat the command N times
        <start position><command><end position>     Execute command from start position to end position

        :help <command>     Read help file
        g_                  go to the last non blank character of this line
        :saveas <path/to/file>  save as another file
        :x or ZZ or :wq     save and exit (:x means save when needed)
        :qa!                Exit all editing files without save
        :bn and :bp and :n  Go to the next editing files when open multiple files

        w                   To the beginning of next word
        e                   To the end of the next word
        w/e means a word consist of letters, digits and _
        W/E means a word is seperated with blanks

        gU                  turn letters to upper case letter
        gu                  turn letters to lower case letter

        f<char>             goto the next <char> of this line
        F<char>             goto the last <char> of this line

        t<char>             Go till <char>, without <char>
        T<char>             Reverse direction till <char>

        <action>a/i<object> Do an action on a special scope, action can be d/y/v ... object can be w/s(entence)/p(aragraph) or )/ ]/ }...

        Block operations
        0 <C-v> <C-d> I--   Insert -- in front of several lines


Macro
--------

        qa <operations> q       Remember your operations in register a
        @a                      Replay macros in register a
        @@                      Replay the latest remembered macros


key mappings
--------

- Some key replacements

        ,   This is leader key
        ;   This replace :

- Some key bindings

        ,w  Save file in normal mode
        <F3>    Insert timestamp in normal and insertion mode
        <F12>   Enter paste mode
        jj  Replace ESC in insertion mode
        *   Search for the current selection
        #   Same as *, but in a reverse direction



Vundle sections
--------

- vim-fugitive

        [Short keys](https://github.com/tpope/vim-fugitive)

- vim-surround

        cs"' [inside] "hello" ==> 'hello'
        ds"  "hello" ==> hello
        ysiw" hello ==> "hello"

- vim-repeat

        . repeat

- tagbar

        <F9>    open tagbar

        <c-]>   Go to the definition of any identifier
        <c-t>   Return back, it's ok with no confliction

- emmet-vim

        <C-y>   shortcut for emmet-vim, useful in html/css development


- EasyEmotion

        ,,f<char>   Find a char behind current position
        ,,F<char>   In a reverse direction
        ,,w     Find the word behind current position

- The Nerd Tree

        <c-u>   NERDTreeToggle

- Syntastic

        <CR>    In normal mode, list buffers
        t       In buffer lists, open buffer in a new tab
        ,bv     Vertical split the window
        ,bs     Horizontal split open the window

- Vim-multiple-cursors

        <C-n>   Press the key in normal mode highlights the current word under the cursor, press again to find the next on

- Vim-commentary

        <BS>    Comment and uncomment code in normal and visual mode

- Vim-expand-region

        +   expand selected region
        -   shrink selected region

- vim-trailing-whitespace

        ,,<space>   delete trailing whitespace

- neocomplcache

        <C-g>   undo completion
        <C-l>   complete common string

        <TAB>   completion

        <C-e>   cancel popup

        Below are also the default keys for auto complete in insert mode
        <C-n>   next completion
        <C-p>   previous completion

- neosnippet

        <C-k>   select and expand a snippet
                jump to the next field in the snippet
        <Tab>   select the next field to fill in the snippet

- ctrlp

        ,p      open ctrlp
        ,f      Show recently opened files

        Once opened
        ,f      Switch between searching areas
        ,j      Move down
        ,k      Move up
        <c-t>   Open selected entry in a new tab
        <c-v>   Open selected entry in a new vertical split
        <c-x>   Open selected entry in a new Horizontal split


Moving around, tabs and buffers
--------

    ,<cr>   Disable highlight

    Smart way to move between windows
    Norm model
    <C-j>   Move to the down window
    <C-k>   Move to the up window
    <C-h>   Move to the left window
    <C-l>   Move to the right window

    Buffer related
    ,q      Quickly open a buffer for scripbble
    ,bd     Close the current buffer
    ,ba     Close all the buffers

    Useful tips for managing tabs
    ,tn     New tab
    ,to     Close all other tabs (show only the current tab)
    ,tc     Close current tab
    ,tm     Move current tab to last
    ,t,     Next tab, same as gt
    ,te     Open a new tab with the current buffer's path
    ,cd     Switch CWD to the directory of the open buffer

Vimgrep searching and cope displaying
--------

    gv      vimgrep the last selected text
    ,g      Open vimgrep and put the cursor in the right position
    ,<space>    Vimgreps in the current file
    ,r      Search and replace the selected text
    K   Take to help of that word

