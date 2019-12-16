const searchParams = new URLSearchParams(window.location.search)
const id = searchParams.get("id")



fetch(`http://localhost:3000/makes/${id}`)
    .then(response => response.json())
    .then(make => {
        let h1 = document.createElement("h1")
        h1.innerText = make.name
        
        document.body.appendChild(h1)

        make.models.map(model => {
            let p = document.createElement("p")
            p.innerText = model.name
            document.body.appendChild(p)
        })
    })
    .catch(error => console.log(error))