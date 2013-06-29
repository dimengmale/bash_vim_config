set nocompatible

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


" Ctrl + C     --���� [֧��C/C++��Java��Haskell]
" Ctrl + R     --���� [֧��C/C++��Java��Haskell��Lua��Perl��Python��Ruby]
" Ctrl + ]     --ת����������
" Ctrl + T     --���ص��ú���
" Ctrl + E     --���ע�� [����ģʽ��] [��ӵ���C���Ե���ע�ͣ�����������C/C++/Java��]
" Ctrl + E     --һ�������﷨ģ������ߡ�ʱ����Ϣ [�ǲ���ģʽ��] [������:LoadTemplate��:AuthorInfoDetect�Ľ��]

" <C-P>                  --���ʲ�ȫ
" <C-X><C-L>             --���в�ȫ
" Tab��                  --����ģʽ�µ�ȫ�����﷨�ṹ��ȫ [snipMate���]

" wm                     --�����ĵ��������
" \ww                    --����vimWikiģʽ

" za                     --�򿪻�رյ�ǰ�۵�
" zM                     --�ر������۵�
" zR                     --�������۵�

" :set syntax=cpp        --�ֶ�ѡ���﷨���� [�� :set filetype=cpp]

" :%!xxd                 --ת���������ļ�����ʮ��������ʽ��ʾ
" :%!xxd -r              --��ԭ�������ļ�



" ---------- ��Ҫ�����ϸ�÷�˵�� ---------------------

" :Tlist                 --���������ͺ����б� [TagList���]
" :FencView              --�鿴�ļ�����͸����ļ����� [FencView���]
" :LoadTemplate          --�����﷨ģ�� [Load_Template���]
" :AuthorInfoDetect      --������ߡ�ʱ�����Ϣ [NERD_commenter && authorinfo���]

" ---------- a.vim [�Զ��л�C/C++ͬ��ͷ�ļ�] ----------
"
" :A                     --�л�ͬ��ͷ�ļ�����ռ������Ļ
" :AS                    --�л�ͬ��ͷ�ļ�����ֱ������ͷ�ļ�����
" :AV                    --�л�ͬ��ͷ�ļ���ˮƽ�ָͷ�ļ�����

" ---------- mark.vim [׷�ٸ���ָ���ؼ���] ------------
"
" \m                     --normalģʽ�£�����Ҫ�����ĵ��������û�\m���ɸ�����ȡ�������õ���
" :Mark                  --ȡ�����и���
" :Mark abc              --ָ���������� abc ��ȡ������ abc

" ---------- NERDTree [�����ļ������] ----------------
"
" :NERDTree              --����NERDTree���
" o [Сд]               --�л���ǰ�ļ���Ŀ¼�Ĵ򿪡��ر�״̬
" u                      --���ϲ�Ŀ¼
" p [Сд]               --�����ϲ�Ŀ¼
" P [��д]               --���ظ�Ŀ¼
" K                      --ת����ǰĿ¼��һ���ڵ�
" J                      --ת����ǰĿ¼���Ľڵ�
" m                      --��ʾ�ļ�ϵͳ�˵� [����ɾ����]
" ?                      --���������˵�
" q                      --�˳��ò��

" ---------- snipMate [�﷨�ṹ��ȫ] -------------------
" --------- ���磺�ڱ༭C/C++Դ�ļ�ʱ�����뵥��main��Ȼ��TAB����Vim���Զ���ȫ��������main����
" --------- ���ಹȫ�����в鿴vimfilesĿ¼�µ�snippets�ļ���
" --------- �˴�ֻ˵����C/C++�Ĳ�ȫ�÷����ܶྭ�����ҵ��޸ĺ͵�������Ҳ�������е������ʺ��Լ��Ĳ�ȫ��ʽ
"
" main                   -- C/C++���� main ����
" inc                    -- #include <>
" iinc                   -- #include ""
" incs                   -- #include <stdio.h> or #include <iostream>
" using                  -- using namespace std;
" def                    -- #define
" un                     -- unsigned
" re                     -- return
" p                      -- printf("\n");
" s                      -- scanf("");
" fpr                    -- fprintf(abc, "\n");
" if                     -- if(){}
" elif                   -- elseif(){}
" el                     -- else{}
" t                      -- a ? b : c
" do                     -- do{}while();
" wh                     -- while(){}
" for                    -- for(){}
" forr                   -- for(i = 0; i < 10; i++){}
" cl                     -- class abc{};
" fun                    -- void abc(){}
" fund                   -- void abc();
" td                     -- typedef a b;
" st                     -- struct abc{};
" tds                    -- typedef struct _abc{}abc;
" tde                    -- typedef enum{};
" .                      -- []





" ��ɫ����
colorscheme koehler

" ���塢�ֺ�
"set guifont=Courier\ New:h15
set guifont=Consolas:h15

