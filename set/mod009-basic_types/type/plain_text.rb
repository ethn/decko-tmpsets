# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module PlainText; extend Card::Set
# @!visibility ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/basic_types/set/type/plain_text.rb ~~
format :html do
  view :editor do |_args|
    text_area :content,
              rows: 5,
              class: "card-content",
              "data-card-type-code" => card.type_code
  end

  view :core do |_args|
    process_content_object(CGI.escapeHTML _render_raw)
  end
end


# @!visibility ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/basic_types/set/type/plain_text.rb ~~
end;end;end;end;
