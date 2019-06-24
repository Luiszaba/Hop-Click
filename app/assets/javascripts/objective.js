class Objective {
    constructor(id, name, description, user_id, due_date, group_id, completed){
    this.id = id
    this.name = name
    this.description = description
    this.user_id = user_id
    this.due_date = due_date
    this.group_id = group_id
    this.completed = completed
    this.render()
    }


    toggle() {
        const id = event.target.dataset.id
        fetch(`http://localhost:3000/objectives/${id}`, {
            method: 'PATCH',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                completed: event.target.checked
            })
        })
    }

    removeObj(event) {
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
        const objContainter = document.getElementById('obj table')
        const objNew = document.createElement('tbody')
        objNew.classList.add('obj-slot')
        objNew.id = this.id
        objNew.innerHTML += $('tbody').innerHTML += `
        <tr>
                      <td id="postUser">${this.user_id}</td>
                      <td id="postName">${this.name}</td>
                      <td id="postDescription">${this.description}</td>
                      <td id="postDate">${this.due_date}</td>
                      <td id="postComplete">${this.completed}</td>
                      <td><button>show</button></td>
                      <td><button>edit</button></td>
                      <td><button>delete</button>
                      </td>
                    </tr>`
        objContainter.appendChild(objNew)
        }
    }