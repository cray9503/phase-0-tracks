coffee_menu = {
  "Latte" =>
    {:cost => 4, :flavor => "chocolate", :can_take_away => true},
  "Cappuccino" =>
    {:cost => 3, :flavor => "vanilla", :can_take_away => true},
  "Tea" =>
    {:cost => 5, :type => "green", :can_take_away => true},
}

p coffee_menu["Cappuccino"][:flavor]

p coffee_menu["Tea"][:can_take_away]

p coffee_menu["Latte"][:cost]
