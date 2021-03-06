class Compute

  def self.createRandomArray
    randomArray = [0,0,0,0]
    for i in 0..3 do
      randomArray[i]=rand(1..9);
      loop do
        isDuplicate=true
        for j in 0..i-1 do
          if randomArray[i]==randomArray[j]
            randomArray[i]=rand(1..9)
            isDuplicate=false
          end
        end
        break if isDuplicate
      end
    end

    return randomArray
  end

  def self.cmptHitAndBlow(data,inputArray,randomArray)
    data.setHitArray(NumberData.getCount(),Compute.cmptHitNum(inputArray,randomArray))
    data.setBlowArray(NumberData.getCount(),Compute.cmptBlowNum(inputArray,randomArray))
  end

  def self.cmptHitNum(inputArray,randomArray)
    hitNum=0
    for i in 0..3 do
      if inputArray[i]==randomArray[i]
        hitNum+=1
        inputArray[i]=-1
        randomArray[i]=-2
      end
    end
    return hitNum
  end

  def self.cmptBlowNum(inputArray,randomArray)
    blowNum=0
    for i in 0..3 do
      for j in 0..3 do
        if i!=j && inputArray[i]==randomArray[j]
          blowNum+=1
          inputArray[i]=-1
          randomArray[j]=-2
        end
      end
    end
    return blowNum
  end

end