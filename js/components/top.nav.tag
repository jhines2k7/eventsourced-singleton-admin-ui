<top-nav>
    <div class="top-nav">
        <div class="top-nav-box">
            <div class="side-nav-mobile" onclick={ toggleSideNav }><i class="fa fa-bars"></i></div>
            <div class="logo-wrapper">
                <div class="logo-box">
                    <img alt="pongo" src="assets/images/logo.png">
                    <a href="#/">
                        <div class="logo-title">Pongo</div>
                    </a>
                </div>
            </div>
            <div class="top-nav-content">
                <div class="top-nav-box">
                    <div class={ quick-link: true,  active: viewModel.quickLinksActive } onclick={ toggleQuickLinks }>
                        <div class="link-icon"><i class="fa fa-bars"></i></div>
                        <ul class="animated bounceInUp">
                            <li><a href=""><i class="fa fa-bars"></i> Mailbox</a></li>
                            <li><a href=""><i class="fa fa-map-marker"></i> Calendar</a></li>
                            <li><a href=""><i class="fa fa-suitcase"></i> Map</a></li>
                            <li><a href=""><i class="fa fa-signal"></i> Trainning</a></li>
                            <li><a href=""><i class="fa fa-paper-plane"></i> Photos</a></li>
                            <li><a href=""><i class="fa fa-map-o"></i> Timeline</a></li>
                        </ul>
                    </div>
                    <div class="global-search">
                        <form class="form-inline">
                            <button class="btn btn-primary" type="submit"> <i class="fa fa-search"></i></button>
                            <input class="form-control mb-1 mr-sm-1 mb-sm-0" placeholder="Search projects..." type="text">
                        </form>
                    </div>
                    <div class="top-notification">
                        <div class="notification-icon">
                            <i class="fa fa-envelope-open"></i>
                        </div>
                        <div class="notification-icon">
                            <div class="notification-badge bounceInDown animated timer" data-from="0" data-to="21">21</div>
                            <i class="fa fa-comments"></i>
                            <div class="notification-wrapper animated bounceInUp">
                                <div class="notification-header">Notifications <span class="notification-count">3</span></div>
                                <div class="notification-body">
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/asparagus.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Mark</strong> sent you a message</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/chocolate.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Lisa</strong> sent you a message</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                </div>
                                <div class="notification-footer">
                                    <a href="">See all notifications</a>
                                </div>
                            </div>
                        </div>
                        <div class="notification-icon">
                            <div class="notification-badge bounceInDown animated timer" data-from="0" data-to="3">3</div>
                            <i class="fa fa-bell"></i>
                            <div class="notification-wrapper animated bounceInUp">
                                <div class="notification-header">Notifications <span class="notification-count">3</span></div>
                                <div class="notification-body">
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/asparagus.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Mark</strong> sent you a email</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/chocolate.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Lisa</strong> sent you a email</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/belts.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Parker</strong> sent you a email</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/asparagus.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Sophie</strong> sent you a email</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/asparagus.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Sophie</strong> sent you a email</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                    <a class="notification-list" href="">
                                        <div class="notification-image">
                                            <img alt="pongo" src="assets/images/asparagus.jpg">
                                        </div>
                                        <div class="notification-content">
                                            <div class="notification-text"><strong>Sophie</strong> sent you a email</div>
                                            <div class="notification-time">1 minutes ago</div>
                                        </div>
                                    </a>
                                </div>
                                <div class="notification-footer">
                                    <a href="">See all notifications</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div data-is="profile-quicklinks" 
                        class={ user-top-profile: true, active: viewModel.profileLinksActive } 
                        onclick={ toggleProfileLinks }></div>
                </div>
            </div>
            <div class="profile-nav-mobile"><i class="fa fa-cog"></i></div>
        </div>
    </div>

    <script>
        import postal from 'postal/lib/postal.lodash'
        import reduce from '../reducer'
        import EventStore from '../eventStore'

        this.viewModel = {}

        let eventStore = null;

        this.on('mount', () => {
            eventStore = new EventStore();
        });

        toggleQuickLinks(e) {
            this.viewModel.quickLinksActive = !this.viewModel.quickLinksActive;

            this.update(this.viewModel);
        }

        toggleProfileLinks(e) {
            this.viewModel.profileLinksActive = !this.viewModel.profileLinksActive;

            this.update(this.viewModel);
        }

        toggleSideNav(e) {
            eventStore.add(eventStore.events, [{
                channel: 'async',
                topic: 'admin.toggle.sideNav'
            }]);
        }        

        subscribe(channel, topic) {
            let subscription = postal.subscribe({
                channel: channel,
                topic: topic,
                callback: function(data, envelope) {                    
                    let state = reduce(eventStore.events);

                    if(state.currentView === 'login') {
                        this.unmount();
                    }

                }.bind(this)
            });

            return subscription;
        };

        this.subscribe('routing', 'admin.update.currentView');
    </script>
</top-nav>