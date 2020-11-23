# requires array of dwarf names
# outputs each name in number order
def roll_call_dwarves(names)
  names.each_with_index do |name, index|
    puts "#{index + 1}. #{name}"
  end
end

# requires array of planeteer calls
# returns a modified array
def summon_captain_planet(calls)
  calls.collect do |call|
    call.capitalize << "!"
  end
end

# requires an array of calls
# returns true if any call is longer than four chars, else false
def long_planeteer_calls(calls)
  i = 0

  while i < calls.size
    if calls[i].length > 4
      return true
    end
    i += 1
  end

  return false
end

# requires an array of strings
# returns a string (name of cheese)
def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]

  array.each do |item|
    cheese_types.each do |cheese|
      if cheese == item
        return cheese
      end
    end
  end

  nil
end

