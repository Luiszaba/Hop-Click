# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

objectives = Objective.create([
                        {name: "Buy Groceries", description: "Go to Safeway, don't forget the coupons."},

                        {name: "Wash the Car", description: "Have a date this Saturday."},

                        {name: "Clean my room", description: "It's that time of year again."},

                        {name: "Do the Laundry", description: "Don't forget the bleach!"},

                        {name: "Work on Mini-Project", description: "What are Happy Tails anyway?"},

                        {name: "Walk the Dog", description: "Take Fido around the block."}

                    ])