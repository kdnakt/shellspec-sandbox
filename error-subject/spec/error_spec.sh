Describe 'error subject'
  hello() { echo 'hoge' >&2; }

  It 'says hoge in error'
    When call hello
    The error should equal 'hoge'
    The stderr should equal 'hoge'
  End
End
