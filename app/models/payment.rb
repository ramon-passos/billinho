class Payment < ApplicationRecord
  belongs_to :enrollment
  validates :payment_price, presence: true
  validates :payment_due_date, presence: true
  validates :enrollment_id, presence: true
  validates :status, inclusion: { in: %w(Aberta Atrasada Paga), message: "%{value} Não é um status válido"}
end
