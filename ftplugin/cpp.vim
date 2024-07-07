set tabstop=4           " Número de espacios que representan un tabulador
set shiftwidth=4        " Número de espacios para cada nivel de indentado
set expandtab           " Convertir tabuladores en espacios
set autoindent          " Indentar automáticamente la nueva línea con la misma indentación que la línea anterior
set smartindent         " Hacer que Vim indente automáticamente al insertar una nueva línea

" Opciones específicas para archivos C++
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab autoindent smartindent
