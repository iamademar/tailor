class Tailor
  module LexerConstants
    KEYWORDS_TO_INDENT     = [
      'begin',
      'case',
      'class',
      'def',
      'do',
      'else',
      'elsif',
      'ensure',
      'if',
      'module',
      'rescue',
      'unless',
      'until',
      'when',
      'while'
    ]

    CONTINUATION_KEYWORDS  = [
      'elsif',
      'else',
      'ensure',
      'rescue',
      'when'
    ]

    KEYWORDS_AND_MODIFIERS = [
      'if',
      'unless',
      'until',
      'while'
    ]

    MODIFIERS = {
      'if'     => :if_mod,
      'rescue' => :rescue_mod,
      'unless' => :unless_mod,
      'until'  => :until_mod,
      'while'  => :while_mod
    }

    MULTILINE_OPERATORS = [
      '!',
      '%',
      '&',
      '*',
      '+',
      '-',
      '/',
      '<',
      '=',
      '>',
      '?',
      '^',
      #'|',
      '~',
      ':'
    ]
  end
end
