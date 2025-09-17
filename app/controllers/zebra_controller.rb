class ZebraController < ApplicationController

  def rules
    render({ :template => "game_templates/rules"})
  end

  def rock
    @player_choice = "rock"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @outcome = ""

    if @computer_choice == "rock"
      @outcome = "tied"
    elsif @computer_choice == "paper"
      @outcome = "lost"
    else
      @outcome = "won"  
    end

    render({ :template => "game_templates/play_rock"})
  end

  def paper
    @player_choice = "rock"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @outcome = ""

  if @computer_choice == "rock"
    @outcome = "won"
  elsif @computer_choice == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"  
  end

    render({ :template => "game_templates/play_paper"})
  end

  def scissors
    @player_choice = "rock"
    @computer_choice = ["rock", "paper", "scissors"].sample
    @outcome = ""

  if @computer_choice == "rock"
    @outcome = "lost"
  elsif @computer_choice == "paper"
    @outcome = "won"
  else
    @outcome = "tied"  
  end

    render({ :template => "game_templates/play_scissors"})
  end
end
