Describe 'Conditional Skip'
check_command_exists() { ! type hoge >/dev/null 2>&1; }
  Skip if "hoge doesn't exist" check_command_exists

  hello() { echo "Hello ${1}"; }

  It "says hello"
    When call hello hoge
    The ouput should eq "Hello hoge"
  End
End
