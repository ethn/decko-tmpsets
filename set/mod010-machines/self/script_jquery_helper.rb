# -*- encoding : utf-8 -*-
class Card; module Set; class Self; module ScriptJqueryHelper; extend Card::Set
# @!visibility ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/machines/set/self/script_jquery_helper.rb ~~
include_set Abstract::CodeFile

def source_files
  # jquery.ui.all must be after jquery.mobile to override dialog weirdness *
  # jquery.ui.autocomplete must be after jquery.ui stuff
  # FIXME removed  jquerymobile.js. Doesn't work with the new jquery version
  %w( jquery-ui.js jquery.ui.autocomplete.html.js jquery.autosize.js
      jquery.fileupload.js jquery.iframe-transport.js jquery_ujs.js )
end


# @!visibility ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/machines/set/self/script_jquery_helper.rb ~~
end;end;end;end;
