Describe 'status.sh'
  Include lib/status.sh
  It 'should success'
    When run myfunc 0
    The status should be success
  End

  It 'should fail'
    When run myfunc 2
    The status should be failure
  End
End
