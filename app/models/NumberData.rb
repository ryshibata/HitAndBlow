class NumberData

  def self.init
    @@count=0
    @@randomArray=Compute.createRandomArray()
  end


  def initialize()
    @inputArray = Array.new
    @hitArray   = Array.new
    @blowArray  = Array.new
  end


  def setInputArray(count, num)
    @inputArray[count]=Array.new(NumberData.convertIntToArray(num))
  end


  def setHitArray(count, num)
    @hitArray[count]=num
  end


  def setBlowArray(count, num)
    @blowArray[count]=num
  end


  def self.setRandomArray(count, num)
    @@randomArray=Array.new(convertIntToArray(num))
  end


  def self.incCount
    return @@count+=1
  end


  def getInputArray(count)
    return @inputArray[count]
  end


  def getHitArray(count)
    return @hitArray[count]
  end


  def getBlowArray(count)
    return @blowArray[count]
  end


  def self.getRandomArray()
    return @@randomArray
  end


  def self.getCount()
    return @@count
  end


  def self.convertIntToArray(num)
    array=Array.new
    for i in 0..3 do
      array[3-i]=num%10
      num/=10
    end
    return array
  end

end