import React, { Component } from 'react';
import { nav } from 'react-materialize';
import './NavBar.css';

class NavBar extends Component {
    render() {
        return (
            <div class="navbar-fixed">
                <nav>
                    <div class="nav-wrapper">
                    <a href="#" class="brand-logo left">Boba Touch</a>
                    <ul id="nav-mobile" class="right hide-on-med-and-down">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Menu</a></li>
                    </ul>
                    </div>
                </nav>
            </div>
        );
    }
}

export default NavBar;