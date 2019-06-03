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

    // query select 'form' and add event listener to submit
    document.querySelector('#objForm').addEventListener('submit', addObj)

    function addObj(event) {
        event.preventDefault()
        const data = {
            'name': event.target.name.value,
            'description': event.target.description.value,
            'due_date': event.target.due_date.value,
            'completed': event.target.completed.checked
        }
debugger
        // incredibly difficult time solving 422 (Unprocessable Entity)
        // attempted to use fetch('http://localhost:3000/objectives.json', { (with and without .json appended to the url)
        // I also attempted to create  const url = this.action + '.json'  also without '.json' appended to the action
        fetch('http://localhost:3000/objectives', {           
                method: 'POST',
                body: JSON.stringify(data),
                headers: {
                    'Content-Type': 'application/json'
                },
            })
            // line below causing uncaught promise
            //.then(res => res.json())
            .then(obj => {

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
                document.getElementsByName('form').clear
            })
    }
});