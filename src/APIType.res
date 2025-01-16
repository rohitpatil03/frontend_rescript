
type hitsData = {
  author: string,
  num_comments: int,
  title: string,
  url: string,
  points: int,
}

@decco.decode
type hitsJson ={
  hits: list<hitsData>,
}

let convertJsonToHitsJsonType = (res: Js.Json.t): hitsJson => {
  // Json.Decode.{
  //   hits: res.hits |> field("hits", hitsJson)
  // }

  
  switch(Decco.decode(res.hits, hitsJson)){
    | OK(data) => data
    | Error(msg) => Js.Console.log("Decoding failed: " ++ msg); Js.Null
  }

}
