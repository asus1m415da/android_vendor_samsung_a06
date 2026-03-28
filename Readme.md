![Android Version](https://img.shields.io/badge/Android-15%20(One%20UI%207)-green?style=for-the-badge&logo=android)
![Platform](https://img.shields.io/badge/Platform-MT6768%20/%20Helio%20G85-blue?style=for-the-badge)
![Maintainer](https://img.shields.io/badge/Maintainer-asus1m415da-orange?style=for-the-badge)

This repository contains the proprietary vendor blobs for the **Samsung Galaxy A06**, extracted from the official **Android 15 (One UI 7)** firmware. This tree is essential for building custom ROMs like LineageOS or debugging hardware-specific issues.

---

## 🛠 Features & Content

This tree is fully updated and contains all critical hardware components:

* **Focaltech Touchscreen Firmware**: Included in `/firmware` to fix touch issues in custom recoveries/ROMs.
* **Camera HALs**: Full support for Samsung's imaging libraries.
* **Audio Policy**: Optimized configurations for high-quality playback and recording.
* **Security (TEE)**: Complete Trusted Execution Environment blobs for system integrity.
* **Connectivity**: Latest Bluetooth and Wi-Fi configurations.

---

## 📁 Repository Structure

| Directory | Description |
|:--- |:--- |
| `app` | System vendor applications |
| `bin` | Hardware-level executables |
| `etc` | Permissions, SELinux, and config files |
| `firmware` | Low-level hardware firmware (Display, Touch, etc.) |
| `lib/lib64` | 32-bit and 64-bit hardware libraries |
| `res` | System resources and UI assets |
| `tee` | Trusted Execution Environment blobs |

---

## 🚀 How to use in your Manifest

Add this to your `.repo/local_manifests/roomservice.xml`:

* <project name="asus1m415da/android_vendor_samsung_a06" path="vendor/samsung/a06" remote="github" revision="main" />

⚖️ Credits & Notices
 * Lead Maintainer: asus1m415da
 * Source: Official Android 15 (One UI 7) Blobs.
 * Special thanks: To the Galaxy A06 developer community.
> [!IMPORTANT]
> If you fork this repository or use these blobs in your project, please provide proper credit to the original maintainer.
