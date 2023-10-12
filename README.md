# NvChad custom GoLang IDE

this project is the custom of NvChad, so you can install NvChad normally, and then custom your golang IDE with this custom settings.

## install NvChad

Windows

```shell
git clone https://github.com/NvChad/NvChad $HOME\AppData\Local\nvim --depth 1 && nvim
```

MacOS

```shell
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

## NvChad Upgrade

open nvim and run the cmd

```shell
:NvChadUpdate
```

## Uninstall

```shell
# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim

# Windows
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

## apply this custom features

in the dir of NvChad installed, clone this project in lua called custom.

```shell
cd nvim/lua

git clone https://github.com/cryptowww/nvchad_custom.git custom
```

## install go dependencies

```shell
go install github.com/incu6us/goimports-reviser/v3@latest

go install mvdan.cc/gofumpt@latest

go install github.com/segmentio/golines@latest

go install github.com/go-delve/delve/cmd/dlv@latest
```

```shell
:TSInstall go
```

## plugins

https://github.com/neovim/nvim-lspconfig
https://github.com/jose-elias-alvarez/null-ls.nvim
https://github.com/olexsmir/gopher.nvim
https://github.com/mfussenegger/nvim-dap
https://github.com/leoluz/nvim-dap-go
https://github.com/williamboman/mason.nvim
