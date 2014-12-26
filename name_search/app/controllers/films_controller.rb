#encoding:utf-8
class FilmsController  < ApplicationController
  FILMS = ['avatar', 'с легким паром', 'матрица']

  def index
    @films = FILMS
  end
end
