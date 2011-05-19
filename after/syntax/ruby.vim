if expand('%') =~# '_spec\.rb$'
    syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
endif

hi def link rubyRspec Keyword
