FZF_ONELINER_SHORTCUT="\C-a"
FZF_ONELINER_COMMANDS="$HOME/.oneliners"
format_cmds_for_fzf(){
	local md=$1
	awk '
		/^#/ {
			line = $0 "\t";
			gsub(/# /, "", line);
		}
		/^`/ {
			line = line $0 "\t";
		}
		/^[^`|^#]/ {
			line = line $0;
			gsub(/\n/, "\\n", line)
			print line;
		}' "${md}"
}
launch_cmd_search() {
	fzf --delimiter='\t' --with-nth=1 --preview='echo -e \# {1}\\n{2}\\n{3}'
}
display_selected_cmd(){
	awk -F $'\t' '{ gsub(/`/, "", $2); print $2 }'
}
main() {
	selected=$(format_cmds_for_fzf "${FZF_ONELINER_COMMANDS}" | launch_cmd_search | display_selected_cmd)
	READLINE_LINE="${selected}"
	READLINE_POINT="${#READLINE_LINE}"
}
bind -x '"${FZF_ONELINER_SHORTCUT}":"main"'