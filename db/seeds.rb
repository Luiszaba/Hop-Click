# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

shazam = User.create(email: "test1@email.com", name: "Shazam", password: "password")
superman = User.create(email: "test2@email.com", name: "Superman", password: "password")
batman = User.create(email: "test3@email.com", name: "Batman", password: "password")
wonderwoman = User.create(email: "test4@email.com", name: "Wonder Woman", password: "password")

pets = Group.create(name: "Pets")
chores = Group.create(name: "Chores")
office = Group.create(name: "Office Task")

objectives = Objective.create([
                                  {name: "Buy Groceries", description: "Go to Wegmans", completed: false,
                                   user_id: superman.id, group_id: chores.id, due_date: Date.tomorrow},

                                  {name: "Take Trish out to eat", description: "Its our anniversay, May 3rd",
                                   completed: false, user_id: superman.id, group_id: chores.id, due_date: Date.tomorrow},

                                  {name: "Clean my room", description: "Stop leaving socks on the floor",
                                   completed: false, user_id: shazam.id, group_id: chores.id, due_date: Date.tomorrow},

                                  {name: "Do the Laundry", description: "Put delicates in the delicates bag",
                                   completed: false, user_id: wonderwoman.id, group_id: chores.id, due_date: Date.tomorrow},

                                  {name: "Work on Mini-Project", description: "This Rails project is taking forever to finish",
                                   completed: false, user_id: batman.id, group_id: chores.id, due_date: Date.tomorrow},

                                  {name: "Walk the Dog", description: "You don't have a dog!",
                                   completed: false, user_id: batman.id, group_id: pets.id, due_date: Date.tomorrow},

                                  {name: "Buy office supplies", description: "Update vendor lists & purchase snacks for the office",
                                   completed: false, user_id: batman.id, group_id: office.id, due_date: Date.tomorrow}

                              ])


