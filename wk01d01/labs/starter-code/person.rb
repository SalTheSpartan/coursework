class Person

    def name
        name = "Sal"

    end

    def age
        # create age variable here
        age = 25
    end

    def children
        children = [1, 2, 3, 4]


    end

    def address

        address = {

          house_number: 10,
          street: "downing street",
          town: "London",
          county: "London",
          postcode: "W3",
          email_addresses: ["hello@world.com" , "a@b.com"],

        }

    end

    def password
        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond",
        }
      password = favourite_things[1] + " " + memorable_stuff[:birth_town]
    end

end