set nu                       " show line number
set autoindent               " �Զ�����
set smartindent              " �����Զ�����
set tabstop=4                " ����tab���Ŀ��
set shiftwidth=4             " ����ʱ�м佻��ʹ��4���ո�
set expandtab
set backspace=2              " �����˸������
set cindent shiftwidth=4     " �Զ�����4�ո�
set showmatch                " ��ʾ����������
set mouse=a                  " �������
set ruler                    " ���½���ʾ���λ�õ�״̬��
set incsearch                " ����bookʱ��������/bʱ���Զ��ҵ�
set hlsearch                 " ����������ʾ���
set incsearch                " ����ʵʱ��������
set nowrapscan               " �������ļ�����ʱ����������
set ignorecase smartcase     " ָʾ�༭�������ַ�����������Ŀ������ĸ�Ĵ�Сд
set nocompatible             " �رռ���ģʽ
set vb t_vb=                 " �ر���ʾ��
"set cursorline               " ͻ����ʾ��ǰ��
set hidden                   " ��������δ������޸�ʱ�л�������
set list                     " ��ʾTab����ʹ��һ�������ߴ���
set listchars=tab:\|\ ,


syntax enable                " ���﷨����
syntax on                    " �����ļ��������
filetype on
filetype indent on           " ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
filetype plugin on           " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��
filetype plugin indent on
set completeopt=longest,menu

if has("gui_running")
    "au GUIEnter * simalt ~x  " ��������ʱ�Զ����
    "set guioptions-=m       " ���ز˵���
    "set guioptions-=T        " ���ع�����
    "set guioptions-=L       " ������������
    "set guioptions-=r       " �����Ҳ������
    "set guioptions-=b       " ���صײ�������
    "set showtabline=0       " ����Tab��
endif

set writebackup              " �����ޱ����ļ�
set nobackup
set autochdir                " �趨�ļ������Ŀ¼Ϊ��ǰĿ¼
"set nowrap                  " ���ò��Զ�����
set foldmethod=syntax        " ѡ������۵�����
set foldlevel=100            " ��ֹ�Զ��۵�

" ÿ�г���80�����ַ����»��߱�ʾ
"au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.hs,*.vim 2match Underlined /.\%81v/


" ��������
set encoding=utf-8
set fileencodings=utf-8,cp936,gbk,gb18030,big5,latin1

set cmdheight=1                           " �����еĸ߶ȣ�Ĭ��Ϊ1��������Ϊ2

hi statusline ctermbg=red
set laststatus=2                          " ����״̬����Ϣ
" ״̬����ʾ������ [����ϵͳƽ̨���ļ����͡����ꡢ��ռ������ʱ���]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %y%r%m%*%=\ %{strftime(\"%y/%m/%d\ -\%H:%M\")}



" ######### ���š����š������ŵ��Զ�ƥ�� ######### "

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i

":inoremap > <c-r>=ClosePair('>')<CR>

":inoremap " ""<ESC>i

":inoremap ' ''<ESC>i

":inoremap ` ``<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf




" ######### �Զ����ݼ� ######### "

"diki �Զ����ݼ�
"ȫ������ѡ�е��ַ���
:vnoremap <silent> ,/ y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
:vnoremap <silent> ,? y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>


" ######### ��������� ######### "

"SuperTab ��tab�������в�ȫ
" 0 - ����¼�ϴεĲ�ȫ��ʽ
" 1 - ��ס�ϴεĲ�ȫ��ʽ,ֱ���������Ĳ�ȫ����ı���
" 2 - ��ס�ϴεĲ�ȫ��ʽ,ֱ����ESC�˳�����ģʽΪֹ
let g:SuperTabRetainCompletionType=2
" ���ð���<Tab>��Ĭ�ϵĲ�ȫ��ʽ, Ĭ����<C-P>, 
" ���ڸ�Ϊ<C-X><C-O>. ����<C-P>�Ĳ�ȫ��ʽ, 
" ���������Ĳ�ȫ��ʽ, ����Կ��������һЩ����:
" :help ins-completion
" :help compl-omni
"let g:SuperTabDefaultCompletionType="<C-X><C-O>"

" WinManager ֱ������ wm ����ɿ����ļ��������
let g:winManagerWindowLayout='BufExplorer,NERDTree|TagList'
let g:AutoOpenWinManager=0
nmap wm :WMToggle<cr>

" MiniBufExplorer ����ļ��л� ��ʹ�����˫����Ӧ�ļ��������л�
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" TagList ����:Tlist����
let Tlist_Show_One_File=1                             " ֻ��ʾ��ǰ�ļ���tags
let Tlist_Exit_OnlyWindow=1                           " ���Taglist���������һ���������˳�Vim
"let Tlist_Use_Right_Window=1                          " ���Ҳര������ʾ
"let Tlist_Ctags_Cmd = '/bin/ctags'
let Tlist_Ctags_Cmd='~/bin/ctags'
let Tlist_Show_Menu=1
nmap <F9> <ESC>:!ctags -R *<CR>



