## Github Smart Trigger App design

![Big picture](https://github.com/amirsdream/elastic-config/blob/master/design.png)

GitHub creates [check-suite](https://developer.github.com/v3/checks/suites/) for any commit and pull request and [github-app](https://developer.github.com/v3/apps/) based on it is configuration sends these requests to GitHub smart trigger app.

Github smart trigger app processes these checksuites and pick configurations from configuration.yml and create [check-runs](https://developer.github.com/v3/checks/runs/) based on these configurations and sends them back to github.

Also Github smart trigger app triggers teamcity jobs and put them in rabbitmq queue until teamcity sends back the result, after that it send results back to github.

For further analysis of data this app saves all check-suites and checkruns to mongodb and also process these data and send them to elastic stack.
