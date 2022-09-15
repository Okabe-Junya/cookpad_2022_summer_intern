# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @productions = Production.all
  end
end
