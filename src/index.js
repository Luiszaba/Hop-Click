fetch('http://localhost:3000/objective')
.then(res => res.json())
.then(objectives => {
    objective.forEach(objective => {
        const { id, name, description, completed, due_date} = objective
        new Objective(id, name, description, due_date, completed)
    });
})