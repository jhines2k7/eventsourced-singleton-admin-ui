<login>
    <div class="auth-wrapper">
        <div class="auth-header">
            <div class="auth-title">Pongo</div>
            <div class="auth-subtitle">Simple and Clean Admin Template</div>
            <div class="auth-label">Login</div>
        </div>
        <div class="auth-body">
            <div class="auth-content">
                <div class="form-group">
                    <label>Email</label>
                    <input ref="email" class="form-control" placeholder="Enter email" type="email">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input ref="password" class="form-control" placeholder="Enter password" type="password">
                </div>
            </div>
            <div class="auth-footer sm-text-center">
                <button class="btn btn-primary sm-max" onclick={ doLogin }>Log me in</button>
                <div class="pull-right auth-link sm-max sm-mgtop-20">
                    <label class="check-label"><input type="checkbox"> Remember Me</label>
                    <div class="devider"></div>
                    <a href="">Forgot Password?</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        import postal from 'postal/lib/postal.lodash'
        import reduce from '../reducer'
        import config from '../config'
        import {Router} from 'director/build/director'
        import EventStore from '../eventStore'

        let eventStore = null;

        this.on('mount', () => {
            eventStore = new EventStore();
        });

        subscribe(channel, topic) {
            let subscription = postal.subscribe({
                channel: channel,
                topic: topic,
                callback: function(data, envelope) {                    
                    let state = reduce(eventStore.events);

                    if(state.currentView !== 'login') {
                        this.unmount();
                    }

                }.bind(this)
            });

            return subscription;
        };

        this.subscribe('routing', 'admin.update.currentView');             

        doLogin(e) {
            e.preventDefault();

            let email = this.refs.email.value;
            let password = this.refs.password.value;

            fetch(`http://${config.domain}:8282/users/${email}/`).then( (response) => {
                if(response.ok) {
                    return response.json();
                }

                throw new Error('There was an error while making the request.');
            }).then( (user) => {
                eventStore.add(eventStore.events, [{
                    channel: 'async',
                    topic: 'admin.update.user',
                    data: {
                        name: user.name,
                        isLoggedIn: true,
                        role: user.role,
                        location: user.location,
                        imageUrl: user.imageUrl,
                        email: user.email
                    }
                }]);

                Router().setRoute('/');
            }).catch( (error) => {
                console.log(`ERROR: ${error.message}`);

                eventStore.add(eventStore.events, [{
                    channel: 'async',
                    topic: 'admin.async.request.failure'
                }]);
            });            
        }        
    </script>
</login>