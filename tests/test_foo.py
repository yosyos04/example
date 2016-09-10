import example, pytest

@pytest.fixture
def foo():
    return example.Foo()

def test_foo(foo):
    assert foo.run() == 'foo'
