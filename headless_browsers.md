## Headless Browsers

Below is a list of the most common ones:

### 1. Firefox Headless Mode

With the launch of version 56 of Firefox, Mozilla began offering support for [headless testing](https://developer.mozilla.org/en-US/Firefox/Headless_mode). Instead of using other tools to simulate browser environments, developers can now connect several different APIs to [run Firefox in headless mode](https://intoli.com/blog/running-selenium-with-headless-firefox/) and test a variety of use cases.

Headless Firefox may be driven by:

*   [Selenium](https://www.seleniumhq.org/)
*   [SlimmerJS](https://slimerjs.org/)
*   [W3C WebDriver](https://www.w3.org/TR/webdriver/)

Many developers appear to prefer Selenium as an API for headless Firefox testing and automation, but you can use the option with which you’re most comfortable with for scripting and running basic unit tests.

With all the potential interactions a user can have on a modern website, using Firefox headless to drill down to individual elements is a helpful part of the development process. Whereas a user may encounter a problem as part of a complex flow and become frustrated trying to identify and report what went wrong, you can use Firefox in headless mode to work out the kinks of each individual interaction in a flow.

### 2. Headless Chrome

Developers familiar with Chrome can launch version 59 or later in headless mode to utilize all the possibilities afforded by Chromium and the Blink rendering engine. This [lightweight, memory-sparing headless browser](https://developers.google.com/web/updates/2017/04/headless-chrome) gives you the tools to:

*   Test multiple levels of navigation
*   Gather page information
*   Take screenshots
*   Create PDFs

Navigation is an especially important part of modern website environments and is becoming even more critical with the continued increase in mobile users. Try headless Chrome when you want to make sure users can move easily throughout a site. Collect reports and images of how the site responds, and use this information to make changes to improve the UI.

### 3. PhantomJS

Complexity is commonplace in the modern internet landscape, and [PhantomJS](http://phantomjs.org/) is built to handle it all using basic command line testing. This headless WebKit is scriptable via the JavaScript API and uses [CasperJS](http://casperjs.org/) to handle testing. Capable of simulating “[full navigation scenarios](https://blog.logrocket.com/introduction-to-headless-browser-testing-44b82310b27c),” PhantomJS can reveal all the places where a user may encounter errors while browsing.

Support for multiple web standards makes PhantomJS **flexible and highly capable**. Page automation, network monitoring, and other important features allow you to simulate everything from the most basic user interactions to flows containing multiple inputs. Use this headless option for:

*   Testing navigation
*   Simulating user behavior
*   Working with assertions
*   Taking screenshots

Another benefit of PhantomJS is its open source status. The program was released in 2011 and is still being updated by dedicated developers. Check out the [official GitHub repo](https://github.com/ariya/phantomjs/).

### 4. Zombie JS

[Zombie JS](http://zombie.js.org/) is another lightweight framework used to test client-side JavaScript in a simulated environment without a browser. The current version of Zombie (Zombie 5.x) is tested to work with [Node.js](https://nodejs.org/en/) versions 4-6.

A few benefits of Zombie JS include:

*   Runs on Node.js making it easy to integrate with your project
*   Fully featured API
*   Insanely fast

Zombie JS also provides a set of assertions that you can access directly from the browser object. For example, an assertion can be used to check if a page loaded successfully. Apart from assertions, Zombie JS offers methods to handle cookies, tabs, authentication, and more.

### 5. HtmlUnit

Written in Java, HtmlUnit allows you to use Java code to automate many of the basic ways in which users interact with websites. [Use it to test](https://en.wikipedia.org/wiki/HtmlUnit):

*   Filling in and submitting forms
*   Clicking links
*   Site redirects
*   HTTP authentication
*   HTTPS page performance
*   HTTP header performance

The tool’s ability to simulate **several different browsers** expands its functionality even more. Using HtmlUnit, you can create scripted use cases in Chrome, Firefox 38 and later, Edge, and IE8 and IE11\. This covers a significant number of new and legacy browsers, helping to ensure every user has a superior experience once a site goes live.

Ecommerce sites rely heavily on most of the elements HtmlUnit allows you to test. Form submission, site security, and navigation are all integral parts of the ecommerce UI and have a significant impact on conversions and sales. Poor UI means poor UX, and customers in a fast-paced online world abandon such sites to shop with the competition instead. HtmlUnit is a helpful ally when you’re working to craft a business site with superior performance.

### 6. Splash

In the documentation for Splash, the headless browser is hailed as being lightweight and offering a [variety of features to developers](https://splash.readthedocs.io/en/stable/). This “JavaScript rendering service” operates with an HTTP API, implemented in Python 3 using Twisted and QT5.

Splash may be the best go-to tool if your use cases require:

*   Understanding HTML performance
*   Testing rendering and load speeds
*   Turning off images or using AdBlock for faster loading
*   Visualizing website UX
*   Using Lua browsing scripts
*   Processing more than one page at a time

Splash provides rendering information in the [HAR](https://www.keycdn.com/support/har-viewer) format and also allows you to take screenshots of results. This headless browser may also be integrated with [Scrapy](https://scrapy.org/) in scenarios where you need or want to scrape code from other websites. Thanks to its versatility, Splash is a useful tool for developers seeking a “jack of all trades” for their testing toolkits.
