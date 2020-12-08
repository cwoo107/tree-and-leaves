class Note < ApplicationRecord
  belongs_to :user
  belongs_to :folderable, polymorphic: true, optional: true
  accepts_nested_attributes_for :folderable
  has_rich_text :content

end
