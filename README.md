# Configuring clang-format
## A guide for VIM, Eclipse, and VS-Code

# Pre-requisites
This tutorial assumes 2 things:

1. You have already installed/built clang-format (we are using version 6.0)
2. You have already installed VIM, Eclipse, or VS-Code

# VIM
To integrate clang-format with VIM, you can use [this](https://github.com/rhysd/vim-clang-format) plugin.

![alt text](https://raw.githubusercontent.com/CoffeeBeforeArch/clang_format_setup/master/vim_images/vim_plugin.png)

I use [this](https://github.com/amix/vimrc) VIM setup (comes with a lot of great plugins, and adding new plugins is super simple.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vim_images/vim_setup.png)

To install the clang-format plugin, I just need to clone the linked plugin repository into ~/.vim_runtime/sources_non_forked/ like so.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vim_images/vim_clone.png)

Now I can call "ClangFormat" inside VIM like so.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vim_images/vim_formatted.png)

Options for the plugin can be set inside of your .vimrc file. Here is an example of mine (these options are all described in greater detail in the README for the plugin) If you have multiple clang-format versions installed, there is a variable you can set to specifically which one you would like to work with (different versions format code differently).

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vim_images/vim_vimrc.png)

I set the detect_style_file variable so that it looks for my .clang-format style file. I furthermore set my fallback style (in case the style file was not found) to default to Google. Our style file is directly dumped from clang-format (no modifications), so the fallback style should be an exact match to our desired style specified in our style file (assuming you are using the correct version of clang-format). Additionally, I map F2 to automatically call ClangFormat (while not in insert mode, but you can also have it exit insert mode, apply ClangFormat, then re-enter insert mode, I'm just lazy).

# VS-Code
From the VS-Code opening window, you can click on the icon with 4 blocks to open the extensions search bar.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vscode_images/vscode_home.png)

From there, just search for clang-format, and install the extension by clicking the install button.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vscode_images/vscode_extension.png)

You next need to open up your settings.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vscode_images/vscode_settings.png)

Inside of settings, you next need to go to Extensions -> Clang-Format. This is where you set the defaults for clang-format.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vscode_images/vscode_extension_settings.png)

From there, you can specify the path to the executable, the fallback style, etc. There will also be an explicit option to set a style. If you set it to "file", then it will look for your .clang-format style file. If it can not find it, it will use what you set for your fallback style.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/vscode_images/vscode_style.png)

To actually perform formatting, you use the key-combinations ctrl + shift + i.

# Eclipse
From the Eclipse Marketplace, (Help -> Eclipse Marketplace...), search for, and install CppStyle. You can find the rest the rest of the instructions [here](https://github.com/wangzw/CppStyle).

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/eclipse_images/eclipse_cppstyle.png)

You can next go into your project properties, and navigate to CppStyle.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/eclipse_images/eclipse_properties.png)

From there you can set the path to the clang-format executable that you wish to use.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/eclipse_images/eclipse_preferences.png)

To set clang-format as your default code formatter, go to Preferences -> C/C++ -> Code Style -> Formatter, and then change the Code Formatter to CppStyle (clang-format).

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/eclipse_images/eclipse_formatter.png)

This tool will search the entire source file path for a .clang-format style file. For GPGPU-Sim, one is located in the root directory. More information about this can be found at the GitHub page linked in at the top of this section.

From here, you can use ctrl + shift + f to reformat selected code. If you have not selected any code, you may be given this prompt.

![alt text](https://github.com/CoffeeBeforeArch/clang_format_setup/blob/master/eclipse_images/eclipse_run_settings.png)
