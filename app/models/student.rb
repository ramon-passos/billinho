class Student < ApplicationRecord
  validates :cpf, format: {with: /\A\d+\z/ , massage: "only allows numbers"}
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :gender, inclusion: {in: %w(M F), message: "%{value} não é um gênero válido"}
  validates :payment_mode, inclusion: {in: %w(Boleto Cartão), message: "%{value} não é um modo de pagamento válido"}
end
