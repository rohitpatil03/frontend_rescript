open Js.Promise
open APIType
open Stories

@react.component
let make = () => {

  let (searchTerm, setSearchTerm) = React.useState(() => "React")
  let (hits, setHits) = React.useState(()=>{hits:[]})
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
    Fetch.fetch(
`https://hn.algolia.com/api/v1/search?query=${searchTerm}`
    )
    |> then_(Fetch.Response.json)
    |> then_(res => {
    Js.log(res)
     let data:hitsJson = convertJsonToHitsJsonType(res)
    Js.log(data)
    setHits((_)=>data)
Js.Promise.resolve()
    })
    
  }

React.useEffect1(() => {
    let data = fetch()
    None
}, [searchTerm])
<div>
  <form className="search-form">
    <h2 style={ReactDOM.Style.make(~fontSize="40px", ~fontWeight="700", ())}>{React.string("Hacker News")}</h2>
      <br />
    <input
      type_="text"
        className="form-input"
      value={searchTerm}
      onChange={(ev: ReactEvent.Form.t) => {
                let target = ReactEvent.Form.target(ev)
                let value: string = target["value"]
                setSearchTerm(_prevValue => value)
              }}
    />
  </form>
    <Stories.make hits={hits.hits} />
</div>

}
