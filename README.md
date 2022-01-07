<p style="text-align: center; font-size: 2em">Mass Ave Chinese Orchestra Scores</p>

This repository stores the LilyPond source code for Mass Ave Chinese Orchestra. Downloadable PDF version of scores can be found in [Releases](https://github.com/tansongchen/mass-ave/releases). You can also try out compiling them yourself from LilyPond code.

# Setup

You can set up the environment for compiling in two ways:

## 1. Using the Develop Container

If you have Docker engine installed, you can build the Dockerfile in `.devcontainer` folder and launch a instance of that image. This container will provide you with LilyPond 2.22.0 and all Chinese fonts (多字重华文宋体、多字重华文楷体、苹方黑体、华文仿宋) that allow you to exactly reproduce PDFs in [Releases](https://github.com/tansongchen/mass-ave/releases).

Additionally, if you also have Visual Studio Code installed, it suffices to open this folder in VSCode and run the command "Open Folder in Container".

## 2. Manual Setup

1. Install LilyPond >= 2.22.0 from https://lilypond.org/download.html (if you are using Linux or macOS, you can also download it via package managers such as `apt` or `brew`);
2. Check the `main.ly` file that you want to compile, search for `set-global-fonts` and make sure you have at least one font installed in each alternative list; if you don't want to install additional fonts you can simply modify the alternative list to include one of your installed font.

# Compiling

`cd` into one of the folders contains `main.ly` and type

```
lilypond main.ly
```

And you will found one or more PDFs in the same folder. Note that compilation can be as slow as 1 min depending on the machine.

# Editing

VSCode is recommended for editing LilyPond source files. By simply install the extension "VSLilyPond" (id `lhl2617.vslilypond`) you can turn your VSCode to a LilyPond IDE with features like highlight, hints, snippets and PDF preview. Please refer to its documentation for more information.
