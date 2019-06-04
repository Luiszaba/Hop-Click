//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


window.addEventListener('DOMContentLoaded', (event) => {
    console.log('DOM fully loaded and parsed');


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
    document.querySelector('#objForm').addEventListener('submit', addObj)

    function addObj(event) {
        event.preventDefault()

        const data = {
            'name': event.target.name.value,
            'description': event.target.description.value,
            'due_date': event.target.due_date.value,
            'user_id': event.target.user.name.value,
            'completed': event.target.completed.value
        }

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

                // objective object continues to return undefined.  
                new Objective(id, name, description, user_id, due_date, group_id, completed)

                // reset is not a function, although objForm is a form?
                document.getElementById('form').reset()
            })
    }}
)