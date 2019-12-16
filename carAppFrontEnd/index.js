fetch(`http://localhost:3000/makes`)
    .then(response => response.json())
    .then(makes => makes.map(showMake))
    .catch(error => console.log(error))

function showMake(make){
    let h1 = document.createElement("h1")
    h1.innerHTML = `<a href="show.html?id=${make.id}">${make.name}</a>`
    document.body.appendChild(h1)
}

