class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    set_member
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    if(@member.save)
      redirect_to members_path
    else 
      redirect to new_member_path
    end
  end

  private
    def set_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name, :matric, :contact, :email, :cell, :position)
    end


end
