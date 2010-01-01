"-------------------------
" PHP ���������
"-------------------------
" �������� ���������� PHP
"set makeprg=php\ -l\ %

" ������ ������ ������ PHP
"set errorformat=%m\ in\ %f\ on\ line\ %l

" �������� "������� �������"
" ����� ���������� ����������
"iabbrev dbg echo '<pre>';var_dump( );echo '</pre>';
"iabbrev tm echo 'Test message in file: '.__FILE__.', on line: '.__LINE__;

"let g:pdv_cfg_Uses = 1

" Vim ������������ � ���������� ������ �������� ���������� ���������� PHP.
" ������ ������� �� �����:

" �������� ������� ��� ������ �������/�������
"let php_folding = 1
" �� ������������ �������� ���� PHP ��� ������ PHP ������
"let php_noShortTags = 1
" ���������� SQL ������ PHP �����
"let php_sql_query=1
" ���������� HTML ������ PHP �����
"let php_htmlInStrings=1
" ���������� ������� ������� PHP
"let php_baselib = 1
"let php_highlight_quotes = 1
"let php_alt_construct_parents = 1

if exists("loaded_matchit")
    let b:match_ignorecase=0
    let b:match_words =
     \  '(:),' .
     \  '[:],' .
     \  '{:},' .
     \  '<:>,'
endif

