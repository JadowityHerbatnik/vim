" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>


" When shortcut files are updated, renew bash and vifm configs with new material:
	autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %

" Compile SCSS on exit
	autocmd BufWritePost *index.scss silent !compiler %

" Restart compton on onfig update
	autocmd BufWritePost *compton.conf silent !restartcompton

" Generate alacritty config on write
	autocmd BufWritePost *alacritty.yml.in silent !xalacritty

" Recompile and restart dwm on write
	autocmd BufWritePost */dwm/config.h !compiler % && kill -1 $(pidof dwm)

" Recompile and restart dwmblocks on write
 autocmd BufWritePost */dwmblocks/config.h !compiler % && { killall -q dwmblocks;setsid dwmblocks & }

" Recompile and restart dmenu on write
	autocmd BufWritePost */dmenu/config.h !compiler %

" Shell scripits shebang
	inoremap <leader>she  #!/usr/bin/env sh<CR>
