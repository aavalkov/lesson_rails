class Lesson < ActiveRecord::Base
 	validates :name, :presence => true
 	validates :information, :presence => true
 	validates :number, :presence => true

 	def next
 		Lesson.find_by(number: self.number+1)
 	end

 	def prev
 		Lesson.find_by(number: self.number-1)
 	end

end