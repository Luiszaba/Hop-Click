class Objective {
    constructor(id, name, description, due_date, completed, user_id, group_id) {
        this.id = id
        this.name = name
        this.description = description
        this.due_date = due_date
        this.completed = completed
        this.user_id = user_id
        this.group_id = group_id
        this.render()

    }
    deleteObj(event) {
        const id = event.target.dataset.id
        fetch(`http://localhost:3000/objectives/${id}`, {
                method: 'DELETE'
            })
            .then(() => {
                document.getElementById('objectiveList')
                    .removeChild(document.getElementById(id))
            })
    }

    render() {
        const objectiveContainer = document.getElementById('objectiveList')
        const objectiveCard = document.createElement('div')
        const checked = this.completed == true ? 'completed' : ''
        objectiveCard.classList.add('objective-card')
        objectiveCard.id = this.id
        objectiveCard.innerHTML =
            `<form class="new_objective form">
        <div class="objForm">
            <h2><strong>Name:</strong>${this.name}</h2>
            <p>Description: ${this.description}</p>
            <p>Due: ${this.due_date}</p>
            <p>Assigned to: ${this.user_id}</p>
            <p>Group Assignment: ${this.group_id}<p>
            <p>Complete?:<input data-id="${this.id} class="toggle" name="completed" type="checkbox" ${checked}/><p>
            <button class="update" data-id="${this.id}>Update</button>
        </div>
        </form>`

        objectiveContainer.appendChild(objectiveCard)
        objectiveCard.addEventListener('click', event => {
            if (event.target.className.includes('toggle')) this.deleteObj(event)
        })
    }
}