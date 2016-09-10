from .foo import Foo
from .bar import Bar

def main(*argv):
    if len(argv) == 1 and argv[0] == 'foo':
        foo = Foo()
        print(foo.run())
        return 0
    if len(argv) == 1 and argv[0] == 'bar':
        bar = Bar()
        print(bar.run())
        return 0
    print('USAGE: python -m example <foo|bar>')
    return 1

if __name__ == '__main__':
    import sys
    sys.exit(main(*sys.argv[1:]))
