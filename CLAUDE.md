# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

Personal Vim configuration managed as a standalone directory, symlinked into `~/.vim/` and `~/.vimrc`. Plugin management uses [vim-plug](https://github.com/junegunn/vim-plug), with plugins vendored under `plugged/` (git-ignored).

## Installation

```bash
ln -s /path/to/vim_config ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
# Then inside vim:
:PlugInstall
```

## File layout

| File | Purpose |
|---|---|
| `.vimrc` | Entry point — sources the three files below, sets core options |
| `plugins.vim` | vim-plug declarations (`plug#begin` / `plug#end`) |
| `plugins-config.vim` | Per-plugin configuration (ALE, coc.nvim, fzf, vimtex, lightline, airline, vim-test, etc.) |
| `maps.vim` | All key mappings, including CoC LSP bindings |
| `coc-settings.json` | CoC language server settings (formatters, auto-format filetypes) |
| `autoload/plug.vim` | vim-plug loader (committed so there's no bootstrap step) |
| `spell/` | Custom spell files |
| `undodir/` | Persistent undo history (git-ignored) |

## Key design decisions

- **Leader key** is `<Space>`.
- **Two status bar plugins coexist**: `lightline` + `lightline-ale` and `vim-airline` + `vim-airline-themes`. Only one should be active at a time — this is a known inconsistency.
- **ALE** is configured exclusively for `.tex` files (chktex linter, latexindent fixer, fix-on-save). Python linting goes through CoC/flake8 instead.
- **CoC extensions** loaded globally: `coc-tsserver`, `coc-eslint`, `coc-prettier`, `coc-html`, `coc-css`, `coc-json`, `coc-python`, `coc-yaml`, `coc-vimtex`.
- **Python formatting** uses `black` (line length 79) via CoC; format-on-save is enabled for Python, JS, HTML, CSS, JSON, Markdown, YAML.
- **vim-test** runs Python tests with `python3 -m unittest` (pyunit runner) in a vim terminal split.
- **vimtex** uses Zathura as the PDF viewer.
- **Swap files are disabled**; persistent undo is stored in `undodir/`.

## Adding or removing plugins

1. Edit `plugins.vim` — add/remove `Plug` lines inside the `plug#begin`/`plug#end` block.
2. Add any plugin-specific settings to `plugins-config.vim`.
3. Inside vim, run `:PlugInstall` (add) or `:PlugClean` (remove).

## Key mappings reference

| Mapping | Action |
|---|---|
| `<C-p>` | FZF file search |
| `<Leader>b` | FZF buffer list |
| `<Leader>csc` | CoC search word under cursor |
| `<Leader>nt` | Open NERDTree |
| `<Leader>ut` | Toggle UndoTree |
| `<Leader>h/j/k/l` | Navigate splits |
| `<Leader>+/-` | Resize vertical split |
| `<Leader>gh/gl` | Git diff get (left/right) |
| `<Leader>f` | CoC format selected |
| `<Leader>rn` | CoC rename symbol |
| `gd/gy/gi/gr` | CoC go-to definition/type/impl/references |
| `K` | CoC show documentation |
| `[g` / `]g` | CoC previous/next diagnostic |
| `<C-e>` | ALE next error (wraps) |
| `t<C-n/f/s/l/g>` | vim-test: nearest/file/suite/last/visit |
| `<Leader>vv` | vimgrep word under cursor across project |
