class HomeController < ApplicationController
   

  def index
    @user_classrooms = UserClassroom.all || []
  end

  def create
    @current_user = 'user123'
    @user_classroom = UserClassroom.new(title: params[:title], description: params[:description], teacher: @current_user, role: "teacher")

    if @user_classroom.save
      redirect_to "/classroom", notice: "Classroom created successfully!"
    else
      render "/classroom", status: "Something went wrong"
    end
  end

  def join
    classroom_id = params[:classroomId]
    user_id = current_user.id  | "user123" # Assuming current_user is a method that returns the logged-in user
    existing_member = ClassroomMember.find_by(user_id: user_id, classroom_id: classroom_id)
  
    if existing_member
      redirect_to "/classroom", alert: "You have already joined this classroom."
    else
      ClassroomMember.create!(
        user_id: user_id,
        classroom_id: classroom_id,
        join_date: Date.today,
        role: "student"  # or params[:role] if dynamic
      )
  
      redirect_to "/classroom", notice: "Successfully joined the classroom!"
    end
  end
  
  def destroy
    @user_classroom = UserClassroom.find(params[:id])
    @user_classroom.destroy
    redirect_to "/classroom",  notice: "Classroom removed successfully!"
  end
  
  def classroom_params
    params.require(:user_classroom).permit(:title, :description, :teacher, :role)
  end
  
end
