class MThreadsController < ApplicationController
  def index
    @m_threads = MThread.all
    render json: @m_threads
  end

  def show
    @m_thread = MThread.find(params[:id])
    render json: @m_thread
  end
end