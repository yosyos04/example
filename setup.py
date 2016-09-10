import os, setuptools, setuptools.command.test, sys

root_directory  = os.path.dirname(os.path.abspath(__file__))
tests_directory = os.path.join(root_directory, 'tests')

class PyTest(setuptools.command.test.test):

    def run_tests(self):
        import pytest
        sys.path.append(root_directory)
        return pytest.main([tests_directory])

package = dict(
    
    name                = 'example',
    version             = '0.0.1',
    description         = 'A simple example package.',

    url                 = 'https://github.com/dan-gittik/example',
    author              = 'Dan Gittik',
    author_email        = 'dan.gittik@gmail.com',
    license             = 'MIT',

    packages            = setuptools.find_packages(),
    install_requires    = [
    ],

    cmdclass            = {'test': PyTest},
    tests_require       = [
        'pytest',
    ],

)

if __name__ == '__main__':
    setuptools.setup(**package)
