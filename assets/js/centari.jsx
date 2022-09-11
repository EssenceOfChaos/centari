import React from 'react'
import { createRoot } from 'react-dom/client';
const container = document.getElementById('mount');
const root = createRoot(container); // createRoot(container!) if you use TypeScript

import MenuExampleHeader from './components/header';
// import StickyLayout from './components/layout'
import WatchlistForm from './components/form'

export class App extends React.Component {
    render() {
        return (
            <div>
                <MenuExampleHeader />
                <WatchlistForm />

            </div>
        );
    }
}


root.render(<App tab="home" />);
