class ReceptionistController < ApplicationController
  before_action :set_receptionist
  before_action :authorize_user

  def edit; end

  def update
    if @receptionist.update(receptionist_params)
      flash[:notice] = 'Receptionist credentials updated'
      redirect_to edit_receptionist_path
    else
      flash[:notice] = @receptionist.errors.full_messages
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def receptionist_params
    params.require(:user).permit(:email, :password)
  end

  def set_receptionist
    @receptionist = User.find_by(role: :receptionist)
  end

  def authorize_user
    user_not_authorized unless current_user.doctor?
  end
end
