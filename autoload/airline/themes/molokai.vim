let g:airline#themes#molokai#palette = {}
let g:airline#themes#molokai#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }

" Normal mode
let s:N1 = [ '#080808' , '#afaf87' , 232 , 144 , 'bold'] " mode
if get(g:, 'airline_molokai_bright', 0)
  let s:N2 = [ '#080808' , '#ff8700' , 232 , 208 ] " info
else
  let s:N2 = [ '#f8f8f0' , '#232526' , 253 , 16 ] " info
endif
let s:N3 = [ '#080808' , '#5f87af' , 232 , 67 , 'bold' ] " statusline

let g:airline#themes#molokai#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#molokai#palette.normal_modified = {
      \ 'airline_c': [ '#080808' , '#afaf87' , 232 , 144 , 'bold' ] ,
      \ 'airline_x': [ '#080808' , '#afaf87' , 232 , 144 , 'bold' ] ,
      \ }

" Insert mode
let s:I1 = [ '#080808' , '#5fd7ff' , 232 , 81, 'bold'  ]
if get(g:, 'airline_molokai_bright', 0)
  let s:I2 = [ '#080808' , '#ff8700' , 232 , 208 ]
else
  let s:I2 = [ '#f8f8f0' , '#232526' , 253 , 16 ]
endif
let s:I3 = [ '#080808' , '#5f87af' , 232 , 67, 'bold' ]

let g:airline#themes#molokai#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#molokai#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#5fd7ff' , 232 , 81 , 'bold' ] ,
      \ 'airline_x': [ '#080808' , '#5fd7ff' , 232 , 81 , 'bold' ] ,
      \ }

" Replace mode
let s:R1 = [ '#080808' , '#d7005f' , 232 , 161 ]
if get(g:, 'airline_molokai_bright', 0)
  let s:R2 = [ '#080808' , '#ff8700' , 232 , 208 ]
else
  let s:R2 = [ '#f8f8f0' , '#232526' , 253 , 16 ]
endif
let s:R3 = [ '#080808' , '#5f87af' , 232 , 67 , 'bold' ]

let g:airline#themes#molokai#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#molokai#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#d7005f' , 232 , 161 , 'bold' ] ,
      \ 'airline_x': [ '#080808' , '#d7005f' , 232 , 161 , 'bold' ] ,
      \ }

" Visual mode
let s:V1 = [ '#080808' , '#87ff00' , 232 , 118 ]
if get(g:, 'airline_molokai_bright', 0)
  let s:V2 = [ '#080808' , '#ff8700' , 232 , 208 ]
else
  let s:V2 = [ '#f8f8f0' , '#232526' , 253 , 16 ]
endif
let s:V3 = [ '#080808' , '#5f87af' , 232 , 67 , 'bold' ]

let g:airline#themes#molokai#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#molokai#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#87ff00' , 232 , 118 , 'bold' ] ,
      \ 'airline_x': [ '#080808' , '#87ff00' , 232 , 118 , 'bold' ] ,
      \ }
"
" Inactive
let s:IA = [ '#080808' , '#5f87af' , 233 , 67 , 'bold' ]
let g:airline#themes#molokai#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let s:IAM = [ '#080808' , '#afaf87' , 232 , 144 , 'bold' ]
let g:airline#themes#molokai#palette.inactive_modified = airline#themes#generate_color_map(s:IAM, s:IAM, s:IAM)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#molokai#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )
