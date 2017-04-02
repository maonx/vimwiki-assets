# Description
A Vimwiki HTML Template

# Requirements
 * Bootstrap 3.3.7
 * highlight.js 9.10.0
 * Font Awesome 4.7.0

# using vimwiki assets
```sh
$ cd $HOME/vimwiki_html/
$ git clone https://github.com/maonx/vimwiki-assets.git assets
```

# .vimrc settings
```vim
" vimwiki settings
let vimwiki_path=$HOME.'/vimwiki/'
let vimwiki_html_path=$HOME.'/vimwiki_html/'
let g:vimwiki_list = [{'path_html':vimwiki_html_path,
                       \ 'template_path':vimwiki_html_path.'assets/',
                       \ 'template_default': 'default',
                       \ 'template_ext': '.tpl',
                       \ 'auto_export': 0}]
```

# Font Awesome are not showing in Firefox
open `about:config` in firefox

change `security.fileuri.strict_origin_policy` from `true` to `false`
