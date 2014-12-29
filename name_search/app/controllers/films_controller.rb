#encoding:utf-8
class FilmsController  < ApplicationController
  FILMS = ['avatar', 'с легким паром', 'матрица', 'начало', 'малыш']

  def index
    @films = FILMS
    @films = @films.select { |film| film.include? params[:q] } if params[:q]
  end
end
