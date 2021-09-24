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
End
