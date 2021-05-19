# ficus triangularis variegata 4 *
# anthurium red 4 *
ficus audrey 4 * has care if search other ficus audrey
monstera deliciosa small 4 * has care
calathea ornata 6 * has care DONE
calathea medallion 6 * has care

monstera deliciosa 10 ** 
# dracanena lisa cane 10 **
sansevieria laurentii 10 ** 
# philodendron congo rojo 10 ** 2 girls squatting no
# pencil cactus 10 ** hipster laying
# dracaena compacta 10 ** puppy
# ficus audrey pole 10 ** like this girl
philodendron hope selloum 10 ** DONE
# philodendron congo green 10 no
cereus cactus (cereus peruvianus) 10 ** 

fiddle leaf fig tree 14 *** 
# ficus audrey 14 *** no
# ficus moclame 14 *** meh
kentia palm 14 *** DONE
# monstera deliciosa 14 *** no
# dracanena reflexa 14 *** sexy tatted dude
birds of paradise 14 *** 
schefflera amate 14 *** DONE


1-nursery
2-hover
3-white
4-salmon
5-terracotta
6-stone
7-black





notes on how i will set up the shopping cart

cart is created for user when they initially create account
    keeps same cart until boolean changed to completed
    completed upon checkout
    then that triggers a new cart being created for them
cart has *user_id // belongs to user // when looking up look up their cart that is !completed

cart items is what holds all the products (also, from two tables= plants/planters)
    cart_items has *cart_id and *product_id on table

when user checks out, creates a new Order.new with order info
    order_total, address_id, cart_id, user_id, delivery_date, delivery_type
    *select address from your address book, by address_id //
    *autofill with address(1) then have a button for them to edit / change address
    and if you enter new address then it creates it in address book

then sets shopping cart *completed boolean true
*will need to change user_has one cart to a has_many

? when creating cart_item, will pass in , cart_id, product_id? or just product_id?






