# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Filter;
# Set: Abstract (Filter, QueryConstruction)
#
# all filter keys in the order they were selected
module QueryConstruction;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/abstract/03_filter/query_construction.rb"; end
def all_filter_keys
  @all_filter_keys ||= filter_keys_from_params | filter_keys
end

def filter_and_sort_wql
  filter_wql.merge(sort_wql)
end

def filter_wql
  return {} if filter_hash.empty?

  filter_wql_from_params
end

# separate method is needed for tests
def filter_wql_from_params
  filter_class.new(filter_keys_with_values, blocked_id_wql).to_wql
end

def sort_wql
  sort_hash
end

def blocked_id_wql
  not_ids = filter_param :not_ids
  not_ids.present? ? { id: ["not in", not_ids.split(",")] } : {}
end

def current_sort
  sort_param || default_sort_option
end

def default_sort_option
  wql_content[:sort]
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/abstract/03_filter/query_construction.rb ~~