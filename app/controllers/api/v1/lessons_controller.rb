class Api::V1::LessonsController < ApplicationController

  skip_before_action :authorized

  before_action :find_lesson, only: [:update, :destroy]

  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def coach_lessons
    id = decode_token["user_id"]
    @lessons = Lesson.all.select{|lesson| lesson.coach_id == id || lesson.client_id == id}
    render json: @lessons

    #get this route to work!
  end

  def create
    @lesson = Lesson.create(lesson_params)
    if @lesson.valid?
      render json: {lesson: @lesson}
    else
      render json: {error: "Failed to create lesson"}
    end
  end

  def update
    if @lesson.valid?
      @lesson.update(lesson_params)
      render json: {lesson: @lesson}
    else
      render json: {error: "Failed to update lesson"}
    end
  end

  def destroy
    @lesson.destroy
    render json: {message: "lesson deleted"}
  end

private

  def lesson_params
    params.require(:lesson).permit(:client_level, :client_name, :lesson_focus, :client_email, :coach_id, :client_id, :lesson_date, :client_age, :accepted, :checked)
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end
end
