class DocumentController < ApplicationController

  def index
    @document = Document.all
  end

  def create
    @document = Document.new(params[:id])

    @document.save
    redirect_to @document
  end

  def new
    @document = Document.new
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def document_params
    params.require(:document).permit(:nama_file, :departemen, :nomor_dokumen, :lokasi)
  end

end
