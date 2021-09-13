get_next_day() {
  echo $(($(date +%s) + 86400));
}

