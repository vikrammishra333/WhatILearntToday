class Comment < ActiveRecord::Base

  belongs_to :author
  belongs_to :post
  belongs_to :parent, :class_name => 'Comment'
  has_many :childrens, :class_name => 'Comment', :foreign_key => 'parent_id'

end
