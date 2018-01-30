<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:61:"E:\Vsery\PHP\public/../application/index\view\index\index.htm";i:1516762525;s:63:"E:\Vsery\PHP\public/../application/index\view\common\header.htm";i:1516772724;s:63:"E:\Vsery\PHP\public/../application/index\view\common\footer.htm";i:1516761212;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>__WEB_TITLE__</title>
    <meta name="Keywords" content="__WEB_KEY__">
    <meta name="Description" content="__WEB_DESC__">
    <link rel="stylesheet" type="text/css" href="__PUBLIC__/style/animate.css">
    <link rel="stylesheet" type="text/css" href="__PUBLIC__/bootstrap/bootstrap.css">
</head>
<body>

    <nav class="navbar navbar-default" id="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#index_navigation" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" :href="logo.path">{{logo.type=='string'?logo.text:logo.pic}}</a>
            </div>
            <div class="collapse navbar-collapse" id="index_navigation">
                <ul class="nav navbar-nav">
                    <li :class="m.children.length!=0?'dropdown':''" v-for="m in menus">
                        <template v-if="m.children.length!=0">
                            <a href="javascript:;" :title="m.desc" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i :class="['fa fa-fw fa-']+[m.icon]"></i> {{m.text}} <span class="caret"></span> </a>
                            <ul class="dropdown-menu">
                                <li v-for="c in m.children">
                                    <a :href="c.path" :title="c.desc"><i :class="['fa fa-fw fa-']+[c.icon]"></i> {{c.text}} </a>
                                </li>
                            </ul>
                        </template>
                        <template v-else>
                            <a href="javascript:;" :title="m.desc"><i :class="['fa fa-fw fa-']+[m.icon]"></i>{{m.text}} </a>
                        </template>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="javascript:;">help</a></li>
                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> {{user.nickname}} - {{user.grade}} <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li :class="s.children.length!=0?'dropdown':''" v-for="s in sys">
                                <template v-if="s.children.length!=0">
                                    <a href="javascript:;" :title="s.desc" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i :class="['fa fa-fw fa-']+[s.icon]"></i> {{s.text}} <span class="caret"></span> </a>
                                    <ul class="dropdown-menu">
                                        <li v-for="c in s.children">
                                            <a :href="c.path" :title="c.desc"><i :class="['fa fa-fw fa-']+[c.icon]"></i> {{c.text}} </a>
                                        </li>
                                    </ul>
                                </template>
                                <template>
                                    <a :href="s.path" :title="s.desc">{{s.text}}</a>
                                </template>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div :class="['index ']+page_skin">
        <navs-view></navs-view>
        <carousel-view></carousel-view>
        <section class="fun-fact-wrap fun-facts-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 facts-in">
                        <h3><span class="counter">{{viewNumber}}</span></h3>
                        <h4>查看人数</h4>
                    </div>
                    <div class="col-md-4 facts-in">
                        <h3><span class="counter">{{downloadNumber}}</span></h3>
                        <h4>下载人数</h4>
                    </div>
                    <div class="col-md-4 facts-in">
                        <h3><span class="counter">{{donorsNumber}}</span></h3>
                        <h4>捐赠人数</h4>
                    </div>
                </div>
            </div>
        </section>
        <div class="container img-responsive">
            <div class="transparent">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="center-heading">
                            <h2><strong>The Small Business Data Platform for Marketers</strong> </h2>
                            <span class="center-line"></span>
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <p class="sub-text margin40 center-heading"><strong>
                                        Vsery brings all the small business data you need together so you can target acquisition campaigns across any channel.</strong></p>
                                </div>
                            </div>
                            <div class="row">
                                <a type="button" class="btn btn-default btn-lg" onclick="ga('send', 'event', 'try-free', 'click', 'home-above-fold');" href="https://tools.tidewater.io/signup">
                                  try free
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="modules">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 bottom">
                        <h2>Modules that empower your business</h2>
                        <hr class="amazing-hr">
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="col-md-2 col-sm-2 col-xs-6">
                            <div class="col-md-12 col-sm-12 col-xs-12"><img src="/static/images/icon/labor.png" title="Manage Labor Controller" alt="Manage Labor Controller"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12">Manage Labor Controller</div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-6">
                            <div class="col-md-12 col-sm-12 col-xs-12"><img src="/static/images/icon/equipment.png" title="Manage Suppliers" alt="Manage Suppliers"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12">Manage Suppliers</div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-6">
                            <div class="col-md-12 col-sm-12 col-xs-12"><img src="/static/images/icon/task.png" title="Manage Daily Task" alt="Manage Daily Task"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12">Manage Daily Task</div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-6">
                            <div class="col-md-12 col-sm-12 col-xs-12"><img src="/static/images/icon/daily-report.PNG" title="Manage Daily Reports" alt="Manage Daily Reports"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12">Manage Daily Reports</div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-6">
                            <div class="col-md-12 col-sm-12 col-xs-12"><img src="/static/images/icon/drawing.PNG" title="Manage Plan Drawing" alt="Manage Plan Drawing"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12">Manage Plan Drawing</div>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-6">
                            <div class="col-md-12 col-sm-12 col-xs-12"><img src="/static/images/icon/statistical.png" title="Project Statistical Report" alt="Project Statistical Report"></div>
                            <div class="col-md-12 col-sm-12 col-xs-12">Project Statistical Report</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12 text-right features-left wow fadeInLeft  animated" data-wow-offset="10" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-name: fadeInLeft;">
                    <div class="feature_highlight">
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <h4 class="col-md-12 col-sm-12 col-xs-12 amazing_head"> Daily Tasks </h4>
                            <p class="col-md-12 col-sm-12 col-xs-12 amazing_content_left">Forget your papers - the single ZAAR App does it! Features permit you to easily allocate tasks no matter where you are</p>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-2"><img src="/static/images/icon/task.png" title="Daily Tasks" alt="Daily Tasks"></div>
                    </div>
                    <div class="feature_highlight">
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <h4 class="col-md-12 col-sm-12 col-xs-12 amazing_head"> Cloud Storage </h4>
                            <p class="col-md-12 col-sm-12 col-xs-12 amazing_content_left">Reliable, Efficient and Cost-Effective Storage, easy access to your data even when you are not in the field</p>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-2"><img src="/static/images/icon/cloud.PNG" title="Cloud Storage" alt="Cloud Storage"></div>
                    </div>
                    <div class="feature_highlight">
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <h4 class="col-md-12 col-sm-12 col-xs-12 amazing_head"> Daily Report </h4>
                            <p class="col-md-12  col-sm-12 col-xs-12 amazing_content_left">Track your Project - Allows for consistent productivity evaluation</p>
                        </div>
                        <div class="col-md-2 col-sm-2 col-xs-2"><img src="/static/images/icon/daily-report.PNG" title="Daily Report" alt="Daily Report"></div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="phone-img wow bounceIn animated" data-wow-offset="120" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-name: bounceIn;">
                        <img src="/static/images/icon/home-new.png" alt="ZAAR Android App" title="ZAAR Android App" class="ful-width1">
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12 text-left features-right wow fadeInRight  animated" data-wow-duration="1.5s" style="visibility: visible; animation-duration: 1.5s; animation-name: fadeInRight;">
                    <div class="feature_highlight">
                        <div class="col-md-2 col-sm-2 col-xs-2"><img src="/static/images/icon/drawing.PNG" title="Manage Plan" alt="Manage Plan"></div>
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <h4 class="col-md-12 col-sm-12 col-xs-12 amazing_head"> Manage Plan</h4>
                            <p class="col-md-12 col-sm-12 col-xs-12 amazing_content_right"> Revisions simplified - We understand that drawings are at the foundation of your projects</p>
                        </div>
                    </div>
                    <div class="feature_highlight">
                        <div class="col-md-2 col-sm-2 col-xs-2"><img src="/static/images/icon/labor.png" title="Labor Reports" alt="Labor Reports"></div>
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <h4 class="col-md-12 col-sm-12 col-xs-12 amazing_head"> Labor Reports</h4>
                            <p class="col-md-12 col-sm-12 col-xs-12 amazing_content_right">Smart scheduling, tracking and reporting to support productivity</p>
                        </div>
                    </div>
                    <div class="feature_highlight">
                        <div class="col-md-2 col-sm-2 col-xs-2"><img src="/static/images/icon/statistical.png" title="Project Statistics" alt="Project Statistics"></div>
                        <div class="col-md-10 col-sm-10 col-xs-10">
                            <h4 class="col-md-12 col-sm-12 col-xs-12 amazing_head"> Project Statistics</h4>
                            <p class="col-md-12 col-sm-12 col-xs-12 amazing_content_right">Graphing and visuals can enhance reporting - Flexible and customized reporting options allow impressive tracking and sharing</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        div class="mostused-packages well well-sm text-center hidden-xs hidden-sm">
        <ul class="list-inline">
            <li>
                <a href="/bootstrap/" title="Bootstrap" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-bootstrap'])">
                    <img src="/assets/img/bootstrap.svg?1501952852106" alt="bootstrap">
                </a>
            </li>
            <li>
                <a href="/react/" title="React" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-react'])">
                    <img src="/assets/img/react.svg?1501952852106" alt="React">
                </a>
            </li>
            <li>
                <a href="/jquery/" title="jQuery" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-jquery'])">
                <img src="/assets/img/jquery.svg?1501952852106" alt="jquery">
            </a>
            </li>
            <li>
                <a href="/angular.js/" title="Angular.js" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-angular.js'])">
                <img src="/assets/img/angular-icon.svg?1501952852106" alt="angular.js">
            </a>
            </li>
            <li>
                <a href="/vue/" title="Vue.js" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-vue.js'])">
                <img src="/assets/img/vue.svg?1501952852106" alt="Vue.js">
            </a>
            </li>
            <li>
                <a href="/backbone.js/" title="Backbone.js" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-backbone.js'])">
                <img src="/assets/img/backbone-icon.svg?1501952852106" alt="backbonejs">
            </a>
            </li>
            <li>
                <a href="/lodash.js/" title="lodash" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-lodash.js'])">
                <img src="/assets/img/lodash.svg?1501952852106" alt="lodashjs">
            </a>
            </li>
            <li>
                <a href="/moment.js/" title="Moment.js" target="_blank" onclick="_hmt.push(['_trackEvent', 'mostused', 'click', 'mostused-moment.js'])">
                <img src="/assets/img/momentjs.svg?1501952852106" alt="momentjs">
            </a>
            </li>
        </ul>
    </div>
    <div class="container protocal-notice hidden-xs">
        <div class="row">
            <div class="col-xs-12">
                <form class="form-inline pull-right">
                    <label>选择协议：</label>
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-default">
                            <input type="radio" name="options" id="https" checked="">https</label>
                        <label class="btn btn-default active">
                            <input type="radio" name="options" id="http">http</label>
                        <label class="btn btn-default">
                            <input type="radio" name="options" id="relative">自适应</label>
                    </div>
                    <span class="help-block">
                            <a href="http://blog.bootcdn.cn/bootcdn-support-https/" target="_blank" onclick="_hmt.push(['_trackEvent', 'notice', 'click', 'protocal-notice'])">了解详情 <i class="fa fa-info-circle"></i></a>
                        </span>
                </form>
            </div>
        </div>
    </div>
    <section class="integrations">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-lg-offset-1">
                    <h2>Integrations</h2>
                    <ul class="integration-features">
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div class="right-position">
                                <h4>Slack</h4>
                                <p>Unparalleled accuracy. Genuine impact. Leverage high-fidelity, data-rich desktop and mobile heatmaps to gain true insight into user intent.</p>
                            </div>
                            <div><span class="ti-check"></span></div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div class="right-position">
                                <h4>Email notifications</h4>
                                <p>Provides a clean, easy-to-use interface to empower your website with state-of-the-art remote access technology.</p>
                            </div>
                            <div><span class="ti-check"></span></div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div class="right-position">
                                <h4>PowerPoint, Excel &amp; PowerBI reports</h4>
                                <p>View visitor playbacks of mobile or desktop sessions to understand how users interact with your content.</p>
                            </div>
                            <div><span class="ti-check"></span></div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div class="right-position">
                                <h4>Custom Webhooks</h4>
                                <p>View visitor playbacks of mobile or desktop sessions to understand how users interact with your content.</p>
                            </div>
                            <div><span class="ti-check"></span></div>
                        </li>
                    </ul>
                </div>
                <div class="hidden-xs col-sm-6 col-md-6 col-lg-3">
                    <img class="integration-features-mobile" src="/home-assets/img/nexus.png" alt="integration features">
                </div>
            </div>
        </div>
    </section>
    <div id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-12 col-xs-12 col-md-8 col-lg-offset-2 col-md-offset-2 text-center">
                    <img class="img-responsive center-img" src="/home-assets/img/img_devices.png" alt="every device">
                    <h2 class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">Work anytime, anywhere</h2>
                    <p class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">Our platform every day improve user experience to run in every browser, feel free to use without limitations or enterprise restrictions. Develop lasting relationships with your most loyal customers by delivering relevant experiences at every interaction.</p>
                </div>
            </div>
        </div>
    </div>
    <section class="what-is">
        <div class="container">
            <div class="row">
                <div class="hidden-xs">
                    <img class="principal-features-laptop" src="/home-assets/img/laptop.png" alt="principal features">
                </div>
                <div class="col-lg-6 col-md-12 col-sm-6 col-xs-12 col-lg-offset-5 col-sm-offset-4">
                    <h2>Features</h2>
                    <ul class="principal-features">
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div><span class="ti-check"></span></div>
                            <div>
                                <h4>Behavioral heatmaps</h4>
                                <p>Unparalleled accuracy. Genuine impact. Leverage high-fidelity, data-rich desktop and mobile heatmaps to gain true insight into user intent.</p>
                            </div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div><span class="ti-check"></span></div>
                            <div>
                                <h4>Remote assistance and chat</h4>
                                <p>Provides a clean, easy-to-use interface to empower your website with state-of-the-art remote access technology.</p>
                            </div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div><span class="ti-check"></span></div>
                            <div>
                                <h4>Session replay</h4>
                                <p>View visitor playbacks of mobile or desktop sessions to understand how users interact with your content.</p>
                            </div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div><span class="ti-check"></span></div>
                            <div>
                                <h4>Conversion funnel</h4>
                                <p>Visualize and map where users are dropping off in your funnel, what they’re doing after they leave, and how best to get them back on the optimal path to increase conversion rates.</p>
                            </div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div><span class="ti-check"></span></div>
                            <div>
                                <h4>A/B testing</h4>
                                <p>Keep pace with your customers' constantly changing behaviors. Experiment in real time.</p>
                            </div>
                        </li>
                        <li class="animate-box fadeIn animated-fast" data-animate-effect="fadeIn">
                            <div><span class="ti-check"></span></div>
                            <div>
                                <h4>SEO tools</h4>
                                <p>Automatically keep track of weekly changes in more than 30 SEO variables.</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <div class="carousel slide" id="sliderCarousel" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#sliderCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#sliderCarousel" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="active item b1_img">
                <div class="background_shadow"></div>
                <div class="profile-circle img1" style="background-position: 50% 0px;">
                    <img src="http://www.zaarapp.com/assets/images/banners-one.png" alt="client" /></div>
                <div class="banner_right wow bounceInRight  animated" data-wow-offset="10" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: bounceInRight;">
                    <img src="http://www.zaarapp.com/assets/images/hand-with-tab-large.png" alt="img">
                </div>
            </div>
            <div class="item b2_img">
                <div class="background_shadow"></div>
                <div class="profile-circle img2" style="background-position: 50% 0px;">
                    <img src="http://www.zaarapp.com/assets/images/banners-two.png" alt="client" /></div>
                <div class="banner_right wow bounceInDown animated animated" data-wow-offset="10" data-wow-duration="2s" style="visibility: visible; animation-duration: 2s; animation-name: bounceInDown;">
                    <img src="http://www.zaarapp.com/assets/images/3dcopy.png" alt="img">
                </div>
            </div>
            <a data-slide="prev" href="#sliderCarousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a>
            <a data-slide="next" href="#sliderCarousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a>
        </div>
    </div>
    <section class="switchable switchable--switch bg--secondary">
        <div class="container">
            <div class="row">
                <div class="text-center col-sm-6">
                    <img alt="map" class="border--round box-shadow-wide" src="https://www.joblife.co.za/img/map.jpeg">
                </div>
                <div class="col-sm-6 col-md-5">
                    <ol class="process-3">
                        <li class="process_item">
                            <div class="process__number"><span>1</span></div>
                            <div class="process__body">
                                <h4>Tell us your requirements<br></h4>
                                <p>Give us specific details of the position you are looking to fill: work experience, qualifications and any skills that are required.</p>
                            </div>
                        </li>
                        <li class="process_item">
                            <div class="process__number"><span>2</span></div>
                            <div class="process__body">
                                <h4>We will find employees for you</h4>
                                <p>We will match all your criteria with job seekers who fit and who are close to you.</p>
                            </div>
                        </li>
                        <li class="process_item">
                            <div class="process__number"><span>3</span></div>
                            <div class="process__body">
                                <h4>Communicate through our platform<br></h4>
                                <p>Chat in real time with your matched candidates while looking through their CV.
                                    <br>
                                </p>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <section class="text-center">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="feature feature-3 boxed boxed--lg boxed--border">
                        <i class="icon icon--lg icon-Mail-3"></i>
                        <h4>Employment Checks<br></h4>
                        <p>You have the option of running vetting checks on the candidates of your choice.
                            <br>
                        </p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature feature-3 boxed boxed--lg boxed--border">
                        <i class="icon icon-Money-Smiley icon--lg"></i>
                        <h4>Low Cost Recruitment<br></h4>
                        <p>We can recruit workers faster and cheaper than anyone else.
                            <br>
                        </p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature feature-3 boxed boxed--lg boxed--border">
                        <i class="icon icon-Arrow-Forward2 icon--lg"></i>
                        <h4>Easy to Use<br></h4>
                        <p>With our online portal - you can place a job posting within 2 minutes!
                            <br>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="switchable switchable--switch bg--secondary">
        <div class="container">
            <div class="row">
                <div class="text-center col-sm-6">
                    <img alt="map" class="border--round box-shadow-wide" src="https://www.joblife.co.za/img/map.jpeg">
                </div>
                <div class="col-sm-6 col-md-5">
                    <ol class="process-3">
                        <li class="process_item">
                            <div class="process__number"><span>1</span></div>
                            <div class="process__body">
                                <h4>Tell us your requirements<br></h4>
                                <p>Give us specific details of the position you are looking to fill: work experience, qualifications and any skills that are required.</p>
                            </div>
                        </li>
                        <li class="process_item">
                            <div class="process__number"><span>2</span></div>
                            <div class="process__body">
                                <h4>We will find employees for you</h4>
                                <p>We will match all your criteria with job seekers who fit and who are close to you.</p>
                            </div>
                        </li>
                        <li class="process_item">
                            <div class="process__number"><span>3</span></div>
                            <div class="process__body">
                                <h4>Communicate through our platform<br></h4>
                                <p>Chat in real time with your matched candidates while looking through their CV.
                                    <br>
                                </p>
                            </div>
                        </li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <main class="packages-list-container" id="all-packages">
        <div class="container">
            <div class="list-group packages" id="common-packages">
                <a href="/bootstrap/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'bootstrap'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">bootstrap</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">The most popular front-end framework for developing responsive, mobile first projects on the web.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 113473</span></div>
                    </div>
                </a>
                <a href="/react/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'react'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">react</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">React is a JavaScript library for building user interfaces.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 72798</span></div>
                    </div>
                </a>
                <a href="/vue/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'vue'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">vue</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Simple, Fast &amp; Composable MVVM for building interactive interfaces</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 62469</span></div>
                    </div>
                </a>
                <a href="/angular.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'angular.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">angular.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">AngularJS is an MVC framework for building web applications. The core features include HTML enhanced with custom component and data-binding capabilities, dependency injection and strong focus on simplicity, testability, maintainability and boiler-plate reduction.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 56657</span></div>
                    </div>
                </a>
                <a href="/jquery/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'jquery'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">jquery</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">JavaScript library for DOM operations</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 45881</span></div>
                    </div>
                </a>
                <a href="/semantic-ui/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'semantic-ui'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">semantic-ui</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Semantic empowers designers and developers by creating a shared vocabulary for UI.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 36430</span></div>
                    </div>
                </a>
                <a href="/socket.io/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'socket.io'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">socket.io</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">node.js realtime framework server</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 34794</span></div>
                    </div>
                </a>
                <a href="/redux/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'redux'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">redux</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Predictable state container for JavaScript apps</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 32996</span></div>
                    </div>
                </a>
                <a href="/Chart.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'Chart.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">Chart.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Simple HTML5 charts using the canvas element.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 31540</span></div>
                    </div>
                </a>
                <a href="/backbone.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'backbone.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">backbone.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Give your JS App some Backbone with Models, Views, Collections, and Events.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 26545</span></div>
                    </div>
                </a>
                <a href="/foundation/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'foundation'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">foundation</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">The most advanced responsive front-end framework in the world.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 26008</span></div>
                    </div>
                </a>
                <a href="/lodash.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'lodash.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">lodash.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">A utility library delivering consistency, customization, performance, &amp; extras.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 25293</span></div>
                    </div>
                </a>
                <a href="/underscore.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'underscore.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">underscore.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">JavaScript's functional programming helper library.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 21156</span></div>
                    </div>
                </a>
                <a href="/echarts/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'echarts'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">echarts</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">A powerful charting and visualization library for browser</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 19679</span></div>
                    </div>
                </a>
                <a href="/ember.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'ember.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">ember.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Ember is a JavaScript framework for creating ambitious web applications that eliminates boilerplate and provides a standard application architecture.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 18122</span></div>
                    </div>
                </a>
                <a href="/zepto/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'zepto'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">zepto</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">Zepto.js is a minimalist JavaScript library for modern browsers, with a jQuery-compatible API</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 12786</span></div>
                    </div>
                </a>
                <a href="/require.js/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'require.js'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">require.js</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">RequireJS is a JavaScript file and module loader. It is optimized for in-browser use, but it can be used in other JavaScript environments, like Rhino and Node</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 10829</span></div>
                    </div>
                </a>
                <a href="/jqueryui/" class="package list-group-item" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'jqueryui'])">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="package-name">jqueryui</h4></div>
                        <div class="col-md-9 hidden-xs">
                            <p class="package-description">A curated set of user interface interactions, effects, widgets, and themes built on top of the jQuery JavaScript Library.</p>
                        </div>
                        <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i class="fa fa-star"></i> 10064</span></div>
                    </div>
                </a><a href="/all/" class="package list-group-item all-packages" target="_blank" onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'all'])">所有开源项目列表</a></div>
            <div class="list-group packages" id="search-results" style="display: none"></div>
        </div>
    </main>
    <footer id="footer" class="footer hidden-print">
        <div class="container">
            <div class="row">
                <div class="footer-about col-md-5 col-sm-12" id="about">
                    <h4>关于 BootCDN</h4>
                    <p>BootCDN 是 <a href="http://www.bootcss.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-bootcss.com'])">Bootstrap 中文网</a>和<a href="https://www.upyun.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-upyun.com'])">又拍云</a>共同支持并维护的前端开源项目免费 CDN 服务，由<a href="https://www.upyun.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-upyun.com'])">又拍云</a>提供全部 CDN 支持，致力于为 Bootstrap、jQuery、Angular 一样优秀的前端开源项目提供稳定、快速的免费 CDN 加速服务。BootCDN 所收录的开源项目主要同步于 <a href="https://github.com/cdnjs/cdnjs" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-github.com'])">cdnjs</a> 仓库。</p>
                    <p>自2013年10月31日上线以来已经为上万家网站提供了稳定、可靠的免费 CDN 加速服务。</p>
                    <p>反馈或建议请发送邮件至：cdn@bootcss.com</p>
                </div>
                <div class="footer-links col-md-2 col-sm-12">
                    <h4>友情链接</h4>
                    <ul class="list-unstyled">
                        <li><a href="http://www.bootcss.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-bootcss.com'])">Bootstrap 中文网</a></li>
                        <li><a href="http://www.ghostchina.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-ghostchina.com'])">Ghost 中国</a></li>
                        <li><a href="http://www.golaravel.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-golaravel.com'])">Laravel 中文网</a></li>
                        <li><a href="http://www.jquery123.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-jquery123.com'])">jQuery 中文 API</a></li>
                        <li><a href="https://pkg.phpcomposer.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-phpcomposer.com'])">Packagist 中国镜像</a></li>
                        <li><a href="http://www.phpcomposer.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-www-phpcomposer.com'])">Composer 中文网</a></li>
                    </ul>
                </div>
                <div class="footer-techs col-md-2 col-sm-12">
                    <h4>我们用到的技术</h4>
                    <ul class="list-unstyled list-inline">
                        <li><a href="http://www.bootcss.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-bootcss.com'])">Bootstrap</a></li>
                        <li><a href="http://www.ghostchina.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-ghostchina.com'])">Ghost</a></li>
                        <li><a href="http://www.jquery123.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-jquery123.com'])">jQuery</a></li>
                        <li><a href="http://babeljs.cn/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-babeljs.cn'])">Babeljs</a></li>
                        <li><a href="http://lodashjs.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-lodashjs.com'])">Lodash</a></li>
                        <li><a href="http://www.nodeapp.cn/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-nodeapp.cn'])">Node</a></li>
                        <li><a href="http://www.gruntjs.net/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-gruntjs.net'])">Grunt</a></li>
                        <li><a href="http://www.gulpjs.com.cn/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-gulpjs.com.cn'])">Gulp</a></li>
                        <li><a href="http://www.npmjs.com.cn/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-npmjs.com.cn'])">NPM</a></li>
                        <li><a href="https://webpackjs.com/" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-webpackjs-com'])">webpack</a></li>
                    </ul>
                </div>
                <div class="footer-sponsors col-md-3 col-sm-12">
                    <h4>战略合作 &amp; CDN 提供</h4>
                    <p><a href="https://www.upyun.com/" style="border-bottom: none" target="_blank" onclick="_hmt.push(['_trackEvent', 'footer', 'click', 'footer-upyun.com'])"><img src="/assets/img/upyun.svg?1501952852106" style="width: 120px" alt="又拍云存储"></a></p>
                </div>
            </div>
        </div>
        <div class="copy-right"><span>© 2013-2017</span> <a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备11008151号</a> <span>京公网安备11010802014853</span></div>
    </footer>
    <h1>{{ msg }}</h1>
    <h2>Essential Links</h2>
    <ul>
        <li><a href="https://vuejs.org" target="_blank">Core Docs</a></li>
        <li><a href="https://forum.vuejs.org" target="_blank">Forum</a></li>
        <li><a href="https://gitter.im/vuejs/vue" target="_blank">Gitter Chat</a></li>
        <li><a href="https://twitter.com/vuejs" target="_blank">Twitter</a></li>
        <br>
        <li><a href="http://vuejs-templates.github.io/webpack/" target="_blank">Docs for This Template</a></li>
    </ul>
    <h2>Ecosystem</h2>
    <ul>
        <li><a href="http://router.vuejs.org/" target="_blank">vue-router</a></li>
        <li><a href="http://vuex.vuejs.org/" target="_blank">vuex</a></li>
        <li><a href="http://vue-loader.vuejs.org/" target="_blank">vue-loader</a></li>
        <li><a href="https://github.com/vuejs/awesome-vue" target="_blank">awesome-vue</a></li>
    </ul>
    <sys-view></sys-view>
    <footer class="bs-docs-footer">
        <div class="container text-left">
            <ul class="bs-docs-footer-links">
                <li><a href="https://github.com/vsery">GitHub 仓库</a></li>
                <li><a href="https://www.youzhan.org">优站精选</a></li>
                <li><a href="../about/">关于</a></li>
            </ul>
            <p> 湘ICP备17016216号-1 | </p>
            <p class="text-right">Copyright © 2006-2017 <a href="https://www.vsery.com">Vsery</a></p>
        </div>
    </footer>

    <div class="footerd">
        <ul>
            <li>
                Copyright © 2008-2016  all rights reserved 版权所有
                <a href="http://www.miibeian.gov.cn" rel="nofollow" target="_blank">
                    蜀icp备08107937号
                </a>
            </li>
        </ul>
    </div>
</body>
</html>