@indentation
Feature: Indentation check on good files with trailing newlines

  @trailing_newlines @good_files
  Scenario Outline: Don't detect problems on properly indented files with newlines at the end
    Given <File> exists with a newline at the end
    And my configuration file "testfile.yml" looks like:
    """
    ---
    :style:
      :vertical_spacing:
        :trailing_newlines: 1
      :horizontal_spacing:
        :allow_trailing_spaces: true
        :indent_spaces: 2
    """
    When I successfully run `tailor -d --config testfile.yml <File>`
    Then the output should match /Total Problems.*0/
    And the exit status should be 0

  Scenarios: Good class uses
    | File                     |
    | indent/ok/class          |
    | indent/ok/nested_class   |
    | indent/ok/class_empty    |
    | indent/ok/one_line_class |

  Scenarios: Good single-line statement uses
    | File                                    |
    | indent/ok/class_singlestatement         |
    | indent/ok/require_class_singlestatement |

  Scenarios: Good multi-line statement uses
    | File                                               |
    | indent/ok/assignment_addition_multistatement       |
    | indent/ok/assignment_hash_multistatement           |
    | indent/ok/assignment_array_multistatement          |
    | indent/ok/assignment_paren_multistatement          |
    | indent/ok/assignment_twolevel_hash_multistatement  |
    | indent/ok/assignment_twolevel_array_multistatement |
    | indent/ok/assignment_twolevel_paren_multistatement |
    | indent/ok/method_call_multistatement               |

  Scenarios: Good def uses
    | File                                                |
    | indent/ok/def                                       |
    | indent/ok/def_empty                                 |
    | indent/ok/nested_def                                |
    | indent/ok/require_class_singlestatement_def         |
    | indent/ok/require_class_singlestatement_def_content |

  Scenarios: 'if' as modifier
    | File                             |
    | indent/ok/if_modifier            |
    | indent/ok/def_return_if_modifier |

  Scenarios: 'unless' as modifier
    | File                                 |
    | indent/ok/unless_modifier            |
    | indent/ok/def_return_unless_modifier |

