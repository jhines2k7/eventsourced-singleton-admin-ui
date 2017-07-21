<breadcrumbs>
    <a href="#/">Home</a> 
    <span if={ viewModel.subCategory !== '' } class="breadcrumb-devider">/</span> 
    <a if={ viewModel.subCategory !== '' } href="{ viewModel.url }">{ viewModel.subCategory }</a> 
    <span if={ viewModel.subCategory !== '' } class="breadcrumb-devider">/</span> 
    <a if={ viewModel.subCategory !== '' } href="{ viewModel.url }">{ viewModel.currentView }</a>

    <script>
        import postal from 'postal/lib/postal.lodash'
        import reduce from '../reducer'
        import EventStore from '../eventStore'

        this.viewModel = {
            subCategory: '',
            currentView: '',
            url: ''
        };

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
                    
                    this.viewModel.currentView = state.breadcrumbs.currentView;
                    this.viewModel.subCategory = state.breadcrumbs.subCategory;
                    this.viewModel.url = state.breadcrumbs.url;

                    this.update(this.viewModel);
                }.bind(this)
            });

            return subscription;
        };

        this.subscribe('async', 'admin.update.breadcrumbs');
    </script>
</breadcrumbs>