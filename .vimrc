"===============================================================================

"Filename:  ~/.vimrc

"Author: 	liu gang

"Email:		lgnice@sina.com

"Homepage:	http://blog.csdn.net/sabalol

"Created:	2008-1-18

"===============================================================================

"--------------------------------------------------------------------------------
"
"  快捷键设置
"
"--------------------------------------------------------------------------------
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DoxygenToolkit.vim keyboard shortcuts

map <F4>a :DoxAuthor
map <F4>f :Dox
map <F4>b :DoxBlock
map <F4>c O/** */<Left><Left>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"doxygen.vim keyboard shortcuts

nmap co :set syntax=doxygen.cpp<cr>
nmap ci :sy on <cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" winmanager.vim keyboard shortcuts

nmap wm :WMToggle<cr> 
"nmap <C-w><C-b> :BottomExplorerWindow<cr> " 切换到最下面一个窗格
"nmap <C-w><C-f> :FirstExplorerWindow<cr>   " 切换到最上面一个窗格
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" a.vim keyboard shortcuts
" 在对应的头文件和源文件之间切换
nmap ch :A <cr>
"nnoremap <silent> <F12> :A<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" c.vim keyboard shortcuts
"       F9   compile and link
"   Alt-F9   write buffer and compile
"  Ctrl-F9   run executable
" Shift-F9   set command line arguments

"Shift-F2   switch between source files and header files, it need a.vim
"The Shift-key is dead when you are working with Vim in a console terminal
"(non-Gui). You could add

"  noremap   \a        :A<CR>
" inoremap   \a   <C-C>:A<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"多窗口操作
"按wv垂直分割当前窗口
nmap wv     <C-w>v    
"按ws水平分割当前窗口
nmap ws     <C-w>s    
"按wc闭当前窗口
nmap wc     <C-w>c    
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"  模仿MS Windows中的快捷键
"复制 Ctrl+C
"vmap <C-c> "yy		
"剪切 Ctrl+X
"vmap <C-x> "yd		
"粘贴 Ctrl+V
"nmap <C-v> "ayp
"全选 Ctrl+A
"nmap <C-a> ggvG$
"保存 Ctrl+s
"imap <C-s> <Esc>:wa<cr>i<Right>
"nmap <C-s> :wa<cr>

"nmap <F6> :cn<cr> 



"--------------------------------------------------------------------------------
"
"  VIM配置说明
"
"--------------------------------------------------------------------------------
"
"在用户主目录下建立.vimrc文件，复制本文内容到.vimrc中

"目录
"	~/.vim
"	~/.vim/doc	帮助文件的目录
"	~/.vim/plugin	插件的目录
"	~/.vim/syntax	语法目录
"	~/.vimrc	vim配置文件	

"使用helptags ~/.vim/doc更新doc下的文件


"--------------------------------------------------------------------------------
"
"  常规设置
"
"--------------------------------------------------------------------------------
set encoding=utf-8
set fileencodings=utf-8,gbk
set guifont=Luxi\ Mono\ 9   " 设置字体，字体名称和字号
set tabstop=4       " 设置tab键的宽度
set backspace=2     " 设置退格键可用
set nu!             " 显示行号
set wrap           " 自动换行
"set nowrap         " 不自动换行
set linebreak       " 整词换行,单词作为一个整体换行
set whichwrap=b,s,<,>,[,]       " 光标从行首和行末时可以跳到另一行去
"set list                       " 显示制表符
"set listchars = tab:>-,trail:- " 将制表符显示为'>---',将行尾空格显示为'-'
"set listchars=tab:.\ ,trail:.   " 将制表符显示为'.   '
"set autochdir                   " 自动设置目录为正在编辑的文件所在的目录
"set hidden          " 没有保存的缓冲区可以自动被隐藏
"set scrolloff=5 "光标上下两侧最少保留的屏幕行数。这使你工作时总有一些可见的上下文。
set showcmd "在屏幕最后一行显示未完成的命令。
set nobackup "编辑过程中不备份
set history=50 "保存50个命令历史
"set mouse=a "在终端中使用鼠标    这样设置后，不能用鼠标右键的”复制“了，
"解决方法，在复制之前，先按住Shift键
"set viminfo='1000,<500

"--------------------------------------------------------------------------------
"
"  查找/替换相关的设置
"
"--------------------------------------------------------------------------------

set hlsearch        " 高亮显示搜索结果
set incsearch       " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
                    " 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
                    " 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
                    " 找要匹配的单词时，别忘记回车
set gdefault        " 替换时所有的行内匹配都被替换，而不是只有第一个


"--------------------------------------------------------------------------------
"
"  状态栏相关的设置
"  
"--------------------------------------------------------------------------------

set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] "状态栏的显示格式
set laststatus=2    "总是显示一个状态栏
set ruler           "总是显示光标的位置 

