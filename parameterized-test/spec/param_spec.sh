Describe 'how to use Parameters'

  Context 'normal parameters'
    Parameters
      "number 1" 1 2 3
      "number 2" 2 4 6
      "number 3" 3 5 8
    End

    It "test $1"
      When call echo "$(($2 + $3))"
      The output should eq "$4"
    End
  End

  Context 'value'
    Parameters:value foo var baz

    It "test param length"
      When call echo "$1"
      The length of output should equal 3
    End
  End

  Context 'matrix'
    Parameters:matrix
      foo bar baz
      hoge fuga
      7
    End

    myfunc() {
      echo "$1$2";
    }

    It "test expanded matrix"
      When call myfunc $1 $2
      The length of output should equal $3
    End
  End
End
