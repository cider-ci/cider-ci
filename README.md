Cider-CI
========

Cider-CI is an application and service stack for highly parallelized and
resilient integration testing. 

This is the main repository of Cider-CI. The Cider-CI core components are
referenced from this repository as git submodules. 

## Status

[![Integration-Tests](http://ci3.zhdk.ch/cider-ci/ui/public/Cider-CI/v3/Integration-Tests/summary.svg?respond_with_200&orientation=vertical =250x)](http://ci3.zhdk.ch/cider-ci/ui/public/Cider-CI/v3/Integration-Tests/summary.html)

Core Components
---------------

Cider-CI consists of the following components and services:

0.  The [Cider-CI Dispatcher][] dispatches so-called *trials* (units
    of execution) to the executors and syncs them with the executors.

0.  The [Cider-CI Builder][] translates the execution specification
    into tasks.

0.  The [Cider-CI Repository][] manages the git repositories. It
    syncs them and provides an interface to other services.

0.  The [Cider-CI User Interface][] serves the front-end to users.
    This is a *Ruby on Rails* application wich runs within the *[Puma
    Web Server][]*.

0.  The [Cider-CI Storage][] component serves and stores artifacts like
    build results (e.g. _JVM Jars_, or _Ruby Gems_) or log files of
    a test-run.

0.  The [Cider-CI API][] provides a JSON (or more precisely, hal+json)
    interface to interact in a programmatic way with Cider-CI.

0.  The [Cider-CI Executor][] runs in the JVM on every executor (node).

The [architecture][] overview diagram illustrates how the
components interact.


Supplementary Projects
----------------------


The [Cider-CI Ansible Setup][] project helps you to deploy and
manage your *Cider-CI* infrastructure.

The [Bash Demo Project][] is probably the simplest project that demonstrates
testing with _Cider-CI_.


Contributors
------------

The following people have contributed to this project:

* [Thomas Schank](https://github.com/DrTom/)
* [Max Albrecht](https://github.com/eins78)
* [Psy-Q](https://github.com/psy-q/)


License
-------

The components [Cider-CI API][], [Cider-CI Builder][], [Cider-CI
Dispatcher][], [Cider-CI Repository][], [Cider-CI Storage][] and
[Cider-CI Executor][] are subject to the [GNU Affero General Public
License Version 3][].

The contents of this repository [Cider-CI][] are subject to the [Creative
Commons Attribution-ShareAlike 4.0 International Public License][].


Contributing to Cider-CI
------------------------

See [contributing](CONTRIBUTING.md).


  [Bash Demo Project]: https://github.com/cider-ci/cider-ci_demo-project-bash
  [Cider-CI API]: https://github.com/cider-ci/cider-ci_api
  [Cider-CI Ansible Setup]: https://github.com/cider-ci/cider-ci_ansible-setup
  [Cider-CI Builder]: https://github.com/cider-ci/cider-ci_builder
  [Cider-CI Dispatcher]: https://github.com/cider-ci/cider-ci_dispatcher
  [Cider-CI Executor]: https://github.com/cider-ci/cider-ci_executor
  [Cider-CI]: https://github.com/cider-ci/cider-ci
  [Cider-Ci Repository]: https://github.com/cider-ci/cider-ci_repository
  [Cider-Ci Storage]: https://github.com/cider-ci/cider-ci_storage
  [Cider-Ci User Interface]: https://github.com/cider-ci/cider-ci_user-interface
  [Creative Commons Attribution-ShareAlike 4.0 International Public License]: http://creativecommons.org/licenses/by-sa/4.0/legalcode
  [GNU Affero General Public License Version 3]: http://www.gnu.org/licenses/agpl-3.0.html
  [Immutant]: http://immutant.org/
  [Leihs]: https://github.com/zhdk/leihs
  [Madek]: https://github.com/zhdk/madek
  [Puma Web Server]: http://puma.io/
  [TorqueBox]: http://torquebox.org/
  [Zurich University of the Arts]: http://www.zhdk.ch/
  [architecture v0]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture_v0.svg
  [architecture v1]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture_v1.svg
  [architecture v2]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture_v2.svg
  [architecture vision]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture_vision.svg
  [architecture]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture_v2.svg
