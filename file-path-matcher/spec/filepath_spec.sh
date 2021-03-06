Describe 'File path matcher'
  createDir() { mkdir target; }
  createFile() { mkdir target; touch target/${1}; }
  cleanup() { rm -r ./target; }

  Describe 'directory'
    AfterAll cleanup
    It 'creates directory'
      When call createDir
      The path ./target should be exist
      The path ./target should be directory
      The path ./target should be empty directory
    End
  End

  Describe 'file'
    AfterAll cleanup
    It 'creates a file'
      When call createFile hoge
      The path ./target/hoge should be exist
      The path ./target/hoge should be file
      The path ./target/hoge should be empty file
      The path ./target/hoge should be readable
      The path ./target/hoge should be writable
      The path ./target/hoge should not be executable
    End
  End
End
