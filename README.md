# Cafe tech test

## Load (lib/load.rb)

Run load to load ruby objects from the JSON provided.
+ create a Till, with a Menu and cafe info
+ create a Menu, populated with Items

## Item (lib/item.rb)

Item object, simply holds item name and price (as integer in pence/cents)

## Menu (lib/menu.rb)

Stores an array of items (may not be necessary for all implementations)

## Order (lib/order.rb)

Stores an array of objects ordered

## Till (lib/till.rb)

Puts the order together, can only cope with one order at a time.
+ Initializer with 2 arguments: an array of [name, address, phone number] and a Menu object.
+ #add_item takes an item object, preceded by an optional quantity (defaults to 1) and pushes it into the order
+ #remove_item takes an item object, preceded by an optional quantity (defaults to 1) and removes it into the order (raises an error if not enough items)
+ #print sends the current order to printer and deletes it,  ready to have a new order created

## printer (lib/printer.rb)

Takes the cafe information and order from the till and prints it as a receipt.