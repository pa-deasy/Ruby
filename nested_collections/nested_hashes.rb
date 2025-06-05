vehicles = {
  alice: {year: 2019, make: "Toyota", mode: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

p vehicles[:alice][:year]
p vehicles[:blake][:make]
p vehicles[:caleb][:model]

# vehicles[:zoe][:year]  NoMethodError
p vehicles.dig(:zoe, :year)  # nil

vehicles[:dave] = {year:2021, make: "Ford", model: "Escape"}
p vehicles

p vehicles.select { |name, data| data[:year] >= 2020 }

p vehicles.collect { |name, data| name if data[:year] >= 2020 }  # includes nil values

p vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact  #removes nil values

p vehicles.filter_map { |name, data| name if data[:year] >= 2020 }

