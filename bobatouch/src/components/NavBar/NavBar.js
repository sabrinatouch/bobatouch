import React, { Component } from 'react';
import { nav } from 'materialize-css';
import './NavBar.css';

class NavBar extends Component {
    render() {
        return (
            <nav>
                <div class="nav-wrapper">
                    <a href="#" class="brand-logo">BobaTouch</a>
                    <ul id="nav-web" class="hide-on-med-and-down">
                        <li><a href="#">Menu</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Location</a></li>
                    </ul>
                </div>
            </nav>
        );
    }
}

export default NavBar;