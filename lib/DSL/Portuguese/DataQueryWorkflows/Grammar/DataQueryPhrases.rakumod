use DSL::Shared::Utilities::FuzzyMatching;

# Data query specific phrases
role DSL::Portuguese::DataQueryWorkflows::Grammar::DataQueryPhrases {
    # Tokens
    token arrange-verb:sym<Portuguese> { :i 'arranjar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'arranjar', 2) }> }
    token ascending-adjective:sym<Portuguese> { :i 'ascendente' | ([\w]+) <?{ $0.Str ne 'descendente' and is-fuzzy-match($0.Str, 'ascendente', 2) }> }
    token association-noun:sym<Portuguese> { :i 'associação' | ([\w]+) <?{ $0.Str ne 'associado' and is-fuzzy-match($0.Str, 'associação', 2) }> }
    token broad-adjective:sym<Portuguese> { :i 'wide' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'wide', 2) }> }
    token cast-verb:sym<Portuguese> { :i 'formulário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'formulário', 2) }> }
    token character-noun:sym<Portuguese> { :i 'símbolo' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'símbolo', 2) }> }
    token combine-verb:sym<Portuguese> { :i 'combinar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'combinar', 2) }> }
    token cross-adjective:sym<Portuguese> { :i  'cruzadas' | 'cruzada' | 'cruzado' | 'cruz'  }
    token cross-verb:sym<Portuguese> { :i 'crossface' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'crossface', 2) }> }
    token descending-adjective:sym<Portuguese> { :i 'descendente' | ([\w]+) <?{ $0.Str ne 'ascendente' and is-fuzzy-match($0.Str, 'descendente', 2) }> }
    token distinct-adjective:sym<Portuguese> { :i  'único' | 'único'  }
    token divider-noun:sym<Portuguese> { :i 'divisor' | ([\w]+) <?{ $0.Str ne 'divisão' and is-fuzzy-match($0.Str, 'divisor', 2) }> }
    token duplicate-adjective:sym<Portuguese> { :i  'duplicado' | 'republicado de'  }
    token duplicates-noun:sym<Portuguese> { :i  'duplicado' | 'repito'  }
    token form-noun:sym<Portuguese> { :i 'formulário' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'formulário', 2) }> }
    token format-noun:sym<Portuguese> { :i 'formato' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'formato', 2) }> }
    token formula-noun:sym<Portuguese> { :i 'fórmula' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'fórmula', 2) }> }
    token full-adjective:sym<Portuguese> { :i  'completo' | 'completo' | 'completo'  }
    token glimpse-verb:sym<Portuguese> { :i  'peep' | 'mamilos'  }
    token group-verb:sym<Portuguese> { :i  'grouprai' | 'agrupar'  }
    token inner-adjective:sym<Portuguese> { :i  'interno' | 'interno' | 'a nível interno'  }
    token keep-verb:sym<Portuguese> { :i  'excepto' | 'espera' | 'espera' | 'guarde'  }
    token long-adjective:sym<Portuguese> { :i  'longo' | 'longa' | 'longas'  }
    token longer-adjective:sym<Portuguese> { :i  'mais' \h+ <long-adjective>  }
    token map-verb:sym<Portuguese> { :i 'associado' | ([\w]+) <?{ $0.Str ne 'associação' and is-fuzzy-match($0.Str, 'associado', 2) }> }
    token mapping-noun:sym<Portuguese> { :i 'associação' | ([\w]+) <?{ $0.Str ne 'associado' and is-fuzzy-match($0.Str, 'associação', 2) }> }
    token melt-verb:sym<Portuguese> { :i 'derreter' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'derreter', 2) }> }
    token merge-noun:sym<Portuguese> { :i 'fusão' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'fusão', 2) }> }
    token merge-verb:sym<Portuguese> { :i 'descarregar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'descarregar', 2) }> }
    token mutate-verb:sym<Portuguese> { :i 'sofrer uma mutação' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'sofrer uma mutação', 2) }> }
    token narrow-adjective:sym<Portuguese> { :i  'estreito' | 'estreito' | 'estreito'  }
    token omit-directive:sym<Portuguese> { :i  'saltar para' | 'off'  }
    token only-adverb:sym<Portuguese> { :i 'apenas' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'apenas', 2) }> }
    token order-verb:sym<Portuguese> { :i 'encomendado' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'encomendado', 2) }> }
    token pivot-verb:sym<Portuguese> { :i  'desenvolver' | 'desenrolar'  }
    token rename-verb:sym<Portuguese> { :i 'renomear' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'renomear', 2) }> }
    token safe-adjective:sym<Portuguese> { :i 'seguro' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'seguro', 2) }> }
    token safely-adverb:sym<Portuguese> { :i 'claro' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'claro', 2) }> }
    token select-verb:sym<Portuguese> { :i 'escolha' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'escolha', 2) }> }
    token semi-adjective:sym<Portuguese> { :i 'metade' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'metade', 2) }> }
    token separator-noun:sym<Portuguese> { :i 'divisor' | ([\w]+) <?{ $0.Str ne 'divisão' and is-fuzzy-match($0.Str, 'divisor', 2) }> }
    token skim-verb:sym<Portuguese> { :i 'revisão' | ([\w]+) <?{ $0.Str ne 'divisão' and is-fuzzy-match($0.Str, 'revisão', 2) }> }
    token skimming-noun:sym<Portuguese> { :i 'ver' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ver', 1) }> }
    token sort-verb:sym<Portuguese> { :i  'ordenar' | 'encomendado'  }
    token splitter-noun:sym<Portuguese> { :i 'divisor' | ([\w]+) <?{ $0.Str ne 'divisão' and is-fuzzy-match($0.Str, 'divisor', 2) }> }
    token splitting-noun:sym<Portuguese> { :i 'divisão' | ([\w]+) <?{ $0.Str !(elem) <divisor revisão> and is-fuzzy-match($0.Str, 'divisão', 2) }> }
    token summarise-verb:sym<Portuguese> { :i 'resumir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'resumir', 2) }> }
    token summarize-verb:sym<Portuguese> { :i 'resumir' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'resumir', 2) }> }
    token tabulate-verb:sym<Portuguese> { :i  'tab' | 'tabular'  }
    token tabulation-noun:sym<Portuguese> { :i  'tabulação' | 'tabling'  }
    token ungroup-verb:sym<Portuguese> { :i 'desagrupar' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'desagrupar', 2) }> }
    token unique-adjective:sym<Portuguese> { :i  'único' | 'único'  }
    token wide-adjective:sym<Portuguese> { :i 'ampla' | ([\w]+) <?{ is-fuzzy-match($0.Str, 'ampla', 2) }> }
    token wider-adjective:sym<Portuguese> { :i  'mais' \h+ 'ampla'  }
}

