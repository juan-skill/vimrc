" Configuración básica para Python
set tabstop=4           " Número de espacios que representan un tabulador
set shiftwidth=4        " Número de espacios para cada nivel de indentado
set expandtab           " Convertir tabuladores en espacios
set autoindent          " Indentar automáticamente la nueva línea con la misma indentación que la línea anterior
set smartindent         " Hacer que Vim indente automáticamente al insertar una nueva línea

" Opciones específicas para archivos Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab autoindent smartindent

" Configuración de ale para Python
let g:ale_linters = {
\   'python': ['flake8', 'pylint', 'mypy'],
\}

let g:ale_fixers = {
\   'python': ['black'],
\}
" \   'python': ['black', 'isort'],

" Ejecutar el formateador al guardar el archivo
let g:ale_fix_on_save = 1
