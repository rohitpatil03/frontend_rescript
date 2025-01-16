type hitsData = {
  author: string,
  num_comments: int,
  title: string,
  url: string,
  points: int,
}

type hitsJson ={
  hits: list<hitsData>,
}

let convertJsonToHitsJsonType = (res: Js.Json.t): hitsJson => {
  let data:hitsJson = {
    hits: res.hits
  }
}
