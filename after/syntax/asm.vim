" Vim syntax file
" Language:		GMP style assembly
" Maintainer:		Albin Ahlbäck <albin.ahlback@gmail.com>
" Last Change:		2024 Dec 02

" GMP style assembly uses M4 for preprocessing
syn region asmComment		start="dnl" end="$" keepend contains=asmTodo,@Spell

" Architecture independent comment
syn region asmComment		start="C" end="$" keepend contains=asmTodo,@Spell

" M4 stuff
syn match m4Function		"\<\%(define\|undefine\)\>"
syn match m4Preproc		"\<include\>"

hi def link m4Function  Function
hi def link m4Preproc   PreProc

syn region asmDirective		start="\<ALIGN(" end=")"
syn region asmDirective		start="\<PROLOGUE(" end=")"
syn match asmDirective		"\<EPILOGUE()"
syn match asmDirective		"\<TEXT\>"

" vim: nowrap sw=2 sts=2 ts=8 noet
