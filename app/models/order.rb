class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :waiter
  belongs_to :table

  has_one :orderline, dependent: :destroy
end
