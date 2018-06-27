=begin
def show_employee_list(employees)
  employees.each do |employee|
    data = {
      expected_salary: employee.expected_salary,
      experience: employee.experience
    }

    case employee.type
    when 'manager'
      data[:portfolio] = employee.mba_projects
    when 'developer'
      data[:github_link] = employee.github_link
    end

    render(data)
  end
end
=end

def set_pieces(set)
  set.each do |set|
    data = {
      name: set.name,
      width: set.width,
      length: set.length,
      finish: set.finish
    }

    case set.type
    when 'flat'
      data[:style] = set.tv_theatre
    when 'riser'
      data[:depth] = set.depth
    when 'stair'
      data[:depth] = set.depth,
      data[:rise] = set.rise,
      data[:run] = set.run,
      data[:steps] = set.steps
    end
    render(data)
  end
end
