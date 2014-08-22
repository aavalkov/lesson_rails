class LessonsController < ApplicationController
	def index
		@lessons = Lesson.all
		render('lessons/index.html.erb')
	end

	def new
		render ('lessons/new.html.erb')
	end

	def create
		@lesson = Lesson.new(:name => params[:name], :information => params[:information])
		if @lesson.save
			redirect_to("/lessons")
		else
			render('lessons/new.html.erb')
		end
	end

	def show
		@lesson = Lesson.find(params[:id])
		render('lessons/show.html.erb')
	end
end
