class BugsController < ApplicationController
  def index
    @bugs = Bug.all
    # @users = User.order('position ASC') for some reason not working, it has to do with
  end
  def show
    @bug = Bug.find(params[:id])
  end
  def new
    @bug = Bug.new
  end
  def create
    @bug = Bug.new(bug_params)
    if @bug.save
      redirect_to(bugs_path)
    else
      render('new')
    end
  end
  def edit
    @bug = Bug.find(params[:id])
  end
  def update
    @bug = Bug.find(params[:id])
    if @bug.update(bug_params)
      redirect_to(bug_path(@bug))
    else
      render('edit')
    end
  end
  def delete
    @bug = Bug.find(params[:id])
  end
  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy
    redirect_to(Bugs_path)
  end
  private
    def bug_params
      params.require(:bug).permit(:user_id, :location, :issue, :solved)
    end
end
