# termux-timelapse
Creating time lapse movies using Termux on Android.

Uses the `termux-camera-photo` command-line utility from the Termux API package
to take JPG images and then convert them into a `.mp4` movie using [ffmpeg](https://ffmpeg.org/).

## Requirements

* [Termux app](https://f-droid.org/en/packages/com.termux/)
* [Termux:API app](https://f-droid.org/en/packages/com.termux.api/)
* open a termux shell and install termux-api and ffmpeg
  
  ```
  pkg install termux-api ffmpeg
  ```

## Usage

When executed, scrip will ask the user for:
* **ID** of camera to obtain images from (`termux-camera-id`)
* **Prefix** for the images/movie
* The **number of images** to take
* The **interval** between taking images (taking images takes 1-2 seconds)
* The **frames-per-second (FPS)** to use for the movie

