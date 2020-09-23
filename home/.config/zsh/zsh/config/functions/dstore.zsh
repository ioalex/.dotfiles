# Delete all .DS_Store in current directory including child directories
dstore() {
  find . -name '.DS_Store' -delete;
}
