## github smart app design

GitHub creates check-suite for any commit and pull request and GitHub apps based on it is configuration sends these requests to GitHub smart trigger app. (for more information please check this link ...)

Github smart app processes checksuite and pick configurations from configuration.yml and create check-runs based on this configurations, Then it sends these check-runs back to github.
Also Github smart app triggers teamcity jobs and put them in rabbitmq queue until teamcity send back the result of job then it send them back to github.
For further analysis of data this app saves all check-suites and checkruns to mongodb and also process these data and send them to elastic stack.
