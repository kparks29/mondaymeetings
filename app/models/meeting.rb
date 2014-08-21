class Meeting < ActiveRecord::Base
  before_save :calcs

  

  def calcs
    self.bank_balance = self.calc_bank_balance
    self.labor_percent = self.calc_labor_percent
    self.debt_payoff = self.calc_debt_payoff
    self.yelp_amount = self.calc_yelp_amount
    self.yelp_average = self.calc_yelp_average
    self.tax_amount = self.calc_tax_amount
  end

  def calc_bank_balance
    balance = self.business_checking + self.personal_checking
    return balance
  end

  def calc_labor_percent
    percentage = ((self.hours * 11.0) / self.revenue)* 100
    return percentage
  end

  def calc_debt_payoff
    payoff = 0
    percent = 0
    if self.revenue > 6500
      if self.labor_percent > 20
        percent = self.labor_percent - 20
      else
        percent = 20 - self.labor_percent
      end
      payoff = (9 * ((percent/100)+1) / 100) * self.revenue
      while (self.revenue - payoff <= 6500) 
        payoff -= 1
      end
    end
    return payoff
  end

  def calc_yelp_amount
    total = self.yelp_one + self.yelp_two + self.yelp_three + self.yelp_four + self.yelp_five
    return total
  end

  def calc_yelp_average
    total = (self.yelp_one * 1.0) + (self.yelp_two * 2.0) + (self.yelp_three * 3.0) + (self.yelp_four * 4.0) + (self.yelp_five * 5.0)
    total = total / self.yelp_amount
    return total
  end

  def calc_tax_amount
    amount = self.revenue * 0.08
    return amount
  end

  
end
