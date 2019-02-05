class Api::V1::LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def create
    @lesson = Lesson.create(lesson_params)
    if @lesson.valid?
      render json: {lesson: @lessen}
    else
      render json: {error: "Failed to create lesson"}
    end
  end

  def update
  end

  def destroy
  end

private

  def lesson_params
    params.require(:lesson).permit(:startTime, :client_level, :client_name, :lesson_focus, :client_email, :coach_id, :client_id, :lesson_date, :client_age)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end
end
