<home class="wrapper">
    <aside data-is="side-nav" class="side-nav"></aside>
    <div class="main">
        <div data-is="breadcrumbs" class=breadcrumb></div>
        <div class="top-banner">
            <div class="top-banner-title">Dashboard</div>
            <div class="top-banner-subtitle">Welcome back, { viewModel.user.firstName }, <i class="fa fa-map-marker"></i> { viewModel.user.location }</div>
        </div>
        <div class="content no-top-banner">
            <div class="content-header no-mg-top">
                <i class="fa fa-newspaper-o"></i>
                <div class="content-header-title">Author Earnings</div>
                <select class="select-rounded pull-right">
                    <option>Today</option>
                    <option>7 Days</option>
                    <option>14 Days</option>
                    <option>Last Month</option>
                </select>
            </div>
            <div class="panel">
                <div class="row">
                    <div class="col-md-3 card-wrapper">
                        <div class="card">
                            <i class="fa fa-newspaper-o"></i>
                            <div class="clear">
                                <div class="card-title">
                                    <span class="timer" data-from="0" data-to="{ viewModel.productsSold }">{ viewModel.productsSold }</span>
                                </div>
                                <div class="card-subtitle">PRODUCTS SOLD</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 card-wrapper">
                        <div class="card">
                            <i class="fa fa-signal"></i>
                            <div class="clear">
                                <div class="card-title">
                                    <span class="timer" data-from="0" data-to="{ viewModel.bounceRate }">{ viewModel.bounceRate }</span>%
                                </div>
                                <div class="card-subtitle">BOUNCE RATE</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 card-wrapper">
                        <div class="card">
                            <i class="fa fa-map-marker"></i>
                            <div class="clear">
                                <div class="card-title">
                                    <span class="timer" data-from="0" data-to="{ viewModel.location }">{ viewModel.location }</span>m
                                </div>
                                <div class="card-subtitle">LOCATION</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 card-wrapper">
                        <div class="card">
                            <i class="fa fa-suitcase"></i>
                            <div class="clear">
                                <div class="card-title">
                                    0<span class="timer" data-from="0" data-to="8">08</span>:
                                    <span class="timer" data-from="0" data-to="20">20</span>
                                </div>
                                <div class="card-subtitle">MEETING</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel">
                <div class="row">
                    <div class="col-md-8 sm-max">
                        <div class="content-header">
                            <i class="fa fa-signal"></i>
                            <div class="content-header-title">Line Chart</div>
                        </div>
                        <div class="content-box">
                            <div class="content-box-header">
                                <div class="header-menu active">Visitors</div>
                                <div class="header-menu">Comments ({ viewModel.comments })</div>
                                <select class="select-rounded pull-right">
                                    <option>Today</option>
                                    <option>7 Days</option>
                                    <option>14 Days</option>
                                    <option>Last Month</option>
                                </select>
                            </div>
                            <div class="line-chart-wrapper">
                                <div class="line-chart-label">LAST VISITORS</div>
                                <div class="line-chart-value">
                                    <span class="timer" data-from="0" data-to="{ viewModel.visitors }">{ viewModel.visitors }</span>
                                </div>
                                <canvas id="line-chart"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 sm-max">
                        <div class="content-header">
                            <i class="fa fa-suitcase"></i>
                            <div class="content-header-title">Products</div>
                            <select class="select-rounded pull-right">
                                <option>Today</option>
                                <option>7 Days</option>
                                <option>14 Days</option>
                                <option>Last Month</option>
                            </select>
                        </div>
                        <div class="content-box slide-item">
                            <div class="product-list">
                                <img alt="pongo" class="pull-left" src="assets/images/belts.jpg">
                                <div class="clear">
                                    <div class="product-list-title">Iphone 6</div>
                                    <div class="product-list-category">Smartphone</div>
                                </div>
                                <div class="product-list-price">$2,300</div>
                            </div>
                            <div class="product-list">
                                <img alt="pongo" class="pull-left" src="assets/images/asparagus.jpg">
                                <div class="clear">
                                    <div class="product-list-title">Asus</div>
                                    <div class="product-list-category">Laptop</div>
                                </div>
                                <div class="product-list-price">$9,150</div>
                            </div>
                            <div class="product-list">
                                <img alt="pongo" class="pull-left" src="assets/images/chocolate.jpg">
                                <div class="clear">
                                    <div class="product-list-title">Iphone 5</div>
                                    <div class="product-list-category">Smartphone</div>
                                </div>
                                <div class="product-list-price">$124</div>
                            </div>
                            <div class="product-list">
                                <img alt="pongo" class="pull-left" src="assets/images/bulldozer.jpg">
                                <div class="clear">
                                    <div class="product-list-title">Lenovo</div>
                                    <div class="product-list-category">Laptop</div>
                                </div>
                                <div class="product-list-price">$454</div>
                            </div>
                            <div class="product-list">
                                <img alt="pongo" class="pull-left" src="assets/images/belts.jpg">
                                <div class="clear">
                                    <div class="product-list-title">Iphone 6</div>
                                    <div class="product-list-category">Smartphone</div>
                                </div>
                                <div class="product-list-price">$9,023</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel">
                <div class="row">
                    <div class="col-md-4">
                        <div class="content-header">
                            <i class="fa fa-newspaper-o"></i>
                            <div class="content-header-title">Donut Chart</div>
                        </div>
                        <div class="content-box">
                            <div class="donut-chart-wrapper">
                                <canvas width="120" height="120" id="donut-chart"></canvas>
                                <div class="donut-chart-label">
                                    <div class="donut-chart-value">330</div>
                                    <div class="donut-chart-title">Total Visitors</div>
                                </div>
                            </div>
                            <div class="donut-chart-legend">
                                <div class="legend-list">
                                    <div class="legend-bullet green"></div>
                                    <div class="legend-title">Australia</div>
                                </div>
                                <div class="legend-list">
                                    <div class="legend-bullet red"></div>
                                    <div class="legend-title">Nigeria</div>
                                </div>
                                <div class="legend-list">
                                    <div class="legend-bullet yellow"></div>
                                    <div class="legend-title">United States</div>
                                </div>
                                <div class="legend-list">
                                    <div class="legend-bullet blue"></div>
                                    <div class="legend-title">Japan</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="content-header">
                            <i class="fa fa-newspaper-o"></i>
                            <div class="content-header-title">New Products</div>
                        </div>
                        <div class="content-box">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <th>Product Name</th>
                                            <th class="text-center">Images</th>
                                            <th class="text-center">Status</th>
                                            <th class="text-right">Order Total</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <td class="nowrap">Iphone 6</td>
                                            <td class="text-center"><img alt="pongo" class="image-table" src="assets/images/asparagus.jpg"></td>
                                            <td class="text-center">
                                                <div class="status-pill green"></div>
                                            </td>
                                            <td class="text-right">$22</td>
                                            <td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
                                        </tr>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <td class="nowrap">Iphone 6</td>
                                            <td class="text-center"><img alt="pongo" class="image-table" src="assets/images/belts.jpg"></td>
                                            <td class="text-center">
                                                <div class="status-pill red"></div>
                                            </td>
                                            <td class="text-right">$22</td>
                                            <td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
                                        </tr>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <td class="nowrap">Iphone 6</td>
                                            <td class="text-center"><img alt="pongo" class="image-table" src="assets/images/bulldozer.jpg"></td>
                                            <td class="text-center">
                                                <div class="status-pill yellow"></div>
                                            </td>
                                            <td class="text-right">$22</td>
                                            <td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
                                        </tr>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <td class="nowrap">Iphone 6</td>
                                            <td class="text-center"><img alt="pongo" class="image-table" src="assets/images/chocolate.jpg"></td>
                                            <td class="text-center">
                                                <div class="status-pill green"></div>
                                            </td>
                                            <td class="text-right">$22</td>
                                            <td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
                                        </tr>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <td class="nowrap">Iphone 6</td>
                                            <td class="text-center"><img alt="pongo" class="image-table" src="assets/images/belts.jpg"></td>
                                            <td class="text-center">
                                                <div class="status-pill red"></div>
                                            </td>
                                            <td class="text-right">$22</td>
                                            <td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
                                        </tr>
                                        <tr>
                                            <th><input type="checkbox"></th>
                                            <td class="nowrap">Iphone 6</td>
                                            <td class="text-center"><img alt="pongo" class="image-table" src="assets/images/bulldozer.jpg"></td>
                                            <td class="text-center">
                                                <div class="status-pill yellow"></div>
                                            </td>
                                            <td class="text-right">$22</td>
                                            <td class="text-center"><i class="fa fa-pencil"></i> <i class="fa fa-trash"></i></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        import postal from 'postal/lib/postal.lodash'
        import reduce from '../reducer'
        import EventStore from '../eventStore'

        this.viewModel = {
            user: {},
            bounceRate: 0,
            location: 0,
            comments: 0,
            visitors: 0,
            productsSold: 0
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
                                        
                    if(state.currentView !== 'home') {
                        this.unmount();
                    } else {

                        this.viewModel.user = state.user;
                        this.viewModel.user.firstName = state.user.name.split(' ')[0];

                        this.viewModel.bounceRate = state.bounceRate;
                        this.viewModel.location = state.location;
                        this.viewModel.comments = state.comments;
                        this.viewModel.visitors = state.visitors;
                        this.viewModel.productsSold = state.productsSold; 

                        this.update(this.viewModel);
                    }
                }.bind(this)
            });

            return subscription;
        };

        this.subscribe('routing', 'admin.update.currentView');
        this.subscribe('routing', 'admin.update.home');

        this.on('updated', () => {
            var lineChart = document.getElementById('line-chart');

            var lineData = {
                labels: ["10", "20", "30", "40", "50", "60", "70"],
                datasets: [{
                    label: "Visitors Graph",
                    fill: false,
                    lineTension: 0,
                    backgroundColor: "#fff",
                    borderColor: "#6896f9",
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    pointBorderColor: "#fff",
                    pointBackgroundColor: "#2a2f37",
                    pointBorderWidth: 3,
                    pointHoverRadius: 10,
                    pointHoverBackgroundColor: "#FC2055",
                    pointHoverBorderColor: "#fff",
                    pointHoverBorderWidth: 3,
                    pointRadius: 6,
                    pointHitRadius: 10,
                    data: [5, 32, 5, 42, 50, 59, 11],
                    spanGaps: false
                }]
            };

            var myLineChart = new Chart(lineChart, {
                type: 'line',
                data: lineData,
                options: {
                    legend: {
                        display: false
                    },
                    scales: {
                        xAxes: [{
                            ticks: {
                                fontSize: '11',
                                fontColor: '#969da5'
                            },
                            gridLines: {
                                color: 'rgba(0,0,0,0.05)',
                                zeroLineColor: 'rgba(0,0,0,0.05)'
                            }
                        }],
                        yAxes: [{
                            display: false,
                            ticks: {
                                beginAtZero: true,
                                max: 65
                            }
                        }]
                    }
                }
            });

            var donutChart = document.getElementById('donut-chart');
            var data = {
                labels: ["Red", "Yellow", "Green", "Blue"],
                datasets: [{
                    data: [80, 120, 80, 50],
                    backgroundColor: ["#ff4141", "#FBC02D", "#71c21a", "#5797fc"],
                    hoverBackgroundColor: ["#ff5c5c", "#fdcd54", "#89da32", "#6ca4fb"],
                    borderWidth: 0
                }]
            };

            new Chart(donutChart, {
                type: 'doughnut',
                data: data,
                options: {
                    legend: {
                        display: false
                    },
                    animation: {
                        animateScale: true
                    },
                    cutoutPercentage: 80
                }
            });

            // Jquery count to
            $('.timer').each(function() {
                $(this).countTo({
                    speed: 2000,
                    formatter: function (value, options) {
                        return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',')
                    }
                })
            })
        })                 
    </script>
</home> 
