from scasp_translator.simulator import VirtualHomeSimulator
import pytest

@pytest.fixture
def initialize_simulator():
	simulator = VirtualHomeSimulator()
	return simulator

def test_get_state():
	simulator = initialize_simulator
	assert len(simulator.get_state()) == 1