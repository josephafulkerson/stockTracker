class WatchlistItemSerializer < ActiveModel::Serializer
  attributes :id, :symbol, :high, :low, :close, :date
end
