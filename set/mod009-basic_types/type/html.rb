# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Html; extend Card::Set
# @!visibility ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/basic_types/set/type/html.rb ~~
include_set Abstract::AceEditor

def clean_html?
  false
end

def diff_args
  { format: :raw }
end

format do
  view :closed_content do |_args|
    ""
  end

  def chunk_list
    :references
  end
end


# @!visibility ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/basic_types/set/type/html.rb ~~
end;end;end;end;
