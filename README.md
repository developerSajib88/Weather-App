
## App Screenshot's

![App Screenshot](https://github.com/developerSajib88/Project-Screenshots/blob/main/Weather%20App/screenshot_1.jpg) | ![App Screenshot](https://github.com/developerSajib88/Project-Screenshots/blob/main/Weather%20App/screenshot_2.jpg) | ![App Screenshot](https://github.com/developerSajib88/Project-Screenshots/blob/main/Weather%20App/screenshot_3.jpg)
--- | --- | ---
*Weather Screen* | *Search Weather* | *Unit Conversion*


### Project Summary

**Objective**: The Flutter Weather App provides real-time weather updates and forecasts for the next three days, leveraging a public weather API. The app features automatic location detection and manual location input, along with a visually appealing interface. Additional details such as wind speed, humidity, pressure, and visibility are included, ensuring a comprehensive weather tracking experience.

### Key Features

1. **Current weather conditions**
   - Temperature
   - Wind speed
   - Humidity
   - Pressure
   - Feels Like
   - Today's weather history

2. **3-day weather forecast**
   - Weekday.
   - Weather icon.
   - Temperature
   

3. **Additional Features**
   - Automatic location detection using Location Service.
   - Manual location input for weather data.
   - Unit conversion between Celsius and Fahrenheit.
  
3. **Additional Features**
   - Maked Offline First using HIVE local database.
   - Dependency Injection and Singleton.
   - Shimmer Animation.

3. **Follows in Development**
   - Feature First Clean Architechture.
   - Riverpod State Mangament.
   - Hive.
   

---

Here’s a more detailed, step-by-step instruction set to help you thoroughly set up and run the Weather App Flutter project:

---

### Step 1: Install Flutter SDK
If you haven’t installed Flutter on your machine, follow these steps:

1. **Download Flutter**: 
   - Go to the [Flutter installation guide](https://docs.flutter.dev/get-started/install).
   - Choose the version appropriate for your operating system (Windows, macOS, or Linux) and follow the download instructions.
   
2. **Extract and Install Flutter**:
   - After downloading, unzip the Flutter SDK file. 
   - Move the extracted `flutter` folder to a preferred location on your system (like `C:\src\flutter` on Windows or `~/flutter` on macOS/Linux).

3. **Add Flutter to PATH**:
   - This step makes the `flutter` command accessible from any terminal window.
   - Follow the guide to add the Flutter directory to your system’s PATH variable:
      - On **Windows**: 
        - Open **System Properties > Environment Variables**.
        - Edit the `Path` variable to include the path to the Flutter `bin` folder (e.g., `C:\src\flutter\bin`).
      - On **macOS/Linux**:
        - Add `export PATH="$PATH:/path-to-flutter/bin"` to your shell configuration file (like `~/.bashrc` or `~/.zshrc`).

4. **Verify Installation**:
   - Open a terminal and run:
     ```bash
     flutter doctor
     ```
   - `flutter doctor` checks your setup and lists any additional steps to complete the installation, like setting up Android Studio or any missing dependencies.

---

### Step 2: Clone the Project from GitHub
Now, you’ll download the Weather App project files.

1. **Open a Terminal or Command Prompt**:
   - You can use Git Bash, PowerShell, or any terminal on Windows, or Terminal on macOS/Linux.

2. **Clone the Repository**:
   - Run this command to download the project files:
     ```bash
     git clone git@github.com:developerSajib88/Weather-App.git
     ```
   - This command creates a `Weather-App` folder with all project files.

3. **Navigate into the Project Directory**:
   - Change into the project’s directory using:
     ```bash
     cd Weather-App
     ```
   - This is where you’ll run all remaining setup commands.

---

### Step 3: Open the Project in Android Studio or VS Code

#### Option A: Using Android Studio
1. **Launch Android Studio**.
2. **Open the Project**:
   - Go to **File > Open**, then navigate to and select the `Weather-App` folder.
3. **Set Flutter SDK Path**:
   - If Android Studio prompts you to configure the Flutter SDK path, select the location where you installed Flutter.
4. **Install Dependencies**:
   - Android Studio may automatically run `flutter pub get`, which installs all project dependencies. If it doesn’t, open the Terminal tab in Android Studio and run:
     ```bash
     flutter pub get
     ```

#### Option B: Using Visual Studio Code (VS Code)
1. **Launch VS Code**.
2. **Open the Project Folder**:
   - Go to **File > Open Folder**, and select the `Weather-App` folder.
3. **Install Flutter and Dart Extensions**:
   - Go to the Extensions view (usually the square icon in the left sidebar).
   - Search for **Flutter** and **Dart** extensions and install them; they provide better support and tooling for Flutter projects.
4. **Install Dependencies**:
   - Open the terminal in VS Code by going to **View > Terminal** and run:
     ```bash
     flutter pub get
     ```
   - This command installs all necessary libraries and dependencies listed in the `pubspec.yaml` file.

---

### Step 4: Run the Project
You can now run the app on an emulator or a connected physical device.

1. **Start an Emulator or Connect a Physical Device**:
   - **In Android Studio**: Go to **Device Manager** to start an Android emulator or connect an Android device via USB.
   - **In VS Code**: Select an emulator or connected device from the **Device Selector** at the bottom of the screen.

2. **Run the App**:
   - **In Android Studio**: Click the **Run** button (green play icon) or go to **Run > Run ‘main.dart’**.
   - **In VS Code**: Open `main.dart`, then press **F5** or go to **Run > Start Debugging**.

   Alternatively, from the terminal in either IDE, you can start the app with:
   ```bash
   flutter run
   ```
   - This command compiles and runs the app on the selected device. You should see the Weather App app open on the emulator or device screen.

---

### Additional Useful Commands
- **Check for Code Issues**: Run `flutter analyze` to check for any linting issues or potential bugs in the code.
- **Format Code**: Use `flutter format .` to format all Dart files according to standard Dart formatting rules.

---

### Troubleshooting
If you encounter any problems, try these troubleshooting steps:

1. **Update Flutter**:
   - Make sure your Flutter SDK is the latest version by running:
     ```bash
     flutter upgrade
     ```
   - This command updates Flutter and all installed components.

2. **Reinstall Dependencies**:
   - If dependencies seem to be missing, re-run:
     ```bash
     flutter pub get
     ```

3. **Verify Setup**:
   - Run `flutter doctor` to see if any required components are missing or incorrectly set up. Follow the suggested actions until everything shows as correctly configured.

---

Following these steps should get you fully set up and running with the Weather App project.

