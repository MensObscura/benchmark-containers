BEGIN { SMAKE = "make" } {
  if ($1 !~ /^#/ &&  NF == 1) {
    printf "echo `%s %s `", SMAKE, $1;
 
  }
}
