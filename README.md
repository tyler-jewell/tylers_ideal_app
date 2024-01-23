# Tyler's Ideal App Template

Welcome to Tyler's Ideal App Template. This template is designed to serve as a blueprint for all of Tyler's applications. It leverages the power of the VelocityX library, a minimalist Flutter framework that aids in rapid application development. The template uses VelocityX for state management (VxState), UI extensions, and more.

## Template Overview

The template is a robust user management system. It employs `VxState` for state management, enabling predictable state management for our applications. The UI is constructed using various VelocityX extensions, offering a broad range of pre-styled widgets and utility functions for building responsive layouts.

## Using the Template

This template uses Melos to manage scripts for building, testing, and analyzing the code. Here are some of the scripts you can run:

## Running the Application

This project uses Melos to manage scripts for building, testing, and analyzing the code. Here are some of the scripts you can run:

- **Build**: To build the application, run the following command in your terminal:

```sh
melos run build
```

- **Analyze**: To analyze the dart code:

```sh
melos analyze
```

- **Format**: To format the code:

```sh
melos format
```

- **Build**: To run flutter tests (including goldens test):

```sh
melos test
```

- **Run all** To run all of these (think CI machine, [build, format, analyze, test]):

```sh
melos all
```

## Application Structure

The application is structured as follows:

- lib/main.dart: This is the entry point of the application.
- lib/data: This directory contains the data models and related code. For example, user.dart defines the User model.
- lib/mutations: This directory contains the mutations, which are functions that encapsulate changes to the state of the application. For example, get_user.dart defines a function for fetching a user.
- lib/pages: This directory contains the pages of the application. Each page is a separate widget. For example, home_page.dart defines the home page of the application.
- lib/stores: This directory contains the stores, which manage the state of the application.
- test: This directory contains the tests for the application.

We hope you find this example application useful as a starting point for your own VelocityX projects. Happy coding!

