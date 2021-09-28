Describe "String Matchers"
  reverse() {
    rev<<<$1
  }

  It 'matches reversed string'
    When call reverse helloworld
    The output should equal dlrowolleh
    The output should start with dlrow
    The output should end with olleh
    The output should include owo
    The output should match pattern *lro*
  End
End
