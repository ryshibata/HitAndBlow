class MainController < ApplicationController


  def game
    @@data=NumberData.new
    NumberData.init()
  end

  def update
    @data=@@data
    count=NumberData.incCount()
    @@data.setInputArray(count,params[:inputNum].chomp.to_i)
    Compute.cmptHitAndBlow(@@data,@@data.getInputArray(count).clone, NumberData.getRandomArray().clone)

    @endState = ""
    if @data.getHitArray(count) == 4
      @endState = "win"
      flash.now[:notice]="You Win!!"
    elsif NumberData.getCount() == 10
      @endState = "lose"
      flash.now[:notice]="You Loes..."
    else
      @endState = ""
    end

    render("main/game")
  end
end


#    log = Logger.new('D:\work\log.txt')
#    log.debug(randomArray)
#    log.close()