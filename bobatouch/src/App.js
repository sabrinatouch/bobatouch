import React from 'react';
import NavBar from './components/NavBar/NavBar'
import Hero from './components/Hero.js'
import './App.css';

function App() {
  return (
    <div className="App">
      < NavBar />
      <header className="App-header">
        <Hero></Hero>
        
      </header>
    </div>
  );
}

export default App;
