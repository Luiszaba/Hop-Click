//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

fetch('http://localhost:3000/objectives')
    .then(res => res.json())
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