class User < ActiveRecord::Base
  belongs_to :page
  has_many :notes
end
