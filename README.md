This is a terminal app designed to report on a github user's recent commit activity.

For example:

```
$ bin/report_on erniedog
Erniedog committed code today.
```

Chores:
- Add Gemfile
- Add Travis.ci
- Use VCR and Timecop for acceptance tests (refactor with an http library: net http?)
- Use Webmock and Timecop for unit tests
- Convert it to a gem

Features:
- Report on a week of activity
- Report more statistics
