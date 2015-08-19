class SharedLinksController < ApplicationController
  def new
    @link = SharedLink.new
  end

  def edit
    @link = SharedLink.find(params[:id])
  end

  def create
    @link = SharedLink.new(link_params)
    unless @link.link.include?'http'
      tmp = 'http://' + @link.link
      @link.link = tmp
    end
    @link.save
    redirect_to root_url
  end

  def link_params
    params.require(:shared_link).permit(:name, :link)
  end
end
