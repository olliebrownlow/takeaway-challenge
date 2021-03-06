class Menu
  attr_reader :menu_items

  def initialize
    @menu_items = { :Starters => [["Soup", "3.50"],
                                ["Fritter", "4"]],
                  :Mains => [["Chicken", "8.50"],
                            ["Lasagne", "7.50"]],
                  :Deserts => [["Crumble", "3.50"],
                            ["Icecream", "3"]] }
  end

  def view
    puts starters + mains + deserts
  end
end

private

def starters
  "#{@menu_items.keys[0]}:\n" +
  "#{@menu_items.values[0][0].join(" - £")}\n" +
  "#{@menu_items.values[0][1].join(" - £")}\n"
end

def mains
  "#{@menu_items.keys[1]}:\n" +
  "#{@menu_items.values[1][0].join(" - £")}\n" +
  "#{@menu_items.values[1][1].join(" - £")}\n"
end

def deserts
  "#{@menu_items.keys[2]}:\n" +
  "#{@menu_items.values[2][0].join(" - £")}\n" +
  "#{@menu_items.values[2][1].join(" - £")}"
end
