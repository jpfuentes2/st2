if [[ ! -o interactive ]]; then
    return
fi

compctl -K _st2 st2

_st2() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(st2 commands)"
  else
    completions="$(st2 completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
