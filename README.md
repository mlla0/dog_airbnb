# bdd & rails (thp week 4, day 4)

## 2/3 - dog_airbnb

## made in pair programming by Maud Lévy :fried_shrimp: & Antoine Vercoutère :poultry_leg:

### How to use

1. Git clone the repository to your computer
2. In your terminal, run the `bundle install` command
3. Run the `rails db:migrate` command
3. Then, run the `rails db:seed` command
4. You can now open your rails console by typing `rails console`
5. To display the **dogsitters table**, type `tp Dogsitter.all` in the rails console. To display the **dogs table**, type `tp Dog.all` in the rails console. To display the **cities table**, type `tp City.all` in the rails console. To display the **strolls table**, type `tp Stroll.all` in the rails console. To display the **stroll_dog_joins table**, type `tp StrollDogJoin.all` in the rails console.


### Composition and information

This app is composed of five tables : `dogsitters`, `dogs`, `cities`, `strolls`, and `stroll_dog_joins`

They are composed by the the following columns :

**TABLE : dogsitters**
* id,
* name,
* email,
* city_id

**TABLE : dogs** 
* id,
* name,
* race,
* city_id

**TABLE : cities** 
* id,
* name

**TABLE : strolls** 
* id,
* dogsitter_id,
* date

**TABLE : stroll_dog_joins** 
* id,
* stroll_id,
* dog_id

### example commands to display some informations

**First dogsitter of dog 47**
`tp Dog.find(47).strolls.first.dogsitter`

**All the strolls from dogsitter 4**
`tp Stroll.where(dogsitter: 4).all`

### All exercises

* [1/3 freedoc](https://github.com/mlla0/freedoc "#")
* [2/3 dog_airbnb](https://github.com/mlla0/dog_airbnb "#")
* [3/3 gossip_project](https://github.com/avnd26/gossip_project "#")

:kiss: