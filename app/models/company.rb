class Company < ActiveRecord::Base

  # name :string
  # company_no :string

  has_many :orders

  validates_presence_of :name, :company_no
  validates_uniqueness_of :name, :company_no



end
