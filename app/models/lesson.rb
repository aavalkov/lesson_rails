class Lesson < ActiveRecord::Base
 	validates :name, :presence => true
 	validates :information, :presence => true
end