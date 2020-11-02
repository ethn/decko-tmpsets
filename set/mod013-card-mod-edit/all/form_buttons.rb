# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (FormButtons)
#
module FormButtons;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-edit/set/all/form_buttons.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def standard_submit_button
    output [standard_save_button, standard_save_and_close_button]
  end

  def standard_save_button opts={}
    return if voo&.hide?(:save_button)
    add_class opts, "submit-button btn-sm mr-3 _update-history-pills"
    opts[:text] ||= "Save"
    opts["data-cy"] = "save"
    submit_button opts
  end

  # @param opts [Hash]
  # @option close [:modal, :overlay]
  #
  def standard_save_and_close_button opts={}
    close = opts.delete(:close) || :modal
    text = opts[:text] || "Save and Close"
    add_class opts, "submit-button btn-sm mr-3 _close-on-success"
    add_class opts, "_update-origin" unless opts[:no_origin_update]
    opts.reverse_merge! text: text, "data-cy": "submit-#{close}"

    submit_button opts
  end

  def standard_cancel_button args={}
    args.reverse_merge! class: "cancel-button ml-4", href: path, "data-cy": "cancel"
    cancel_button args
  end

  def modal_cancel_button
    modal_close_button "Cancel", situation: "secondary", class: "btn-sm cancel-button"
  end

  def edit_cancel_button
    modal_cancel_button
  end

  def new_cancel_button
    voo.show?(:cancel_button) && modal_cancel_button
  end

  def delete_button opts={}
    link_to "Delete", delete_button_opts(opts)
  end

  def delete_button_opts opts={}
    add_class opts,  "slotter btn btn-outline-danger ml-auto btn-sm"
    opts["data-confirm"] = delete_confirm opts
    opts[:path] = { action: :delete }
    opts[:path][:success] = delete_success(opts) unless opts.delete(:no_success)
    opts[:remote] = true
    opts
  end

  def delete_confirm opts
    opts.delete(:confirm) || "Are you sure you want to delete #{safe_name}?"
  end

  def delete_success opts
    opts.delete(:success) || (main? ? "REDIRECT: *previous" : { view: :just_deleted })
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-edit/set/all/form_buttons.rb ~~