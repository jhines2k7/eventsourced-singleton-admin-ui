import './views/home.view'
import './views/chat.view'
import './views/media.view'
import './views/invoice.view'
import './views/login.view'
import './components/top.nav'
import './components/side.nav'
import './components/profile.quicklinks'
import './components/breadcrumbs'

import Storage from './storage'
import {Router} from 'director/build/director'
import riot from 'riot'
import EventStore from './eventStore'
import config from './config'
import reduce from './reducer'

let eventStore = null;
let isLoggedIn = false;
let currentView = '';

let home = function() {
    'use strict';

    if(!isLoggedIn) {   
        Router().setRoute('/login');
    } else {
        fetch(`http://${config.domain}:8282/home`).then( (response) => {
            if(response.ok) {
                return response.json();
            }

            throw new Error('There was an error while making the request.');
        }).then( (data) => {
            if(document.getElementsByTagName('top-nav').length === 0) {
                document.body.appendChild(document.createElement('top-nav'));
                riot.mount('top-nav');
            }

            document.body.appendChild(document.createElement('home'));
            riot.mount('home');            
            
            eventStore.add(eventStore.events, [{
                channel: 'routing',
                topic: 'admin.update.currentView',
                data: 'home'
            },{
                channel: 'async',
                topic: 'admin.update.breadcrumbs',
                data: {
                    currentView: 'Home',
                    subCategory: '',
                    url: ''            
                }
            }, {
                channel: 'async',
                topic: 'admin.update.home',
                data: data
            }]);
        }).catch( (error) => {
            console.log(`ERROR: ${error.message}`);

            eventStore.add(eventStore.events, [{
                channel: 'async',
                topic: 'admin.async.request.failure'
            }]);
        });
    }    
};

let chat = function() {
    'use strict';
    
    if(!isLoggedIn) {   
        Router().setRoute('/login');
    } else {
        if(document.getElementsByTagName('top-nav').length === 0) {
            document.body.appendChild(document.createElement('top-nav'));
            riot.mount('top-nav');
        }

        document.body.appendChild(document.createElement('chat'));
        riot.mount('chat');        

        eventStore.add(eventStore.events, [{
            channel: 'routing',
            topic: 'admin.update.currentView',
            data: 'chat'
        },{
            channel: 'async',
            topic: 'admin.update.breadcrumbs',
            data: {
                currentView: 'Chat',
                subCategory: 'Communication',
                url: '#/chat'            
            }
        }]);
    }    
}

let media = function() {
    'use strict';

    if(!isLoggedIn) {   
        Router().setRoute('/login');
    } else {
        if(document.getElementsByTagName('top-nav').length === 0) {
            document.body.appendChild(document.createElement('top-nav'));
            riot.mount('top-nav');
        }

        document.body.appendChild(document.createElement('media'));
        riot.mount('media');  

        eventStore.add(eventStore.events, [{
            channel: 'routing',
            topic: 'admin.update.currentView',
            data: 'media'
        },{
            channel: 'async',
            topic: 'admin.update.breadcrumbs',
            data: {
                currentView: 'Images',
                subCategory: 'Media',
                url: '#/media'            
            }
        }]);
    }    
}

let invoice = function() {
    'use strict';

    if(!isLoggedIn) {   
        Router().setRoute('/login');
    } else {
        if(document.getElementsByTagName('top-nav').length === 0) {
            document.body.appendChild(document.createElement('top-nav'));
            riot.mount('top-nav');
        }

        document.body.appendChild(document.createElement('invoice'));
        riot.mount('invoice');            

        eventStore.add(eventStore.events, [{
            channel: 'routing',
            topic: 'admin.update.currentView',
            data: 'invoice'
        },{
            channel: 'async',
            topic: 'admin.update.breadcrumbs',
            data: {
                currentView: 'Invoice',
                subCategory: 'Billing',
                url: '#/invoice'            
            }
        }]);
    }    
}

let login = function() {
    'use strict';

    if(isLoggedIn) {
        Router().setRoute('/');
    } else {
        if(document.getElementsByTagName('login').length === 0) {
            document.body.appendChild(document.createElement('login'));
            riot.mount('login');
        }

        eventStore.add(eventStore.events, [{
            channel: 'routing',
            topic: 'admin.update.currentView',
            data: 'login'
        }]);
    }
    
}

let logout = function() {
    'use strict';

    if(isLoggedIn) {
        Router().setRoute('/');
    } else {
        eventStore.add(eventStore.events, [{
            channel: 'async',
            topic: 'admin.signout.success',
            data: {
                name: '',
                role: '',
                isLoggedIn: false,
                location: '',
                imageUrl: '',
                email: ''
            }
        }]);

        Router().setRoute('/login');
    }
            
}

let checkLoginStatus = function() {
    let state = reduce(eventStore.events);

    isLoggedIn = state.user.isLoggedIn;    
}

Storage.get().then( (events) => {
    eventStore = new EventStore(events);

    let router = Router({
        '/': home,
        '/chat': chat,
        '/media': media,
        '/invoice': invoice,    
        '/login': login,
        '/logout': logout
    });

    router.configure({
        before: checkLoginStatus
    });

    router.init();
});
