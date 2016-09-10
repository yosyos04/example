Example
=======

An example package.

.. toctree::
   Foo <foo>
   Bar <bar>

Installation
------------

To install the example package, clone it from GitHub and run its ``setup.py`` script.

.. code-block:: bash

   $ git clone https://github.com/dan-gittik/example
   $ cd example
   $ python setup.py install

Execution
---------

To execute the example package, run ``python -m example``.

.. code-block:: bash
    
   $ python -m example
   USAGE: python -m example <foo|bar>

- The ``foo`` argument runs a Foo instance.

  .. code-block:: bash
     
     $ python -m example foo
     foo

- The ``bar`` argument runs a Bar instance.

  .. code-block:: bash
     
     $ python -m example bar
     bar
