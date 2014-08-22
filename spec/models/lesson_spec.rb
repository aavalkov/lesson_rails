require 'spec_helper'

describe Lesson do 
	it { should validate_presence_of :name }
 	it { should validate_presence_of :information }

  it 'returns the lesson with the next-highest number than the current lesson' do
    	current_lesson = Lesson.create({:name => 'lesson1', :information =>'info', :number => 1})
    	next_lesson = Lesson.create({:name => 'lesson2', :information =>'info', :number => 2})
    	current_lesson.next.should eq next_lesson
  end
end