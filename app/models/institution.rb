class Institution < ApplicationRecord
  validates :cnpj, format: {with: /\A\d+\z/ , message: "only allows numbers"}
  validates :cnpj, uniqueness: true
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :institution_type, inclusion: { in: %w(Universidade Escola Creche), message: "%{value} não é um tipo válido"}
end
