.. image:: https://travis-ci.org/dan-gittik/example.svg?branch=master

Example
=======

An example package. See the `documentation <https://example-package.readthedocs.io/en/latest/>`_.

Installation
------------

To install the example package, clone it from GitHub and run its ``setup.py`` script.

.. code-block:: bash

   $ git clone https://github.com/dan-gittik/example
   $ cd example
   $ python setup.py install

Execution
---------

To execute the example package, run ``docker run example``.

.. code-block:: bash
    
   $ docker run example
   USAGE: python -m example <foo|bar>

- The ``foo`` argument runs a Foo instance.

  .. code-block:: bash
     
     $ docker run example foo
     foo

- The ``bar`` argument runs a Bar instance.

  .. code-block:: bash
     
     $ docker run example bar
     bar
