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
        // append objective-card to the div
        objectiveCard.classList.add('objective-card')
        // correct id necessary for function
        objectiveCard.id = this.id
        // form from _form in objective views
        objectiveCard.innerHTML =
    `<form class="new_objective form">
        <div class="field">
            <%= form.label :name %>
            <%= form.text_field :name %>
        </div>
        <div class="field">
            <%= form.label :description %>
            <%= form.text_area :description %>
        </div>
        <div class="field">
            <%= form.label :user_id, "Assign task to a user" %>
            <%= form.collection_select :user_id, User.all, :id, :name %>
        </div>
        <div class="field">
            <%= form.label :due_date %>
            <%= form.date_select :due_date %>
        </div>
        <div class = "group field" >
            <%= form.label: group % >
            <%= form.collection_select: group_id, Group.all,: id,: name % >
            </div>
        <div class="field">
            <%= form.label :completed %>
            <%= form.check_box :completed %>
        </div>
        <div class="actions">
            <%= form.submit %>
        </div>`

        objectiveContainer.appendChild(objectiveCard)
        // append the newly created information to the objectiveContainer
        objectiveCard.addEventListener('click', e=> {
        //callback method for event listener
        })
    }}