# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module ScriptBootstrap;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/self/script_bootstrap.rb"; end
include_set Abstract::CodeFile
Self::ScriptLibraries.add_item :script_bootstrap

def source_dir
  ""
end

def source_files
  %w[vendor/bootstrap/dist/js/bootstrap.bundle.js
     lib/javascript/bootstrap_modal_wagn.js
     vendor/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js]
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/self/script_bootstrap.rb ~~