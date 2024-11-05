from setuptools import setup, find_packages


setup(
    name='CI test API & UI GitActions with Allure reports',
    install_requires=[
        'pytest==8.3.3',
        'allure-pytest==2.13.5',
        'pytest==8.3.3',
        'requests==2.32.3',
        'setuptools==75.3.0'
        ],
    packages=find_packages()
    )