Cider-CI
========

Cider-CI is an application and service stack for highly parallelized and
resilient integration testing. 

State and History
-----------------

Work on Cider-CI began started May 2013. Cider-CI is used since August 2013 in
the Development Departement at the IT-Center of the [Zurich University of the
Arts][]. It has boosted development immensely for the projects [Madek][] and
[Leihs][]. 

The current release number is `1.7.x`. Cider-CI `0.x` was a single
application implemented in *Ruby on Rails* and deployed in
[Torquebox][]/JBoss, see [architecture v0][]. The application was
split-up in a *Clojure* and *Ruby on Rails* part in version `1.0.x`.
Both applications were still running within the *JBoss Application
Server*, see [architecture v1][]. Cider-CI moved to a microservice
architecture with version `1.5.0`. An application server is no longer
needed. See the [architecture v1.5][] overview diagram.

Core Components
---------------


Cider-CI consists of the following components respectively services:


0.  The [Cider-CI Trial-Manager][] dispatches so called *trials* (units
    of execution) to the executors and syncs them with the executors.
    This part runs as a service under the JVM.

0.  The [Cider-CI Executor][] runs in the JVM on every executor (node).

0.  The [Cider-CI Repository-Manager][] manages the git-repositories. It
    syncs them and provides an interface to other services. 

0.  The [Cider-CI User-Interface][] serves the front-end for to users.
    This is a *Ruby on Rails* application wich runs within the *[Puma
    Web Server][]*. 
    
    This repository also includes functinallity that
    runs as a *Rails* background service. This services is expected to
    be replaced in version `2.x`, see the [architecture vision][].

0.  The [Cider-CI Storage-Manger][] serves and stores artifacts like
    build results (e.g. _JVM Jars_, or _Ruby Gems_) or log files of
    a test-run. 

0.  The [Cider-CI API][] is the most recent addition to the Cider-CI
    stack.

The [architecture][] overview diagram illustrates how the
components interact.


Supplementary Projects 
----------------------

The [Cider-CI][] repository contains documentation and references.

The *[Cider-CI Ansible Setup][]* project helps you to deploy and
manager your *Cider-CI* infrastructure. 

The [Bash Demo Project][] is probably the most simple project that demonstrates
testing with _Cider-CI_.



License
-------

The components [Cider-CI Server-TB][], [Cider-CI Server-IM][], and
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
  [Cider-CI Executor]: https://github.com/cider-ci/cider-ci_executor
  [Cider-CI Trial-Manager]: https://github.com/cider-ci/cider-ci_trial-manager
  [Cider-Ci Repository-Manager]: https://github.com/cider-ci/cider-ci_repository-manager
  [Cider-Ci Storage-Manager]: https://github.com/cider-ci/cider-ci_storage-manager
  [Cider-Ci User-Interface]: https://github.com/cider-ci/cider-ci_user-interface
  [Cider-CI]: https://github.com/cider-ci/cider-ci
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
  [architecture]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture.svg
  [architecture vision]: https://rawgithub.com/cider-ci/cider-ci/master/doc/architecture_vision.svg
