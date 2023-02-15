Feature: Fibonacci number sequences

  Scenario: Default sequence initiated
    When a fibonacci sequence is started
    Then the next number should be 1

  Scenario: Initialized with a legitimate fibonacci number
    Given a fibonacci sequence initialized to 8
    Then the next number should be 13
    
  Scenario: Sequence is initialized and skipped
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    Then the state should be "The current number is 8"
    And the next number should be 13

  Scenario: Sequence cannot be initialized to a non-fibonacci number
    When a fibonacci sequence is initialized to 7
    Then an exception should be thrown