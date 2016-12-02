# Cafe tech test

## Load

Run load to load ruby objects from the JSON provided.
+ create a Till, with a Menu and cafe info
+ create a Menu, populated with Items

## Item

Item object, simply holds item name and price (as integer in pence/cents)

## Menu

Stores an array of items (may not be necessary for all implementations)

## Order

Stores an array of objects ordered

## Till

Puts the order together, can only cope with one order at a time.
+ #add_item takes an item object, preceded by an optional quantity (defaults to 1) and pushes it into the order
+ #remove_item takes an item object, preceded by an optional quantity (defaults to 1) and removes it into the order (raises an error if not enough items)
+ #print sends the current order to printer and deletes it,  ready to have a new order created

## printer

Takes the cafe information and order from the till and prints it as a receipt.