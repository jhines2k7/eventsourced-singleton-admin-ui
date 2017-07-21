<profile-quicklinks>
    <div class="user-image">
        <div class="user-on"></div>
        <img alt="pongo" src="assets/images/{ viewModel.imageUrl }">
    </div>
    <div class="clear">
        <div class="user-name">{ viewModel.name }</div>
        <div class="user-group">{ viewModel.role }</div>
        <ul class="user-side-menu user-top-menu animated bounceInUp">
            <li><a href="">Profile <div class="badge badge-yellow pull-right">2</div></a></li>
            <li><a href="">Settings</a></li>
            <li><a href="">Change Password</a></li>
            <li><a href="#/logout">Logout</a></li>
        </ul>
    </div>
        
    <script>
        import postal from 'postal/lib/postal.lodash'
        import reduce from '../reducer'
        import EventStore from '../eventStore'
        
        this.viewModel = {
            name: '',
            role: ''
        }

        this.on('mount', () => {
            let eventStore = new EventStore();

            let state = reduce(eventStore.events);
        
            this.viewModel = {
                name: state.user.name,
                role: state.user.role,
                imageUrl: state.user.imageUrl
            }

            this.update(this.viewModel);                                
        })
    </script>
</profile-quicklinks>