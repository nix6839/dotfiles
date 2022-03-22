call plug#begin(stdpath('data') . '/plugged')
  " https://github.com/editorconfig/editorconfig-vim
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

" Vim options
syntax on       " Turn on syntax highlighting
set ls=2        " Always display a status line
set nu          " Print the line number in front of each line
set et          " Insert spaces instead of <Tab>
set sw=2        " Number of spaces to use for each step of (auto)indent.
set ts=2        " tab 크기
set ai          " 자동 들여쓰기
set si          " 똑똑한 들여쓰기
set cindent     " 프로그래밍용 자동 들여쓰기
set ignorecase  " 찾기 대소문자 구별 안함
set nows        " 찾기 파일의 끝에 다다르면 위에서부터 다시 찾지 않음
set hid         " 버퍼 숨김모드
set enc=utf-8   " 기본 인코딩 utf-8
set fencs=utf-8,cp949  " 인코딩을 utf-8과 euc-kr 중 자동 선택

" Plugin settings
