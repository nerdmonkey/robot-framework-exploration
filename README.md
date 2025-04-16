# Robot Framework Exploration

This repository contains my exploration of Robot Framework for browser automation testing with a focus on features like basic authentication, web UI testing, and API testing.

## Overview

Robot Framework is a generic open-source automation framework for acceptance testing, acceptance test-driven development (ATDD), and robotic process automation (RPA). This project demonstrates its capabilities with practical examples.

## Installation

To set up the environment:

```
pip install robotframework-browser
python -m Browser.entry init
```

The second command installs the required browsers and Playwright dependencies.

## Features Explored

- **Basic Authentication**: Testing HTTP Basic Auth with proper credentials
- **Web UI Testing**: Automating browser interactions
- **Playwright Integration**: Using the modern Browser library which is powered by Playwright

## Running Tests

To run a test file:

```
robot basic_auth.robot
```

## Project Structure

- `basic_auth.robot` - Example test for HTTP basic authentication
- `browser/traces/` - Contains Playwright traces for debugging

## Resources

- [Robot Framework Official Documentation](https://robotframework.org/)
- [Browser Library Documentation](https://marketsquare.github.io/robotframework-browser/Browser.html)
