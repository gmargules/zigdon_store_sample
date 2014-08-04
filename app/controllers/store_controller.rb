class StoreController < ApplicationController
  before_action :get_user, only: [:grades, :answer]
   before_action :get_question, only: [:answer]
  def home
    @questions = Question.order(id: :asc)
    @first_time_in = 1
  end

 def index
    @questions = Question.all
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def get_user
      @user = User.find_or_create_by(id: params[:user_id])
    end

    def get_question
      @question = Question.find(params[:question_id])
    end

    def update_question_response_duration
      	recieved_response_duration = Integer(params[:response_duration], 10)
        @question.average_response_time = (@question.average_response_time * @question.average_response_counter + recieved_response_duration) / (@question.average_response_counter + 1)
        @question.average_response_counter = @question.average_response_counter + 1
        @question.save
    end

end
