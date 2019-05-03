# -*- encoding : utf-8 -*-
class Card; module Set; class All
module EditInline;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/all/edit_inline.rb"; end
format :html do
  view :edit_inline, perms: :update, unknown: true, cache: :never, wrap: :slot do
    with_nest_mode :edit do
      card_form :update, success: edit_success do
        [
          edit_view_hidden,
          _render_content_formgroup,
          _render_edit_inline_buttons
        ]
      end
    end
  end

  view :edit_name_row do
    edit_row_fixed_width "Name", card.name, :edit_name_form
  end

  view :edit_type_row do
    edit_row_fixed_width "Type", link_to_card(card.type), :edit_type_form
  end

  view :edit_inline_buttons do
    button_formgroup do
      wrap_with "div", class: "d-flex" do
        [standard_save_button, cancel_in_place_button, delete_button]
      end
    end
  end

  def edit_row_fixed_width title, content, edit_view
    class_up "card-slot", "d-flex"
    wrap do
      ["<label class='w-50px'>#{title}</label>",
       content,
       edit_inline_link(edit_view, align: :right)]
    end
  end

  def edit_inline_link view=:edit_inline, align: :left
    align = align == :left ? "ml-2" : "ml-auto"
    link_to_view view, menu_icon, class: "#{align} edit-link", "data-cy": "edit-link"
  end

  def cancel_in_place_button args={}
    args.reverse_merge! class: "cancel-button btn-sm", href: path
    cancel_button args
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/all/edit_inline.rb ~~