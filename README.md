# MyQRScan - QR Code Scanner as a Dialog

## 📌 Introduction
MyQRScan is a Flutter plugin that allows developers to scan QR codes within a **dialog UI**. It supports **Android, iOS, and Web**, making it a versatile tool for various applications, especially in **Web3-based** projects where QR code scanning is frequently required.

## ✨ Features
- **Cross-platform support**: Works on Android, iOS, and Web.
- **Dialog-based QR scanner**: Opens a scanner inside a modal dialog.
- **Easy integration**: Simple API for quick implementation.
- **Useful for Web3 applications**: Ideal for scanning wallet addresses, transaction data, and authentication QR codes.

## 🚀 Installation
Add the dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  myqrscan: latest_version
```

Then, run:
```sh
flutter pub get
```

## 🔧 Usage
### 1️⃣ Initialization
Before using the scanner, initialize it:
```dart
final _myqrscanPlugin = Myqrscan();
String code = "";
```

### 2️⃣ Implement QR Code Scanner with a Button Click
You can use **InkWell, ElevatedButton, GestureDetector, or Container** to trigger the scanner.

```dart
Scaffold(
  appBar: AppBar(
    title: const Text('Plugin Example App'),
  ),
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            _myqrscanPlugin.getScannedQrBarCode(
              context: context,
              onCode: (scannedCode) {
                setState(() {
                  code = scannedCode ?? "";
                });
              },
            );
          },
          child: Text("Click me"),
        ),
        SizedBox(height: 20),
        Text("Result: " + code),
      ],
    ),
  ),
);
```

## 📜 License
This project is licensed under the **MIT License**.

## 🙌 Contributing
Feel free to open issues and contribute improvements via pull requests!

---

Now you can integrate MyQRScan into your Flutter projects effortlessly! 🚀

