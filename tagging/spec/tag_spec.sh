Describe "Test with tag" someTag:someVal
  Include lib/tag.sh
  It "does foo" tagA:val1
    When call hello foo
    The output should equal "Hello foo"
  End

  It "does bar" tagA:val2
    When call hello bar
    The output should equal "Hello bar"
  End

  It "does baz" tagA
    When call hello baz
    The output should equal "Hello baz"
  End

  It "does foobar" tagB
    When call hello foobar
    The output should equal "Hello foobar"
  End

  It "does hoge"
    When call hello hoge
    The output should equal "Hello hoge"
  End

End

Describe "Test with tag again" anotherTag:anotherVal
  Include lib/tag.sh
  It "does foo" tagA:val1
    When call hello foo
    The output should equal "Hello foo"
  End

  It "does bar" tagA:val2
    When call hello bar
    The output should equal "Hello bar"
  End

  It "does baz" tagA
    When call hello baz
    The output should equal "Hello baz"
  End

  It "does foobar" tagB
    When call hello foobar
    The output should equal "Hello foobar"
  End

  It "does hoge"
    When call hello hoge
    The output should equal "Hello hoge"
  End

End


