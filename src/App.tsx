import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo"/>
        <p class="text-3xl font-bold">
           Цифровое образование УрФУ
        </p>
        <a
            className="App-link"
          
            target="_blank"
            rel="noopener noreferrer"
        >
          Подробнее
        </a>
      </header>
    </div>
  );
}

export default App;
