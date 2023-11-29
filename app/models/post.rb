class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    %w[d title body created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[comments]
  end
end
