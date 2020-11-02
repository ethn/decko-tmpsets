# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Paging)
#
module Paging;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-collection/set/abstract/paging.rb"; end
MAX_ANONYMOUS_SEARCH_PARAM = 1000

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def limit
    @limit ||= contextual_param(:limit) || default_limit
  end

  def offset
    @offset ||= contextual_param(:offset) || 0
  end

  def search_with_params
    card.item_names
  end

  def count_with_params
    card.item_names.count
  end

  def total_pages
    return 1 if limit.zero?
    ((count_with_params - 1) / limit).to_i
  end

  def current_page
    (offset / limit).to_i
  end

  # for override
  def extra_paging_path_args
    {}
  end

  private

  def contextual_param param
    env_search_param(param) || voo_search_param(param)
  end

  def env_search_param param
    enforcing_legal_limit param do
      val = Env.params[param]
      val.to_i if focal? && val.present?
    end
  end

  def enforcing_legal_limit param
    yield.tap do |val|
      enforce_legal_limit! val if param == :limit
    end
  end

  def enforce_legal_limit! val
    return if Card::Auth.signed_in? || !val || val <= MAX_ANONYMOUS_SEARCH_PARAM

    raise Card::Error::PermissionDenied,
          "limit parameter exceeds maximum for anonymous users " \
          "(#{MAX_ANONYMOUS_SEARCH_PARAM})"
  end

  def voo_search_param param
    voo&.cql&.dig(param)&.to_i
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-collection/set/abstract/paging.rb ~~