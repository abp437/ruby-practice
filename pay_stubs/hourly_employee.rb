require "./employee"

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(hourly_wage)
    if hourly_wage < 0
      raise "Wage can't be negative"
    end

    @hourly_wage = hourly_wage.to_f
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "Hours worked can't be negative"
    end

    @hours_per_week = hours_per_week
  end

  def initialize(name = "Unnamed", hourly_wage = 0, hours_per_week = 0)
    # These aren't local variable assignments, these are actually a call to the
    # attribute writer methods, which have validations defined in them.
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  # The ideal solution to create different types of employees is to actually create separate
  # classes for each type of employee. Since each employee will have different roles and responsibilities.
  # But just for demonstration we are using class methods.

  def self.cashier(name)
    self.new(name, 12.75, 25)
  end

  def self.janitor(name)
    self.new(name, 10.5, 20)
  end

  def self.security_guard(name)
    self.new(name, 19.25, 30)
  end

  def print_pay_stub
    print_name
    pay_for_period = (hourly_wage * hours_per_week * 2).round(2)
    puts "Pay for this period: $#{pay_for_period}"
  end
end

jason = HourlyEmployee.security_guard("Jason Jackson")
jason.print_pay_stub

chloe = HourlyEmployee.cashier("Chloe Jackson")
chloe.print_pay_stub
