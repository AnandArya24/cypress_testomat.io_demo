@Sb79afb42
Feature: Mark as completed

Background:
    Given I have these todos on my list
      | name         |
      | Milk         |
      | Butter       |
      | Bread        |

@Tc746c264
Scenario Outline: Mark todos as completed
  When I mark <completed> todos as completed
  Then I see that <activeTodo> todos are still active
  And I see that <completedTodo> has been completed

  Examples:
    | completed    | activeTodo | completedTodo |
    | 1            |     2      |      1        |
    | 3            |     1      |      2        |


@Tbb0ca2f7
Scenario: Unmark completed todos
  When I mark the first one as completed
  And I unmark the completed todo item
  Then I see that 4 todos are still active

@T942ea40b
Scenario: Mark all todos as completed
  When I mark them all as completed
  Then I see that all 4 are completed

@T3577898d
Scenario: Clear completed todos
  When I mark them all as completed
  When I clear all completed items
  Then I see that 0 has been completed
