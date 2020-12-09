class Folder < ApplicationRecord
  belongs_to :user
  belongs_to :folderable, polymorphic: true, optional: true
  accepts_nested_attributes_for :folderable
  has_many :folders, as: :folderable, :dependent => :delete_all
  has_many :notes, as: :folderable, :dependent => :delete_all
end
