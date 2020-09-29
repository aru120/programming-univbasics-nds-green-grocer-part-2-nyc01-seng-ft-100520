require_relative './part_1_solution.rb'
require 'pry'


def apply_coupons(cart, coupons)
 
 i = 0
 
 coupons.each do |key|
 item = find_item_by_name_in_collection(key[:item],cart)
 coupon_name = "#{coupons[i][:item]} W/COUPON"
 binding.pry
 i+=1
 end
   

  
  
end



def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
