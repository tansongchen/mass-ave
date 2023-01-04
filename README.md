<h1 align=center>Mass Ave Chinese Orchestra Scores</h1>

<p align=center>
  <a href="https://github.com/codespaces/new?hide_repo_select=true&ref=master&repo=442282629"><img src="https://github.com/codespaces/badge.svg" alt="Open in GitHub Codespaces" /></a>
</p>

This repository stores the LilyPond source code for Mass Ave Chinese Orchestra. Downloadable PDF version of scores can be found in [Releases](https://github.com/tansongchen/mass-ave/releases). You can also try out compiling them yourself from LilyPond code.

# Setup

You can set up the environment for compiling in two ways:

## 1. Using the Develop Container

If you have Docker engine installed, you can build the Dockerfile in `.devcontainer` folder and launch a instance of that image. This container will provide you with LilyPond 2.22.1 and all Chinese fonts (思源宋体, 思源黑体 and 霞鹜文楷) that allow you to exactly reproduce PDFs in [Releases](https://github.com/tansongchen/mass-ave/releases).

Additionally, if you also have Visual Studio Code installed, it suffices to open this folder in VSCode and run the command "Open Folder in Container".

## 2. Manual Setup

1. Install LilyPond >= 2.22.0 from https://lilypond.org/download.html (if you are using Linux or macOS, you can also download it via package managers such as APT or Homebrew);
2. Check the `main.ly` file that you want to compile, search for `set-global-fonts` and make sure you have at least one font installed in each alternative list:
   1. On Windows, the system preinstalled fonts are enough;
   2. On macOS, LilyPond is known to have some bug in detecting system fonts, so you may need to install some fonts;
   3. Else, you may need to install all fonts.

# Compiling

`cd` into one of the folders contains `main.ly` and type

```
lilypond main.ly
```

And you will found one or more PDFs in the same folder. Note that compilation can be as slow as 1 min depending on the machine.

# Editing

VSCode is recommended for editing LilyPond source files. By simply install the extension "VSLilyPond" (id `lhl2617.vslilypond`) you can turn your VSCode to a LilyPond IDE with features like highlight, hints, snippets and PDF preview. Please refer to its documentation for more information.
