Describe 'satisfy matcher'
  value() {
    test "${value:?}" "$1" "$2"
  }

  formula() {
    value=${formula:?}
    [ $(($1)) -eq 1 ]
  }

  Include lib/random.sh
  It 'calls random'
    When call get_random
    The output should satisfy value -lt 10
    The output should satisfy value -gt -1
    The output should satisfy formula "-1 < value && value < 10"
  End
End

