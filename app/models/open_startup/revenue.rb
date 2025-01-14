module OpenStartup
  class Revenue < ApplicationRecord
    self.table_name = "open_startup_revenue"

    scope :automated, -> { where(manual: false) }

    validates :occurred_on, presence: true
    validates :description, presence: true
    validates :amount, numericality: {greater_than_or_equal_to: 0}
  end
end
