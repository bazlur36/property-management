FactoryBot.define do
  factory :asset do
    title {"Awesome Property"}
    description {"modon kumaru8"}
    type {"House"}
  end

  factory :house do
    title {"Awesome House"}
    description {"modon kumaru house "}
    owner {"houseowner@gmail.com"}
    address {"House, Address"}
    rooms {10}
    sqmt {120}
    floors {2}
    air_cond {true}
    price {100000}
  end

  factory :complex_building do
    title {"Awesome Complex building"}
    description {"modon kumaru Complex building "}
    owner {"complexowner@gmail.com"}
    address {"Complex Building, Address"}
    units {4}
    sqmt {1200}
    floors {2}
    price {190000}
  end

  factory :commercial_unit do
    title {"Awesome Commercial Unit"}
    description {"modon kumaru Commercial Unit "}
    owner {"comunit@gmail.com"}
    address {"Commercial Unit, Address"}
    shops {4}
    sqmt {1250}
    parking {20}
    price {390000}
  end


end