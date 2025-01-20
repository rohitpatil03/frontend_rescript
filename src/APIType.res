
open Json.Decode

type hitsData = {
  author: string,
  num_comments: int,
  title: string,
  url: string,
  points: int,
}


type hitsJson ={
  hits : array<hitsData>
}


let convertJsonToHitsDataType = (res: Js.Json.t): hitsData =>{
  {
    author:res |> field("author", string),
    num_comments : res |> field("num_comments", int),
    title: res|> field("title", string),
    url: res |> field("url", string),
    points: res |> field("points", int)
  }
}

let convertJsonToHitsJsonType = (res: Js.Json.t): hitsJson => {
  let items = res |> at(list{"hits"}, array(convertJsonToHitsDataType))
  {
    hits: items
  }
  }

  
  // switch(Decco.decode(res.hits, hitsJson)){
  //   | OK(data) => data
  //   | Error(msg) => Js.Console.log("Decoding failed: " ++ msg); Js.Null
  // }


