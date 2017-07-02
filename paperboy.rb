class Paperboy

  def initialize
  @name                 = "Tommy"
  @experience           = 0
  @earnings             = 0
  @over_quota_earnings  = 0
  @quota_earnings       = 0
  @quota                = 50
  @next_quota           = 0
  end

  def quota
    @next_quota = (@experience / 2) + @quota
  end

  def delivery(start_address, end_address)
    @experience = end_address - start_address
    if @experience < 50
        @quota_earnings = (@experience * 0.25) - 2

    elsif @experience == 50
          @quota_earnings = (@experience * 0.25)

    elsif @experience > 50
      @over_quota_earnings = (@quota - @experience) * 0.50
    end

    @earnings = @quota_earnings + @over_quota_earnings
    puts "You earned $#{@quota_earnings} plus a bonus of $#{@over_quota_earnings}, which is a total of $#{@earnings} today!"
  end

  def report
    puts "My name is #{@name} and I've delivered #{@experience} papers and earned $#{@earnings} so far! My next quota is #{@next_quota}"
  end
end

tommy = Paperboy.new
tommy.delivery(30, 70)
tommy.quota
tommy.report