"--------------------------------------------------------------------------------
"
"  编程相关的设置 
"
"--------------------------------------------------------------------------------

syn on              " 打开语法高亮
set autoindent      " 自动对齐
set ai!             " 设置自动缩进
set smartindent     " 智能对齐方式
set shiftwidth=4    " 换行时行间交错使用4个空格
set showmatch       " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
"set completeopt=longest,menu    " 关掉智能补全时的预览窗口
"filetype pluginindenton       " 加了这句才可以用智能补全
colorscheme default  "默认为 白底黑字
"colorscheme evening "载入色彩方案evening 。它会在 'runtimepath' 里搜索
			"colors/{name}.vim"，载入第一个找到的文件。
"set tags=src/tags  "设置tags文件的路径

"--------------------------------------------------------------------------------
"
"  代码折叠
"
"--------------------------------------------------------------------------------

"set foldmarker={{{,}}}	 "指定折叠标志
"set foldmarker={,}	 "指定折叠标志
""语法高亮项目指定折叠。文件太大，打开会非常慢，因为要进行正则表达式搜索
"syntax region functionFold start="\(^\({\|\S.*{\)$\n\)\@<=\_[^}]" end="\(^{.*\)\@<!$\n\(^}\)\@=" transparent fold 
"syntax region commentFold start="/\*" end="\*/" transparent fold keepend 
"syntax region commentFold2 start="^\(^//.*$\n\)\@<!//.*\(\n//\)\@=$" end="^\(^//.*$\n\)\@<=//.*\(\n//\)\@!$" transparent fold keepend 
"set foldmethod=marker	 "标志用于指定折叠。
"set foldmethod=syntax
"set foldlevel=100       "不要自动折叠
"set foldopen-=search   "不要打开折叠，当搜索进它里面时
"set foldopen-=undo     "不要打开折叠，当做撤销进它里面时
"set foldcolumn=4       "如果非零，指定宽度的列在窗口的一侧显示，指示折叠的打开和关闭。最大值为12

"--------------------------------------------------------------------------------
"
"  快速编辑.vimrc设置
"
"--------------------------------------------------------------------------------
" 当 .vimrc 被修改时，自动生效
autocmd! bufwritepost .vimrc source ~/.vimrc


"###############################################################################
"
"  下面是插件设置 
"
"###############################################################################

"--------------------------------------------------------------------------------
"  
"  template_loader.vim设置，加载模板的插件
"  下载地址：http://bbs.chinaunix.net/viewthread.php?tid=895258
"  说明：该插件经过我修改，以适合我的需要。
"--------------------------------------------------------------------------------
"当等于1时，加载模板
let g:template_load = 1
let g:template_tags_replacing = 1
let g:T_AUTHOR = "liugang"
let g:T_AUTHOR_EMAIL = "kuaiyue2311@gmail.com"
let g:T_AUTHOR_WEBSITE = "http://lgnice.cn"
"let g:T_DATE_FORMAT = "%c"
let g:T_DATE_FORMAT = "%Y-%m-%d"
"let g:template_dir_name = "~/.vim/templates"
"let g:template_path = "~/.vim/templates"

"--------------------------------------------------------------------------------
"
"  doxygen.vim设置,doxygen语法高亮的插件
"  下载地址：http://www.vim.org/scripts/script.php?script_id=5
"  版本：1.15
"  doxygen.vim需要dot.vim插件：
"  dot.vim下载地址：http://www.ocaml.info/vim/syntax/dot.vim
"--------------------------------------------------------------------------------
" See doxygen keyboard shortcuts

"--------------------------------------------------------------------------------
"
"  DoxygenToolkit.vim设置，用于写doxygen注释
"  下载地址：http://www.vim.org/scripts/script.php?script_id=987
"  版本：0.2.5
"--------------------------------------------------------------------------------
" See DoxygenToolkit.vim keyboard shortcuts
let g:DoxygenToolkit_authorName="liugang"
let g:DoxygenToolkit_briefTag_funcName="yes"

"--------------------------------------------------------------------------------
"
"  高效地浏览源码 -- 插件: TagList
"  下载地址 	http://www.vim.org/scripts/script.php?script_id=273
"  版本 	4.5
"  安装 	在 ~/.vim 目录下解压taglist_xx.zip
"  手册 	:help taglist.txt
"
"--------------------------------------------------------------------------------

let Tlist_Show_One_File = 1	 "不同时显示多个文件的tag,只显示当前文件的tag	
let Tlist_Exit_onlyWindow = 1	"如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window =1	"在右侧窗口中显示taglist窗口
"let Tlist_GainFocus_On_ToggleOpen = 1 "使用TlistToggle打开taglist窗口时,输入焦点在taglist窗口中
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'	"设置系统中ctags程序的位置

"你在浏览TagList窗口时, 如果还不想让源码跳转, 但是想看看tag在源码中完整的表达,
"可以将光标移到你想要看的tag上, 如图中上边黄色的方框, 然后按下空格键,"在下面的命令栏中, 如图下边黄色的方框, 会显示该tag在源码中完整的写法,
"而不会跳转到源码处.

 "--------------------------------------------------------------------------------
 "
 " WinManager :WMToggle   文件浏览器和窗口管理器 -- 插件: WinManager
 " 下载地址： http://www.vim.org/scripts/script.php?script_id=95
 " 版本：2.3
 "--------------------------------------------------------------------------------

 "let g:winManagerWindowLayout='FileExplorer|TagList'
 let g:winManagerWindowLayout='TagList'
 
"当退出文件编辑的时候，直接退出vi
"if set to 0, then as soon as you quit all the files  and only the explorer windows are the ones left, vim will quit.
let g:persistentBehaviour=0
"the width of the explorer areas
"let g:winManagerWidth = 30
" If you want winmanager to assume the functioning of the default explorer.vim which ships with vim, set this variable to 0
"let g:defaultExplorer = 0

 "--------------------------------------------------------------------------------
 "
 " minibufexpl.vim
 " 下载地址：http://vim.sourceforge.net/scripts/script.php?script_id=159
 " 版本：6.3.2
 "--------------------------------------------------------------------------------
"用<C-h,j,k,l>切换到上下左右的窗口中去,就像:C-w,h j k l    向"左,下,上,右"切换窗口.
let g:miniBufExplMapWindowNavVim = 1
"是用<C-箭头键>切换到上下左右窗口中去
let g:miniBufExplMapWindowNavArrows = 1
"<C-Tab> 	向前循环切换到每个buffer上,并在但前窗口打开
"<C-S-Tab> 	向后循环切换到每个buffer上,并在但前窗口打开
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

 "--------------------------------------------------------------------------------
 "
 " A  c/h文件间相互切换 -- 插件: A
 " 下载地址：http://www.vim.org/scripts/script.php?script_id=31
 " 版本：2.18
 "--------------------------------------------------------------------------------
" set a.vim keyboard shortcuts
"当对应文件不存在的时候，不要创建它，A header file will only be opened if it already exists
let g:alternateNoDefaultAlternate = 1

" :A switches to the header file corresponding to the current file being edited (or vise versa)
" :AS splits and switches
" :AV vertical splits and switches
" :AT new tab and switches
" :AN cycles through matches
" :IH switches to file under cursor
" :IHS splits and switches
" :IHV vertical splits and switches
" :IHT new tab and switches
" :IHN cycles through matches
" <Leader>ih switches to file under cursor
" <Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
" <Leader>ihn cycles through matches 

 "--------------------------------------------------------------------------------
 "
 " c.vim -- Speed up writing new C/C++ code considerably. 
 " 下载地址：http://vim.sourceforge.net/scripts/script.php?script_id=213
 " 版本：5.9
 "--------------------------------------------------------------------------------
"The key mappings of this plugin (PDF) : http://lug.fh-swf.de/vim/vim-c/c-hotkeys.pdf 
" 使用说明：http://lug.fh-swf.de/vim/vim-c/screenshots-en.html
" 3522   if exists("g:C_header_auto_insertion") && g:C_header_auto_insertion==1 "liugang add
" 3523     autocmd BufNewFile  * if (&filetype=='cpp' || &filetype=='c') |
" 3524         \     call C_InsertTemplateWrapper() | endif
" 3525   endif "liugang add
" 我添加了上面的if条件，就是当条件为0时，新建文件时，不自动插入文件说明
let g:C_header_auto_insertion=0


 "--------------------------------------------------------------------------------
 "
 " cppcomplete -- C/C++ and Java code completion
 " 下载地址：http://www.vim.org/scripts/script.php?script_id=527
 " 版本：6.1
 "--------------------------------------------------------------------------------

" Ctrl+N, Ctrl+P will show the popup menu
" 
" The plugin is depending on that exuberant ctags has generated a tags file
" called cppcomplete.tags with the same options as in the following example:
" ctags -n -f cppcomplete.tags --fields=+ai --C++-types=+p *
" The script has a command called GenerateTags that executes the above ctags
" command. The tag file cppcomplete.tags is local to the script so you can
" use other tag files without affecting cppcomplete.
" Java users do not need the --C++-types flag. 

 "--------------------------------------------------------------------------------
 "
 " vim 中文帮助文档
 " 下载地址：http://vimcdoc.sourceforge.net/
 " 版本：1.7.0
 "
 " 说明：vimcdoc-1.5.0.tar.gz 对应的是 vim-7.0的帮助文档
 " 说明：vimcdoc-1.6.0.tar.gz 对应的是 vim-7.1的帮助文档
 " 说明：vimcdoc-1.7.0.tar.gz 对应的是 vim-7.2的帮助文档
 "--------------------------------------------------------------------------------


"##################################################################

"########################## End Of Vimrc ##########################

"##################################################################
