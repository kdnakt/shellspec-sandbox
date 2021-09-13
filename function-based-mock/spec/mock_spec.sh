Describe 'function-based mock'
  Include lib/func.sh
  date() {
    echo 1546268400
  }

  It 'calls the date function'
    When call get_next_day
    The output should eq 1546354800
  End
End
