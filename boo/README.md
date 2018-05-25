# simpl_rpg_game

Repo includes project called Simple RPG Game. It's simple rpg game (in console atm) which was one of tasks in Nokia Academy X in Wroclove. 
I decided to develop this idea by myself.

At the moment project includes following classes:
-> Interface IItem
-> Interface IWeapon (inherited from IIteam) 
-> Interface IArmor (inherited from IIteam)
-> class Hammer and Dagger (inherited from IWeapon) -> example weapons
-> class Helm, Tunic, Pants, Gloves, Boots (inherited from IArmor) -> elements of equipment
-> class Player -> class that allow to create players 
-> class Inventory -> class, where all of the player's items are stored



It's very important to put here much more details about game and all classes (functionality, atributes, methods)

Notes:
* probably interface IItem does not need method void GetName() const, because if one create some item, then probably  the object(variable) name shoudl be its name.
    -> disadvantage of this soultion is multiple occuarnce of some item -> then some indexing would be neeeded.
* maybe in future it would be good to change something in Inventory class, for example:
    -> instead of atribute std::vector<IItem*> Items it should