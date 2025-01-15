%%raw("import './App.css'")
open SearchForm
open Stories

@react.component
let make = () => {
  <> 
    <SearchForm.make />
    <Stories.make />
</>
}
