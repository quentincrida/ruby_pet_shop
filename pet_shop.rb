def pet_shop_name(shop)
   return shop[:name]
end

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash_in )
  shop[:admin][:total_cash] += cash_in
end

def pets_sold(animals_bought)
  return animals_bought[:admin][:pets_sold]
end

def increase_pets_sold(pets_bought, double_sale)
  return pets_bought[:admin][:pets_sold] += double_sale
end


def stock_count(pet_numbers)
   pet_numbers[:pets].count
end


def pets_by_breed(mammals, breed)
  total = []
  for pet in mammals[:pets]
    if pet[:breed] == breed
      total << mammals[:pets]
    end
  end
  return total
end



def find_pet_by_name(animal, birth_handle)
   for pet in animal[:pets]
     if pet[:name] == birth_handle
      return pet
     end
   end
   return nil
end

# def remove_pet_by_name(animal, past_animal)
#  for pet in animal[:pets]
#    if pet[:name] == past_animal
#    return animal[:pets].delete_at(3)
#    end
#  end
# end
def remove_pet_by_name(animal, past_animal)
  for pet in animal[:pets]
    if pet[:name] == past_animal
    return animal[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(animal, new_animal)
  animal[:pets].push(new_animal)
end

def customer_cash(monies)
   return monies[:cash]
end

def remove_customer_cash(remove_money, taken_out)
    remove_money[:cash] -= taken_out
end

def customer_pet_count(pet_numbers)
  pet_numbers[:pets].count
end

def add_pet_to_customer(person, new_pet)
 person[:pets].push(new_pet)
end
