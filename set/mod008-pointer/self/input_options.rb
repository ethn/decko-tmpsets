# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module InputOptions;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/self/input_options.rb"; end
include_set Abstract::Pointer

basket :options
add_to_basket :options, "radio"
add_to_basket :options, "checkbox"
add_to_basket :options, "select"
add_to_basket :options, "multiselect"
add_to_basket :options, "list"
add_to_basket :options, "filtered list"

def content
  options.to_pointer_content
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/self/input_options.rb ~~
