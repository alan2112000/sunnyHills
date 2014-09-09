class Company < ActiveRecord::Base
  has_many :orders

  # name :string
  # company_no :string

  validates_presence_of :name, :company_no
  validates_uniqueness_of :name, :company_no
end
