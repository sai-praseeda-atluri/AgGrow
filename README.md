# AgGrow

AgGrow is a Flutter application designed to provide comprehensive information about various crops and agricultural settings. The app aims to assist farmers, agricultural students, and enthusiasts in understanding crop characteristics, land suitability, and seasonal best practices. AgGrow combines a user-friendly interface with vast and diverse content to create an invaluable resource for anyone involved in agriculture.

![IMG-20240611-WA0007](https://github.com/sai-praseeda-atluri/AgGrow/assets/144923537/ff20c42a-bd56-48ad-9923-dc12e8650ad3)


## Table of Contents
- [Overview](#overview)
- [Features](#features)
  - [Adaptive Theme](#adaptive-theme)
  - [Bottom Navigation Bar](#bottom-navigation-bar)
  - [Seasonal Crop Selection](#seasonal-crop-selection)
  - [Detailed Crop Information](#detailed-crop-information)
  - [Land Information](#land-information)
  - [Settings Customization](#settings-customization)
  - [Multi-Language Support](#multi-language-support)
- [Installation](#installation)
- [Usage](#usage)
  - [Navigating the App](#navigating-the-app)
  - [Main Page](#main-page-firstpagedart)
  - [Crop Pages](#crop-pages)
  - [Land Information](#land-information-landdart)
  - [Settings](#settings-settingsdart)
  - [Crop Selection](#crop-selection-mainpagedart)
- [Routes](#routes)


## Overview

AgGrow is built using Flutter, an open-source UI software development toolkit by Google. The application is structured to provide easy navigation and access to various sections, such as the main page, crop details, land information, and settings. Each section is designed to offer valuable insights and information relevant to agriculture.

## Features

### Adaptive Theme

AgGrow supports both light and dark themes using the `adaptive_theme` package. Users can switch between themes based on their preferences, enhancing the user experience in different lighting conditions.

### Bottom Navigation Bar

The app features a bottom navigation bar implemented using the Google Nav Bar package. This navigation bar allows users to seamlessly switch between the Home, Crops, Land Info, and Settings sections.

### Seasonal Crop Selection

AgGrow provides dropdown menus for selecting a season and viewing crops that are best suited for that season. This feature helps users plan their planting and harvesting activities according to seasonal conditions.

### Detailed Crop Information

The app includes detailed pages for various crops. Users can select a crop from the list and navigate to its specific page to view information such as growing conditions, best practices, and other relevant details. The crop pages cover a wide range of crops including Wheat, Barley, Cotton, Cucumber, Maize, Muskmelon, Mustard, Rice, and Watermelon.

### Land Information

The land information feature is currently under development. This section will allow farmers to input details about their land, including soil type, size, and location. Based on this information, the app will recommend suitable crops and provide relevant details regarding planting schedules, fertilization, and irrigation.

### Settings Customization

The settings page allows users to customize the application according to their preferences. This includes changing the app theme and adjusting other settings to tailor the user experience.

### Multi-Language Support

AgGrow offers multi-language support, allowing users to switch between different languages for the app's interface. This feature enhances accessibility and usability for users from diverse linguistic backgrounds.

## Installation

To get started with AgGrow, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/aggrow.git
   cd aggrow
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

## Usage

### Navigating the App

Once the app is running, you will start on the main page, which serves as the entry point. From there, you can use the bottom navigation bar to access different sections of the app.

### Main Page (firstpage.dart)

The main page is the welcome screen of the application, providing an introduction and overview of the app’s features. It includes a welcoming message and navigation options to other sections.

![IMG-20240611-WA0007](https://github.com/sai-praseeda-atluri/AgGrow/assets/144923537/d7604667-4e11-45b9-a402-a13b9bad4e2b)


### Crop Selection (mainpage.dart)

This page allows users to select a season and view a list of crops suitable for that season. Users can then navigate to detailed pages for each crop to learn more about growing conditions and best practices.

![IMG-20240611-WA0005](https://github.com/sai-praseeda-atluri/AgGrow/assets/144923537/da7017e0-13b6-44a9-8f12-762c872cb16b)


### Crop Pages

Each crop page provides detailed information about a specific crop. Users can select a season and view crops suitable for that season using dropdown menus. Selecting a crop navigates the user to a detailed page for that crop.

![IMG-20240611-WA0006](https://github.com/sai-praseeda-atluri/AgGrow/assets/144923537/4431ae2e-6b07-457e-9988-202fe8713ac3)


### Land Information (land.dart)

The land information page, although currently under development, will allow users to input details about their land. This includes soil type, size, and location. Based on this information, the app will recommend suitable crops and provide relevant details regarding planting schedules, fertilization, and irrigation etc.

![IMG-20240611-WA0008](https://github.com/sai-praseeda-atluri/AgGrow/assets/144923537/f720f6ce-6188-4e54-a995-47a5a0252671)


### Settings (settings.dart)

The settings page allows users to customize the application, including switching between light and dark themes, and changing the language interface.

![IMG-20240611-WA0004](https://github.com/sai-praseeda-atluri/AgGrow/assets/144923537/2026a34c-54dd-48c2-8cfd-b700594984f3)



## Routes

The app includes the following routes for navigation:

- **/firstpage**: The first page of the application.
- **/crop**: Page displaying the main crops.
- **/landinfo**: Page providing information about the land (currently under development).
- **/settings**: Settings page.
- **/wheat**: Page with information about wheat.
- **/barley**: Page with information about barley.
- **/cotton**: Page with information about cotton.
- **/cucumber**: Page with information about cucumber.
- **/maize**: Page with information about maize.
- **/muskmelon**: Page with information about muskmelon.
- **/mustard**: Page with information about mustard.
- **/rice**: Page with information about rice.
- **/watermelon**: Page with information about watermelon.


---

Thank you for using AgGrow! Please note that while the app is functional, the land information feature is still under development.
