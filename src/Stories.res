open APIType

@react.component
let make = (~hits) => {
  Js.log(hits);


  <section className="stories">
    {
      hits
      ->Belt.Array.map((item:hitsData) => {
        <article className="story" key={item.title}>
          <h4 className="title">{React.string(item.title)}</h4>
          <p className="info">
            {React.string(Belt.Int.toString(item.points) ++ " points for " ++ item.author)}
            <span>{React.string(item.author ++ " | ")}</span>
            {React.string(Belt.Int.toString(item.num_comments) ++ " " ++ "comments")}
          </p>
          <div>
            <a
              href={item.url}
              className="read-link"
              target="_blank"
              rel="noopener noreferrer"
            >
            {React.string("read more")}
            </a>
          </div>
        </article>
      })
      ->React.array
    }
  </section>
}
