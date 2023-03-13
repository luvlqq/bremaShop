import './App.css';
import Header from './components/Header';
import SpecificationCard from './components/SpecificationCard';
import Sales from './components/Sale';
import Footer from './components/Footer';

function App() {
  return (
    <div className="App">
      <Header/>
      <div className="spec-card">
      <SpecificationCard/>
      <SpecificationCard/>
      <SpecificationCard/>
      </div>
      <Sales/>
      <Footer/>
    </div>
  );
}

export default App;
