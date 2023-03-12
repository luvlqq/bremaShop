import './App.css';
import Header from './components/Header';
import SpecificationCard from './components/SpecificationCard';

function App() {
  return (
    <div className="App">
      <Header/>
      <div className="spec-card">
      <SpecificationCard/>
      <SpecificationCard/>
      <SpecificationCard/>
      </div>
    </div>
  );
}

export default App;
