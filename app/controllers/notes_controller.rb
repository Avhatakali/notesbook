class NotesController < ApplicationController

  def index
    @notes = current_user.notes
  end
  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.build(notes_params)
    if @note.save
      flash[:success] = "Notes created!"
      redirect_to root_url
    else
      render 'pages/home'
    end
  end

  def destroy
  end

  private
    def notes_params
      params.require(:note).permit(:content)
    end
end
