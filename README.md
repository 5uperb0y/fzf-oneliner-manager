# fzf-oneliner-manager
A Bash tool for managing and executing one-liner commands via fzf's fuzzy search, inspired by [yuki-yano/zsh-fzf-snippet](https://github.com/yuki-yano/zsh-fzf-snippet/tree/master)

## Quick start
Assuming you have a Markdown file in the following format:
```
# Print line number X of a file
`head -n <num> <file> | tail -n 1`
https://www.linuxquestions.org/questions/programming-9/print-line-number-x-of-a-file-in-shell-273849/

# Remove duplicate lines from a file 
`awk '!seen[$0]++' <file>`
https://linux.cn/article-6881-1.html
```
1. Press `Ctrl + a` to launch the fzf search console.
2. Use the arrow keys to navigate through the list of commands.
3. Press `Enter` to select a command or press `Esc` to exit the search.
4. The selected commands would prompt into your command line.

## Installation
1. First, you need to install [fzf](https://github.com/junegunn/fzf).
2. Clone this repository: `git clone https://github.com/5uperb0y/fzf-oneliner-manager`.
3. Open the `fzf-oneliner-manager.sh` in a text editor.
4. Set your preferred shortcut and paths to your command markdown file in the `fzf-oneliner-manager.sh` 
	```
	FZF_ONELINER_SHORTCUT="\C-a"
	FZF_ONELINER_COMMANDS="$HOME/.oneliners"
	```
	Replace `$HOME/.oneliners` with the path to your markdown file containing your commands.
5. Add the following line to your `~/.bashrc` file:
	```
	source /path/to/fzf-oneliner-manager.sh
	```
6. Restart your terminal or run `source ~/.bashrc` to activate the changes.
7. Type your shortcut to open the one-liner searching console.

## Similar tools
Here are some similar tools that you might find useful:
- [easy-oneliner](https://github.com/babarot/easy-oneliner)
- [zsh-fzf-snippet](https://github.com/yuki-yano/zsh-fzf-snippet)
- [pet](https://github.com/knqyf263/pet)
- [memo](https://github.com/mattn/memo)
- [navi](https://github.com/denisidoro/navi)
- [snippet](https://github.com/bytebutcher/snippet)
