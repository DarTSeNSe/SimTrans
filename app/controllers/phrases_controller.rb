class PhrasesController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy

def create
    @phrase = current_user.phrases.build(params[:phrase])
    if @phrase.save
      flash[:success] = "Phrase created!"
      redirect_to root_path
    else
      render 'pages/home'
    end
  end

  def destroy
    @phrase.destroy
    redirect_back_or root_path
  end

  private

    def authorized_user
      @phrase = current_user.phrases.find_by_id(params[:id])
      redirect_to root_path if @phrase.nil?
    end

end
