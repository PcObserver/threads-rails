class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :knowledge_domain

  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    %w[id title body created_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[comments knowledge_domain]
  end
end
