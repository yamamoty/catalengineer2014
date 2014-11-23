class NotesController < ApplicationController

  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      redirect_to @note
    else
      render :edit
    end 
  end

  def edit
    @note = Note.find(params[:id])
     end
  
  def index
    @notes= Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end
  
  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note
    else
      render :new
    end
  end

  def note_params
    params.require(:note).permit(:title, :body, :date)
  end

end
