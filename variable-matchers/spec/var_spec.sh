Describe 'variable matchers'
  myfunc() {
    MYVAR="${MYVAR}$1"
  }
  myfunc2() {
    export MYVAR="${MYVAR}$1"
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
      The variable MYVAR should not be exported
    End
  End

  Context 'export'
    It 'is exported'
      When call myfunc2 baz
      The variable MYVAR should equal baz
      The variable MYVAR should be exported
    End
  End
End