" ctags
" --������Ŀ����Ŀ¼ִ��ctags -R��Ȼ���Դ�ļ���������ģʽ��ִ���磺set tags=../../tags
" --�����ں������ϰ� <C-]> ����ת���������壬�� <C-T> ���Է��ص��õ�ַ
" --�����ʱ����Ҫ�ڸ�Ŀ¼������Ҳ���Խ�tags·��д�������ļ�

"set tags+=C:\Develop\MinGW\include\tags              " For C/C++
"set tags+=C:\Develop\GTK\include\tags                " For GTK+
"set tags+=C:\Develop\Lua\lua\tags                    " For Lua
"set tags+=G:\Cygwin\usr\include\tags                 " For Cygwin

" TxtBrowser ����TXT�ı��ļ�
au BufRead,BufNewFile *.txt setlocal ft=txt

" fencview �Զ�����ʶ��     :FencView   �鿴�ļ�����͸����ļ�����
let g:fencview_autodetect=1


" ######### һ������ͱ��� ######### "
" ######### ��˴�û����������Ҫ�ı�����ԣ������ʾ���������ã��ܼ򵥵�

" ����CԴ�ļ�
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc -Wall -pedantic -std=c99 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" ����C++Դ�ļ�
func! CompileCpp()
    exec "w"
    let compilecmd="!g++ -Wall -pedantic -std=c++98 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" ����JavaԴ�ļ�
func! CompileJava()
    exec "w"
    exec "!javac %"
endfunc

" ����HaskellԴ�ļ�
func! CompileHaskell()
    exec "w"
    let compilecmd="!ghc --make "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" ����LuaԴ�ļ�
func! RunLua()
    exec "w"
    exec "!lua %"
endfunc

" ����PerlԴ�ļ�
func! RunPerl()
    exec "w"
    exec "!perl %"
endfunc

" ����PythonԴ�ļ�
func! RunPython()
    exec "w"
    exec "!python %"
endfunc

" ����RubyԴ�ļ�
func! RunRuby()
    exec "w"
    exec "!ruby %"
endfunc


" �����ļ������Զ�ѡ����Ӧ�ı��뺯��
func! CompileCode()
        exec "w"
        if &filetype == "c"
            exec "call CompileGcc()"
        elseif &filetype == "cpp"
            exec "call CompileCpp()"
        elseif &filetype == "java"
            exec "call CompileJava()"
        elseif &filetype == "haskell"
            exec "call CompileHaskell()"
        elseif &filetype == "lua"
            exec "call RunLua()"
        elseif &filetype == "perl"
            exec "call RunPerl()"
        elseif &filetype == "python"
            exec "call RunPython()"
        elseif &filetype == "ruby"
            exec "call RunRuby()"
        endif
endfunc

" ���п�ִ���ļ�
func! RunResult()
        exec "w"
        if &filetype == "c"
            exec "! %<"
        elseif &filetype == "cpp"
            exec "! %<"
        elseif &filetype == "java"
            exec "!java %<"
        elseif &filetype == "haskell"
            exec "! %<"
        elseif &filetype == "lua"
            exec "!lua %<.lua"
        elseif &filetype == "perl"
            exec "!perl %<.pl"
        elseif &filetype == "python"
            exec "!python %<.py"
        elseif &filetype == "ruby"
            exec "!ruby %<.rb"
        endif
endfunc


" Ctrl + C һ�����桢����
map ^C :call CompileCode()<CR>
imap ^C <ESC>:call CompileCode()<CR>
vmap ^C <ESC>:call CompileCode()<CR>

" Ctrl + R һ�����桢����
map ^R :call RunResult()<CR>
imap ^R <ESC>:call RunResult()<CR>
vmap ^R <ESC>:call RunResult()<CR>




" ######### VimWiki д������ ######### "

" ʹ�����ӳ��
let g:vimwiki_use_mouse = 1

" ��Ҫ���շ�ʽ������Ϊ Wiki ����
let g:vimwiki_camel_case = 0

" ����������wiki����ʹ�õ�HTML��ǩ
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'

let g:vimwiki_list = [{
\ 'path': 'D:/Apps/Gvim/mysite/wiki',
\ 'path_html': 'D:/Apps/Gvim/mysite/html/',
\ 'html_header': 'D:/Apps/Gvim/mysite/template/header.html',
\ 'html_footer': 'D:/Apps/Gvim/mysite/template/footer.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'Asm': 'asm', 'C': 'c', 'C++': 'cpp','Java': 'java', 'Haskell': 'haskell', 'Lua': 'lua', 'Perl': 'perl', 'Python': 'python', 'PHP': 'php', 'HTML': 'html', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'Automake': 'AUTOMAKE'},}]

