
@react.component
let make = () => {

  let (searchTerm, setSearchTerm) = React.useState(() => "react")
  /* 
  let fetchAPI = async() =>{
    let response = await Fetch.fetch(`https://hn.algolia.com/api/v1/search?${searchTerm}`, {method:#GET})
    Js.log(response)
  }

  let handleSubmit = (e: ReactEvent.Form.t) => {
    ReactEvent.Form.preventDefault(e);
    Js.log(searchTerm);
  };
 */ 

  let fetch = () => {
    // Fetch.fetch("https://hn.algolia.com/api/v1/search?react")->then(res =>
    //   switch res->Fetch.Response.ok {
    //   | true => res->Fetch.Response.json->then(res => res->constructBacon->resolve) 
    //   | false =>
    //     Error(
    //       `${res->Fetch.Response.status->Int.toString}: ${res->Fetch.Response.statusText}`,
    //     )->resolve
    //   }
    // )
    // ->catch(_ => Error("Something went wrong")->resolve)
     Fetch.fetch("https://hn.algolia.com/api/v1/search?react")->then(Fetch.Response.text)
  }

  React.useEffect0(()=>{
    let data = fetch()
    None
  }, [])

  <form className="search-form">
    <h2>{React.string("Hacker News")}</h2>
    <input
      type_="text"
      value={searchTerm}
      onChange={(ev: ReactEvent.Form.t) => {
                let target = ReactEvent.Form.target(ev)
                let value: string = target["value"]
                setSearchTerm(_prevValue => value)
              }}
    />
    <button type_="submit">{React.string("Submit")}</button>
  </form>
}
