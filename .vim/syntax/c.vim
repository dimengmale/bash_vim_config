"===============================================================
" Highlight All Function
"===============================================================
syn match cFunction "\<[a-zA-z][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match cFunction "\<[a-zA-z][a-zA-Z_0-9]*\>\s*("me=e-1
hi cFunction     gui=NONE  guifg=#B5A1FF cterm=bold ctermfg=208

"===============================================================
"Highlight All math Operator
"===============================================================
" C math operators
syn match cMathOperator          display "[-+\*%=]"
" C pointer operators
syn match cPointerOperator       display "->\|\."
" C logical operators - boolean results
syn match cLogicalOperator       display "[!<>]=\="
syn match cLogicalOperator       display "=="
" C bit operators
syn match cBinaryOperator        display "\(&\||\|\^\|<<\|>>\)=\="
syn match cBinaryOperator        display "\~"
syn match cBinaryOperatorError   display "\~="
" More c logical operators - highlight in preference to binary
syn match cLogicalOperator       display "&&\|||"
syn match cLogicalOperatorError  display "\(&&\|||\)="

" Math Operator
hi cMathOperator              guifg=#3EFFE2 ctermfg=red
hi cPointerOperator           guifg=#3EFFE2 ctermfg=red
hi cLogicalOperator           guifg=#3EFFE2 ctermfg=red
hi cBinaryOperator            guifg=#3EFFE2 ctermfg=red
hi cBinaryOperatorError       guifg=#3EFFE2 ctermfg=red
hi cLogicalOperator           guifg=#3EFFE2 ctermfg=red
hi cLogicalOperatorError      guifg=#3EFFE2 ctermfg=red

"==============================================================
" My Own DataType and Class
"==============================================================
syn keyword cType         mytype
