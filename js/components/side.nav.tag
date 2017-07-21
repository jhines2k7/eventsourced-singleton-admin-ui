<side-nav>            
    <div class="side-notification">
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
            refs="quick_links"
            class={ user-side-profile: true, active: viewModel.profileLinksActive } 
            onclick={ toggleProfileLinks }></div>
    <div class="main-menu-title">Menu</div>
    <div class="main-menu">
        <ul>
            <li class="active">
                <a href="#/">
                    <i class="fa fa-bars"></i> 
                    <span>Dashboard</span>
                </a>
            </li>           
            <li>
                <a href="#/chat">
                    <i class="fa fa-comments-o"></i> 
                    <span>Chat</span>
                </a>
            </li>
            <li>
                <a href="#/invoice">
                    <i class="fa fa-money"></i> 
                    <span>Invoice</span>
                </a>
            </li>
            <li>
                <a href="#/media">
                    <i class="fa fa-file-archive-o"></i> 
                    <span>Media</span>
                </a>
            </li>                
        </ul>
    </div>
    <div class="side-banner">
        <div class="banner-content">
            <div class="title">Pongo <div class="version">v1.1</div></div>
            <div class="subtitle">Simple & Clean Admin Template</div>
        </div>
    </div>

    <script>
        this.viewModel = {
            profileLinksActive: false
        }

        toggleProfileLinks(e) {
            this.viewModel.profileLinksActive = !this.viewModel.profileLinksActive;

            this.update(this.viewModel);
        }
    </script>    
</side-nav>