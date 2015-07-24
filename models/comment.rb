class Comment < ActiveRecord::Base
  belongs_to :entry, dependent: :destroy
end
