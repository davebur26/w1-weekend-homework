#TEST 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#TEST 2
def total_cash(cash)
  return cash[:admin][:total_cash]
end

#TEST 3
def add_or_remove_cash( pet_shop , deposit)

  pet_shop[:admin][:total_cash] += deposit

end

#TEST 4

def pets_sold(number)
  return number[:admin][:pets_sold]
end

#TEST 5/6
def increase_pets_sold(pet_shop, number)
  pet_shop[:admin][:pets_sold] += number
end

#TEST 7
def stock_count(pet_shop)
  pet_shop[:pets].count
end

#TEST 8/9
def pets_by_breed(pet_shop , breed)
  pets = []
  for pet_s in pet_shop[:pets] do
    if pet_s[:breed] == breed
      pets.push(breed)
    end
  end

  return pets

end

#TEST 10/11
def find_pet_by_name(pet_shop, name)
  for pet_s in pet_shop[:pets] do
    if pet_s[:name] == name
      return pet_s
    end
  end
end

#TEST 12
  def remove_pet_by_name (pet_shop, remove_name)
     for pet_s in pet_shop[:pets] do
       if pet_s[:name] == remove_name
         pet_shop[:pets].delete(pet_s)
       end
    end
  end

#TEST 13
def add_pet_to_stock(pet_shop , new_pet)
  pet_shop[:pets].push(new_pet)
end

#TEST 14
def customer_pet_count(customer)
  customer[:pets].count
end

#TEST 15
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#EXTRA 1/2
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    true
  else
    false
  end
end

# EXTRA 3
def sell_pet_to_customer(pet_shop,pet,customer)

  for pet_s in pet_shop[:pets] do

    if (pet_s == pet) && (customer[:cash] >= pet[:price])

      customer[:pets].push(pet)

      pet_shop[:admin][:pets_sold] += 1

      pet_shop[:admin][:total_cash] += pet[:price]

    end
  end
end
