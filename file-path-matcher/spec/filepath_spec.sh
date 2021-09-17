Describe 'File path matcher'
  createDir() { mkdir target; }
  cleanup() { rm -r ./target; }
  AfterAll cleanup
  It 'creates directory'
    When call createDir
    The path ./target should be directory
  End
End
