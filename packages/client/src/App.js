import './App.css';
import Header from './components/Header';
import SpecificationCard from './components/SpecificationCard';
import Sales from './components/Sale';
import Footer from './components/Footer';
import Card from './components/Card';


const  speccard=[
  {
    title:"men",
    imgUrl:"/img/speccardmen1.jpg"
  },
  {
    title:"women",
    imgUrl:"/img/девкастоник.jpg"
  },
  {
    title:"uni",
    imgUrl:"/img/unispeccard.jpg"
  }
]

const cardsonsale=[
  {
    title:"",
    price:"",
    imageUrl:""
  },
  {
    title:"",
    price:"",
    imageUrl:""
  },
  {
    title:"",
    price:"",
    imageUrl:""
  },
  {
    title:"",
    price:"",
    imageUrl:""
  },
]

function App() {
  return (
    <div className="App">
      <Header/>
      <div className="spec-card">
      {speccard.map((obj)=>(
        <SpecificationCard title={obj.title} imgUrl={obj.imgUrl}/>
      ))}
      </div>
      <Sales/>
      <div className="cards-on-sale">
      <Card/>
      <Card/>
      <Card/>
      <Card/>
      <Card/>
      <Card/>
      <Card/>
      <Card/>
      </div>
      <Footer/>
    </div>
  );
}

export default App;
