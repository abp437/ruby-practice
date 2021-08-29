require "./employee"

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "Salary can't be negative"
    end

    @salary = salary.to_f
  end

  def initialize(name = "Unnamed", salary = 0)
    # These aren't local variable assignments, these are actually a call to the
    # attribute writer methods, which have validations defined in them.
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    # Here we prefer not to access the instance variables directly, so we rely on attribute readers
    # to get the values of the instance variables.
    # In attribute readers we don't have ti use the 'self' keyword, however for attribute writers we have to use the 'self' keyword
    # 'salary' is also a call to attribute reader
    print_name
    pay_for_period = ((salary / 365) * 14).round(2)
    puts "Pay for this period: $#{pay_for_period}"
  end
end

amy = SalariedEmployee.new("Amy Lee", 50000)
amy.print_pay_stub
