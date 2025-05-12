# 📱 Detailed Guide: Creating a QR Code Generator in MIT App Inventor

Here's a step-by-step guide to recreate the QR Code Generator directly in MIT App Inventor, using the most recent interface and components.

---

## 🧩 Step 1: Create a New Project

1. Go to [https://ai2.appinventor.mit.edu/](https://ai2.appinventor.mit.edu/)  
2. Log in with your account  
3. Click **"Create New Project"**  
4. Name it **"SimpleQRCodeGenerator"** and click **"OK"**

---

## 🎨 Step 2: Design the User Interface

### Configure the Screen

In the **Properties** panel on the right, set:

- **Screen Title**: `Simple QR Generator`  
- **AlignHorizontal**: `Center`  
- **AlignVertical**: `Center`  
- **BackgroundColor**: `White`

---

### Add Components

From the **Palette** on the left, drag and drop these components:

#### 📐 Layout Section

- Drag a **Vertical Arrangement** onto the screen  
  - In Properties, set:
    - **Width**: `Fill parent`  
    - **Height**: `Fill parent`  
    - **AlignHorizontal**: `Center`  
    - **AlignVertical**: `Center`  
    - **BackgroundColor**: `Light Gray (#F8F8F8)`

---

### Inside the Vertical Arrangement:

#### 🔖 Label

- Drag a **Label**  
  - Rename it to: `TitleLabel`  
  - Set properties:
    - **Text**: `QR Code Generator`  
    - **FontSize**: `24`  
    - **FontBold**: `checked`  
    - **TextAlignment**: `Center`  
    - **Width**: `Fill parent`  
    - **Height**: `50`  
    - **BackgroundColor**: `Green (#4CAF50)`  
    - **TextColor**: `White`

#### ✏️ TextBox

- Drag a **TextBox**  
  - Rename it to: `txtInput`  
  - Set properties:
    - **Hint**: `Enter text or URL here`  
    - **Width**: `Fill parent`  
    - **Height**: `40`  
    - **FontSize**: `16`  
    - **BackgroundColor**: `White`

#### 🔘 Button

- Drag a **Button**  
  - Rename it to: `btnGenerate`  
  - Set properties:
    - **Text**: `Generate QR Code`  
    - **FontSize**: `16`  
    - **BackgroundColor**: `Green (#4CAF50)`  
    - **TextColor**: `White`  
    - **Width**: `200`  
    - **Height**: `50`  
    - **Shape**: `Rounded (value 2)`

#### 🖼️ Image

- Drag an **Image** component  
  - Rename it to: `imgQRCode`  
  - Set properties:
    - **Width**: `200`  
    - **Height**: `200`

---

### 🌐 Non-visible Components

- From the **"Connectivity"** section of the Palette:  
  - Drag a **Web** component  
    - Rename it to: `webQR`

---

## ⚙️ Step 3: Add Functionality with Blocks

1. Click on the **"Blocks"** button in the upper right to switch to the **Blocks Editor**

---

### Create the Generate QR Code Block:

- Find `btnGenerate` in the blocks panel  
- Select `when btnGenerate.Click do`  
  (Creates the event handler for button click)

#### Inside the `btnGenerate.Click` block:

- Set `webQR.Url` to:

  ```text
  https://api.qrserver.com/v1/create-qr-code/?data=
  ```

- Use a `join` block from **Text**:
  - First: Text block with `https://api.qrserver.com/v1/create-qr-code/?data=`
  - Second: `get txtInput.Text`
  - Third: Text block with `&size=200x200`

- Then, call `webQR.Get`

---

### Create the Webservice Response Handler:

- Use `when webQR.GotText do`  
  - Inside:
    - Set `imgQRCode.Picture` to `webQR.Url`

---

## 🧪 Step 4: Test and Export

### ✅ Test your app:

1. Click **"Connect"**
2. Select **"AI Companion"**
3. Scan the QR code using the **MIT AI2 Companion** app  
4. Or use the **Emulator** option

---

### 💾 Export your project:

1. Click **"Projects"**
2. Select **"Export selected project (.aia) to my computer"**
3. Save the `.aia` file

---

## 🔄 Key Updates for Recent MIT App Inventor Version

- **Material Design Components**: Use modern UI elements  
- **Enhanced Image Handling**: Clearer QR codes  
- **Improved Web Component**: Better error handling  

---

### 🔌 Extensions

- **QR Scanner extension**: To read QR codes  
- **File extension**: To save QR codes

---

### 🌙 Dark Mode Support

- Add conditional formatting to support **Dark Mode**

---

With these steps, you'll have a **fully functional QR Code Generator app** that you can further **customize and extend** as needed.  
The `.aia` file can be shared or modified later.
