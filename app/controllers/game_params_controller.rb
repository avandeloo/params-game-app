class GameParamsController < ApplicationController
  def query_game
    @name = params["name"].titleize
    if @name[0] == "A" then
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

  end

  def query_number_guess
    @guess = params["number"].to_i
    number = 36
    if @guess == number then 
      @message = "Congrats, you guessed it right" 
    elsif @guess < number then
      @message = "too high."
    elsif @guess > number then
      @message = "too low."
    end 

    # case @guess <=> 36
    # when 0
    #   @message = "Congrats, you got it right."
    # when 1
    #   @message = "too high."
    # when -1
    #   @message = "too low."
    # end

  end

  def segment_params
    @value = params["this_is_a_variable"]
    
  end

  # def guess_number_segment_params
  #   @guess = params["number"].to_i
  #   number = 36
  #   # if @guess.class == Fixnum
  #   #   @guess = @number.to_i
  #   if @guess == number
  #     @message = "Congrats, you guessed it right" 
  #   elsif @guess > number
  #     @message = "too high."
  #   elsif @guess < number
  #     @message = "too low."
  #   end
  #   else
  #   #   @message = "Please enter a number."
  #   # end 

  # end
  def guess_number_segment_params
    @guess =  params["number"].to_i
    number = 36
    if @guess.class != Fixnum
      @message = "Please enter a number."
    elsif @guess.class == Fixnum
      if @guess == number
        @message = "Congrats!"
      elsif @guess > number
        @message = "Too High."
      elsif @guess < number
        @message = "Too Low."
      end
    end
  end

  def get_form
    
  end

  def use_form
    @value = params["form_message"]
  end

  def get_number_form
  end

  def use_number_form
    @guess = params["number"].to_i
    number = 36
    if @guess == number
      @message = "Correct!"
    elsif @guess > number
      @message = "Too High."
    elsif @guess < number
      @message = "Too Low."
    end
  end

end
