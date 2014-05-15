Cider-CI
========

Cider-CI is an application and service stack for highly parallelized and
resilient integration testing. 

State and History
-----------------

Work on Cider-CI began started May 2013. Cider-CI is used since August 2013 in the
Development Departement at the IT-Center of the [Zurich University of the
Arts][]. It has boosted development immensely for the projects [Madek][] and
[Leihs][].


Core Components
---------------

Cider-CI consists of the following components:

1.  The [Cider-CI][] repository contains documentation and references.

2.  The [Cider-CI Server-TB][] repository contains code that runs within
    the Wildly (JBoss) application server under the [TorqueBox][] stack.

3.  The [Cider-CI Server-IM][] repository contains code that runs within
    the Wildfly (JBoss) application server under the [Immutant][] stack.

4.  The [Cider-CI Executor][] repository contains code that runs 
    in the JVM on every executor (node).

The [overview diagram](https://rawgithub.com/DrTom/cider-ci/master/doc/overview.svg)
illustrates how the components interact.


Supplementary Projects 
----------------------

The *[Cider-CI Ansible Setup][]*
project provides a way to get easily started with _Cider-CI_. We use it 
at the _ZHdK_ to mange our _Cider-CI_ environment. 


The [Bash Demo Project][] is probably the most simple project that demonstrates
testing with _Cider-CI_.


  [Cider-CI Ansible Setup]: https://github.com/DrTom/cider-ci_ansible-setup
  [Bash Demo Project]: https://github.com/DrTom/cider-ci_demo-project-bash

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


  [Cider-CI Executor]: https://github.com/DrTom/cider-ci_executor
  [Cider-CI Server-IM]: https://github.com/DrTom/cider-ci_server-im
  [Cider-CI Server-TB]: https://github.com/DrTom/cider-ci_server-tb
  [Cider-CI]: https://github.com/DrTom/cider-ci
  [Creative Commons Attribution-ShareAlike 4.0 International Public License]: http://creativecommons.org/licenses/by-sa/4.0/legalcode
  [GNU Affero General Public License Version 3]: http://www.gnu.org/licenses/agpl-3.0.html
  [Immutant]: http://immutant.org/
  [Leihs]: https://github.com/zhdk/leihs
  [Madek]: https://github.com/zhdk/madek
  [TorqueBox]: http://torquebox.org/
  [Zurich University of the Arts]: http://www.zhdk.ch/

