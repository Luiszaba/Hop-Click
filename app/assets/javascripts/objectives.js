//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


window.addEventListener('DOMContentLoaded', (event) => {
    console.log('DOM fully loaded and parsed');

    class Objective {
        constructor(id, name, description, due_date, completed, user_id, group_id) {
            this.id = id
            this.name = name
            this.description = description
            this.due_date = due_date
            this.completed = completed
            this.user_id = user_id
            this.group_id = group_id
        

            fetch('http://localhost:3000/objectives.json')
                .then(res => {
                    return res.json()
                })
                .then(objs => {

                    objs.forEach(obj => {
                        const {
                            id,
                            name,
                            description,
                            user_id,
                            due_date,
                            group_id,
                            completed
                        } = obj

                        new Objective(id, name, description, user_id, due_date, group_id, completed)
                    })
                })

            fetch('http://localhost:3000/objectives.json', {
                    method: 'POST',
                    body: JSON.stringify(data),
                    headers: {
                        'Content-Type': 'application/json'
                    },
                })

                .then(res => res.json())
                .then(obj => {
                    console.log(obj)
                    const {
                        id,
                        name,
                        description,
                        user_id,
                        due_date,
                        group_id,
                        completed
                    } = obj

                    new Objective(id, name, description, user_id, due_date, group_id, completed)
                })
        }
    }
    
})