class newObjective {
    constructor(id, name, description, due_date, completed, user_id, group_id) {
        this.id = id
        this.name = name
        this.description = description
        this.due_date = due_date
        this.completed = completed
        this.user_id = user_id
        this.group_id = group_id

        this.render()
        //Object constructer for objective using all objective attributes
    }


    //render the object
    render() {
        // const container for the object assigned to the element id objectiveList
        const objectiveContainer = document.getElementById('objectiveList')
        //create container and card for objectives
        const objectiveCard = document.createElement('div')
        // const for checkbox
        const completed = this.completed ? 'completed' : ''
        // append objective-card to the div
        objectiveCard.classList.add('objective-card')
        // correct id necessary for function
        objectiveCard.id = this.id
        // form from _form in objective views
        objectiveCard.innerHTML =

            // form for create new objective
            `<form class="new_objective form">
        <div class="objForm">
            <h2><strong>Name:</strong>${this.name}</h2>
            <p>Description: ${this.description}</p>
            <p>Due: ${this.due_date}</p>
            <p>Assigned to: ${this.user_id}</p>
            <p>Group Assignment: ${this.group_id}<p>
            <p>Completed?:<input class="complete?" type="checkbox" ${completed}/><p>
        </div>
        </form>`

        objectiveContainer.appendChild(objectiveCard)
        // append the newly created information to the objectiveContainer
        debugger
    }
}