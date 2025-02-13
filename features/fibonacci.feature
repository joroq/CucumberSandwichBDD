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

  Scenario: Sequence cannot be initialized to a non-number
    When a fibonacci sequence is initialized to "apple"
    Then an exception should be thrown

  Scenario: Cannot skip by a negative number
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped -3 times
    Then an exception should be thrown

  Scenario: Sequence is initialized and skipped multiple times
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 3 times
    And the sequence is initialized to 2
    And the sequence is skipped 4 times
    Then the state should be "The current number is 13"
    And the next number should be 21

  Scenario: Sequence is initialized, skipped and then initialized again
    Given a fibonacci sequence initialized to 2
    When the sequence is skipped 5 times
    And the sequence is initialized to 2
    Then the state should be "The current number is 2"