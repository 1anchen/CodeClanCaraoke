class Bar

  attr_reader :name, :drinks

  def initialize
    @name = "Alpha_Bar"
    @id = 001
    @drinks = [

        {:drink_name => "Bear",
         :price => 5
        },

        {:drink_name => "Cider",
        :price => 4
        },

        {:drink_name => "Soda",
        :price => 3
        }

        ]
  end

end
