open Promise
open Webapi
open APIType

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
    Fetch.fetchWithInit(
"https://hn.algolia.com/api/v1/search?react",
      Fetch.RequestInit.make(~method_=Get, ()),
    )
    ->then(Fetch.Response.json)
    ->then(res => {
     let data = convertJsonToHitsJsonType(res) 
      let firstData: hitsData = data.hits[0]
      Js.log2("res", res)
      Js.log2("data", firstData)
      firstData->resolve
    })

  }

React.useEffect(() => {
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
