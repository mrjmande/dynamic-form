class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  has_many :participants
  accepts_nested_attributes_for :participants
end
