import allure
import pytest

import logging as log
@pytest.mark.health
@allure.suite('Test Health check of the framework')
def test_healhthchek():
    with allure.step('Step 1'):

        log.info('Hello !!!')

