Describe 'error subject'
  hello() {
    echo 'hoge fuga' >&2;
    echo 'foo bar' >&2;
  }

  It 'says hoge in error'
    When call hello
    The error should equal 'hoge fuga
foo bar'
    The stderr should equal 'hoge fuga
foo bar'
    The lines of error should equal 2
    The line 2 of error should equal 'foo bar'
    The word 2 of error should equal 'fuga'
    The length of error should equal 17
  End
End
