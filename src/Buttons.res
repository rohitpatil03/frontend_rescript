

@react.component
let make = () => {
  let (pages, setPages) = React.useState(()=>0)

  let handlePrev = (e) =>{
    setPages((pages)=>pages-1)
  }

  let handleNext = (e) =>{
    setPages((pages)=>pages+1)
  }

  <div className="btn-container">
    <button onClick={handlePrev}>{React.string("Prev")}</button>
    // <p>{React.int(pages)} ++ {React.string("of")} ++ {React.int(nbpages)}</p>
    <p>{React.int(pages)}</p>
    <button onClick={handleNext}>{React.string("Next")}</button>
  </div>
}
