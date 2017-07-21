export default function reduce(events) {
    "use strict";

    return events.reduce( (state, event) => {
        if(event.topic === 'admin.update.currentView') {
            state.currentView = event.data;
        }

        if(event.topic === 'admin.update.breadcrumbs') {
            state.breadcrumbs.currentView = event.data.currentView;
            state.breadcrumbs.subCategory = event.data.subCategory;
            state.breadcrumbs.url = event.data.url;
        }

        if(event.topic === 'admin.update.user') {
            state.user = event.data;                        
        }

        if(event.topic === 'admin.update.home') {
            state.bounceRate = event.data.bounceRate;
            state.location = event.data.location;
            state.comments = event.data.comments;
            state.visitors = event.data.visitors;
            state.productsSold = event.data.productsSold;           
        }

        if(event.topic === 'admin.signout.success') {
            state.user.isLoggedIn = false;
        }

        return state;
    }, {
        currentView: 'home',
        breadcrumbs: {
            currentView: 'Home',
            subCategory: '',
            url: ''
        },
        user: {
            name: '',
            role: '',
            isLoggedIn: false,
            location: '',
            imageUrl: '',
            email: ''
        },
        bounceRate: 0,
        location: 0,
        comments: 0,
        visitors: 0,
        productsSold: 0
    })
}