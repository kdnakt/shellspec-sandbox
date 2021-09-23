Describe 'variable matchers'
  myfunc() {
    MYVAR="${MYVAR}$1"
  }

  Context 'uses variable matchers'
    It 'matches variable'
      When call myfunc foo
      The variable MYVAR should equal foo
    End
  End

  Context 'predefined variable'
    Before MYVAR='foo'
    It 'matches predefined variable'
      When call myfunc bar
      The variable MYVAR should equal foobar
    End
  End
End
