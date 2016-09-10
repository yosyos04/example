import example, pytest

@pytest.fixture
def bar():
    return example.Bar()

def test_bar(bar):
    assert bar.run() == 'bar'
