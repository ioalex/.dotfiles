# Removes pesky, unwanted .DS_Store files prior to initialising gitInit

function gitinit() {
  find . -name '.DS_Store' -delete;
  git init;
}
