//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

fetch('http://localhost:3000/objectives')
    .then(response => response.json())
    .then(obj => {
        obj.forEach(obj => {
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

    // query select 'form' and add event listener to submit
    document.querySelector('obj-form').addEventListener('submit', addObj)
    debugger
    function addObj(e) {
        e.preventDefault()
        const newOb = {
            'name': e.target.name.value,
            'description': e.target.description.value,
            'due_date': e.target.due_date.value,
            'completed': e.target.completed.value
        }

        fetch('http://localhost:3000/objectives', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ newOb })
            }).then((obj => {
                newOb = obj
                new Objective(id, name, description, user_id, due_date, group_id, completed)
            }))
        }