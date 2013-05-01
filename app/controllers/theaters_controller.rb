class TheatersController < ApplicationController

  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find_by_id(params[:id])
  end

  def new
  end

  def create
    m = Theater.new
    m.name = params[:name]
    m.address = params[:address]
    m.phone = params[:phone]
    m.save

    redirect_to theaters_url
  end

  def edit
    @theater = Theater.find_by_id(params[:id])
  end

  def update
    @theater = Theater.find_by_id(params[:id])
    @theater.name = params[:name]
    @theater.address = params[:address]
    @theater.phone = params[:phone]
    @theater.save

    redirect_to theaters_url
  end

  def destroy
    theater = Theater.find_by_id(params[:id])
    theater.destroy
    redirect_to theaters_url
  end


end
