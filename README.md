# GregMat_Video_Config
Auto changes video playback to 2x and quality to 540P for PrepSwift

## Installation

1. Download AHK v1.1 https://www.autohotkey.com/

## Setup and Usage

1. Save the settings icon image to your local device.
2. Replace the image path in the `test2.ahk` file with your local path.
3. Run the file once to initialize.
4. Use the keybind (Ctrl + J) to activate the script.

## Important Notes

- The default keybind is set to Ctrl + J.
- If anything goes wrong, press Ctrl + Escape to break out of the script.


## Errors

If you encounter "Image not Found" ErrorLevel: 1:
- Take a screenshot of the settings icon using the Snip Tool on your local PC, use the uploaded image as a reference.
- This error is likely due to screen resolution differences.
- Use the image taken on your local device.
- Update the image path in the script with the path to your new screenshot.


## Auto-start on Device Restart

To run the script automatically when you restart your device:

1. Press Win + R
2. Type `shell:startup` and press Enter
3. Create a shortcut of the .ahk file in this folder

This will ensure the script runs every time you start your computer.
