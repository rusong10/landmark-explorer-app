# Landmark Explorer

Landmark Explorer is a SwiftUI-based application that lets you explore iconic landmarks around the world using MapKit. With an interactive fullscreen map, you can select landmarks from a dropdown, animate the map to their coordinates, and dive into detailed views with images, descriptions, and more.

## Features

- **Fullscreen Map:** Displays a dynamic map with *hardcoded landmarks*.
- **Custom Annotations:** Each landmark is marked with a custom annotation pin on the map.
-  **Interactive Landmark Selection:**
    - Use the dropdown menu at the top to choose a landmark and the map camera will smoothly animate to its exact location.  
    - Tap an annotation (marker) on the map to focus on that landmark and the map camera will move accordingly. The selected annotation will scale larger than the others to indicate it's been selected.
    - Use the "Next" button to cycle through landmarks, with the map camera animating to each location.  
- **Landmark Preview:** A preview pane at the bottom shows the landmark's name and location, with a "Read More" and "Next" button.
- **Detailed Information:** Tapping "Read More" brings up a sheet with pictures, a detailed description, a link to Wikipedia, and a focused map view.
- **Dark Mode Support:** The app adapts seamlessly to light and dark mode.
- **Universal Compatibility:** Works on both **iPhone** and **iPad**.
- **Orientation Support:** 
    - **iPhone**: Portrait only
    - **iPad**: Supports all orientations

## Screenshots

<p> <strong>iPhone Screens (Light Mode)</strong> </p> 
<p> 
  <img src="https://github.com/user-attachments/assets/3bddefb5-8b3f-4d01-92df-8c95c5289b56" width="25%" alt="iPhone Light Mode (Home)"> 
  <img src="https://github.com/user-attachments/assets/bad44ca8-61af-4f63-b682-64c87b1c27f5" width="25%" alt="iPhone Light Mode (Menu)"> 
  <img src="https://github.com/user-attachments/assets/78c86919-638f-44e9-95d5-5d4e75099e62" width="25%" alt="iPhone Light Mode (Detail)"> 
</p> 

<p> <strong>iPad Screens (Dark Mode)</strong> </p> 
<p align="space-around"> 
  <img src="https://github.com/user-attachments/assets/4cbce322-5b8a-4c06-803c-e17358c817f2" width="40%" alt="iPad Dark Mode (Home"> 
  <img src="https://github.com/user-attachments/assets/c5d0ed92-4e62-4319-8b35-f0b84917db1b" width="40%" alt="iPad Dark Mode (Menu)"> 
  <img src="https://github.com/user-attachments/assets/f63fa71e-421c-4dde-8317-00a8329bf073" width="40%" alt="iPad Dark Mode (Detail)"> 
</p> 

## Getting Started

### Prerequisites

- **Xcode:** Version 16.2
- **iOS Deployment Target:** iOS 18.2 (Default setting, not tested on lower versions)

### Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/landmark-explorer-app.git

2. **Open the Project in Xcode:**

   ```bash
    cd landmark-explorer-app
    open LandmarkExplorer.xcodeproj

3. **Run the App:**

   - Select your simulator or connect your iOS device.
   - Build and run the project from Xcode.
     
## Usage

1. **Explore the Map:**
   
   - Launch the app to view the fullscreen map.
   - Tap the title to reveal the dropdown menu of landmarks.

2. **Select a Landmark:**

   - Choose a landmark from the dropdown. The map camera will animate to the landmark’s coordinate.
   - Alternatively, tap the custom annotation on the map to focus on that landmark, and the map camera will move to it.
   - Use the "Next" button to cycle through landmarks, with the map camera smoothly animating to each new location.
  
3. **View Details:**

   - Check out the bottom preview pane for basic information.
   - Tap "Read More" to open a detailed view with images, a description, a Wikipedia link, and a focused map.
  
## Acknowledgements
This project is for educational purposes only, and all credit goes to [Swiftful Thinking](https://www.youtube.com/playlist?list=PLwvDm4Vfkdpha5eVTjLM0eRlJ7-yDDwBk). The original tutorial was made a few years ago, and some parts of the code were deprecated. I updated it to work with the latest SwiftUI changes.
