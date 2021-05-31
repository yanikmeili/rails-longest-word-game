class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @new_letters = params[:letters]
    @word = params[:score]
    if included?
      print true
  end

  def included?(word, new_letters)
    word.chars.all? { |letter| word.count(letter) <= new_letters.count(letter) }
  end
end
