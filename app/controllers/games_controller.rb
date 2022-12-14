# frozen_string_literal: true

require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    @grid = generate_grid(params[:size]) { ('A'..'Z').to_a.sample }
  end

  def generate_grid(grid_size)
    # TODO: generate random grid of letters
    Array.new(grid_size.to_i) { ('A'..'Z').to_a.sample }
  end

  def score
    end_time = Time.now.to_i
    @word = params[:word]
  end

  def home; end

  def attempt(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"

    URI.open(url) do |word|
      # words =
      guess = JSON.parse(word.read)
      # p words['found']
      # p words['word']
    end
  end
end
