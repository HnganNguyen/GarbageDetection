
<h1 align="center">♻️ GarbageDetection</h1>

<p align="center">
  Hệ thống phân loại rác thải sinh hoạt thông minh ứng dụng Trí tuệ nhân tạo
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.8+-blue">
  <img src="https://img.shields.io/badge/Flask-Web%20Framework-green">
  <img src="https://img.shields.io/badge/AI-Computer%20Vision-orange">
  <img src="https://img.shields.io/badge/Deep%20Learning-TensorFlow-red">
</p>


---

## 🌐 Đường link truy cập hệ thống

Hệ thống hiện tại đang được triển khai thử nghiệm trực tiếp trên máy chủ VPS INET. Bạn có thể truy cập, chụp ảnh và trải nghiệm ngay các tính năng phân loại thông qua địa chỉ dưới đây:


👉 **Địa chỉ Web công khai:** [https://phanloairac.id.vn](https://phanloairac.id.vn)

*Mẹo: Khi truy cập bằng điện thoại qua HTTP, ứng dụng sẽ tự động kích hoạt chế độ Fallback Mode giúp bạn mở trực tiếp Camera của thiết bị để chụp ảnh rác một cách dễ dàng.*

### 🔐 Tài khoản trải nghiệm thử hệ thống:

Để thuận tiện cho việc đánh giá và kiểm thử toàn bộ các chức năng (bao gồm cả trang quản trị dành cho Admin), bạn có thể sử dụng các tài khoản mặc định sau:

1. **Tài khoản Quản trị viên (Admin):**
   - **Username:** `admin`
   - **Password:** `12345`
   - *Quyền hạn: Xem Dashboard tổng quan, quản lý danh sách người dùng, xem toàn bộ nhật ký phân loại hệ thống, xuất báo cáo thống kê Excel.*

2. **Tài khoản Người dùng (User):**
   - **Username:** `Hngan`
   - **Password:** `123123`
   - *Quyền hạn: Chụp ảnh phân loại rác, tích lũy điểm thưởng, xem lịch sử phân loại cá nhân, theo dõi bảng xếp hạng.*

---
## 📖 Giới thiệu dự án

**GarbageDetection** là hệ thống phân loại rác thải sinh hoạt thông minh ứng dụng trí tuệ nhân tạo, được phát triển trong khuôn khổ Luận văn tốt nghiệp.

Hệ thống cho phép người dùng tải ảnh hoặc chụp ảnh rác thải trực tiếp, sau đó mô hình AI sẽ tự động nhận diện và phân loại vào đúng nhóm rác tương ứng trong vòng vài giây, đồng thời cung cấp hướng dẫn xử lý và cơ chế tích điểm thưởng nhằm khuyến khích cộng đồng tham gia bảo vệ môi trường.

---

## 🧠 Mô hình AI

Mô hình được xây dựng từ đầu (train-from-scratch) với kiến trúc CNN lightweight chuyên biệt cho bài toán phân loại rác thải sinh hoạt tại Việt Nam.

### Thành phần chính

- Residual Separable Convolution (ResSep)
  - Giảm số lượng tham số thông qua Depthwise Separable Convolution
  - Kết hợp Residual Connection giúp huấn luyện ổn định

- SimAM Attention
  - Cơ chế attention không tham số
  - Tự động làm nổi bật vùng thông tin quan trọng

- Large Kernel Attention (LKA)
  - Mở rộng receptive field lên khoảng 19×19
  - Tăng khả năng nhận biết hình dạng tổng thể của vật thể

- Lightweight Classification Head
  - Global Average Pooling
  - Dense Layer
  - Softmax 3 lớp

---

## 📊 Hiệu năng mô hình

Được huấn luyện trên bộ dữ liệu Garbage Classification (15.515 ảnh) sau khi ánh xạ về 3 nhóm rác theo Luật Bảo vệ Môi trường Việt Nam.

| Chỉ số | Giá trị |
|---------|---------|
| Accuracy | 95.24% |
| Precision (Macro) | 0.88 |
| Recall (Macro) | 0.92 |
| F1-score (Macro) | 0.90 |
| Parameters | 1,827,907 |
| Model Size (TFLite FP16) | 3.48 MB |
| Throughput | 50.4 FPS |
| GFLOPs | 1.50 |

### So sánh với các mô hình nền

| Model | Accuracy | Parameters |
|---------|---------|---------|
| VGG16 | 94.41% | 138M |
| EfficientNetB0 | 94.67% | 5.3M |
| MobileNetV2 | 92.86% | 3.4M |
| VN-LiteWaste | 95.24% | 1.83M |

---

## ♻️ Ba nhóm rác được phân loại

| Nhóm | Thành phần |
|--------|--------|
| ♻️ Recyclable | Paper, Cardboard, Plastic, Metal, Clothes, Shoes, Brown Glass, Green Glass, White Glass |
| 🌱 Organic | Biological Waste |
| 🗑️ Other | Battery, Trash |

---

## ✨ Tính năng chính

- 🔍 **Nhận diện rác thải** bằng AI từ ảnh tải lên hoặc chụp trực tiếp từ camera
- 📋 **Hướng dẫn xử lý** kèm thông tin tác động môi trường sau mỗi lần phân loại
- 🏆 **Hệ thống tích điểm thưởng** và bảng xếp hạng cộng đồng
- 📅 **Lịch sử hoạt động** theo dõi các lần phân loại cá nhân
- 📊 **Dashboard thống kê** trực quan cho người dùng và quản trị viên
- 🔐 **Quản trị hệ thống** — tìm kiếm người dùng, xem toàn bộ nhật ký, xuất báo cáo Excel

---

## ⚙️ Công nghệ sử dụng

| Thành phần | Công nghệ |
|-----------|-----------|
| Ngôn ngữ lập trình | Python 3.8+ |
| Web Framework | Flask |
| Mô hình AI | TensorFlow / Keras |
| Kiến trúc mô hình | SResSep + SimAM + LKA |
| Cơ sở dữ liệu | SQLite + SQLAlchemy |
| Giao diện | HTML5, CSS3, JavaScript |
| Huấn luyện mô hình | Kaggle GPU |
| Quản lý mã nguồn | GitHub |
| Triển khai | Heroku / Render / Docker |

---

## 📂 Cấu trúc thư mục
```text
GarbageDetection/
│
├── baocao/                     # Tài liệu báo cáo đồ án
├── instance/                   # SQLite database instance
├── static/                     # CSS, JavaScript, hình ảnh
├── templates/                  # HTML templates
│   ├── admin.html              # Giao diện quản trị Admin
│   ├── base.html               # Template gốc (layout chung)
│   ├── history.html            # Lịch sử hoạt động
│   ├── home.html               # Trang chủ / Dashboard
│   ├── index.html              # Trang chính
│   ├── leaderboard.html        # Bảng xếp hạng
│   ├── login.html              # Đăng nhập
│   ├── register.html           # Đăng ký tài khoản
│   ├── result.html             # Kết quả phân loại
│   ├── statistics.html         # Thống kê
│   ├── upload.html             # Tải ảnh lên
│   └── waste_detail.html       # Chi tiết loại rác
│
├
├── uploads/                    # Ảnh người dùng tải lên
├── tf_venv/                    # Môi trường ảo Python
│
├── app.py                      # Flask backend chính
├── waste_classifier.3group.keras # Mô hình AI đã huấn luyện
├── waste_info.json             # Dữ liệu thông tin các loại rác
├── requirements.txt            # Thư viện Python
├── runtime.txt                 # Phiên bản Python
├── Dockerfile                  # Docker config
├── Procfile                    # Deploy (Heroku)
├── .gitignore
├── .dockerignore
└── README.md
```

---

## 🚀 Hướng dẫn chạy dự án

**1️⃣ Clone repository**
```bash
git clone https://github.com/HnganNguyen/GarbageDetection.git
cd GarbageDetection
```

**2️⃣ Tạo môi trường ảo & cài thư viện**
```bash
python -m venv venv
source .\tf_env\Scripts\activate     
pip install -r requirements.txt
```

**3️⃣ Chạy ứng dụng Flask**
```bash
python app.py
```

**👉 Mở trình duyệt và truy cập:**
```
http://127.0.0.1:5000
```

---

## 🔮 Hướng phát triển

- 📱 Phát triển ứng dụng di động (Android / iOS) với tính năng chụp ảnh trực tiếp
- 🏫 Triển khai cho trường học nhằm nâng cao ý thức phân loại rác
- 🏢 Áp dụng trong khu chung cư, khu đô thị thông minh
- 🏭 Kết nối với hệ thống phân loại rác tự động trên băng chuyền công nghiệp
- 📷 Tích hợp camera thời gian thực (*real-time detection*)
- 🤖 Kết hợp IoT (ESP32, Raspberry Pi) để phân loại tự động tại nguồn
- 🎁 Quy đổi điểm thưởng thành voucher hoặc quà tặng thân thiện môi trường
- 🔄 Tích hợp học liên tục (*continual learning*) để mô hình tự cải thiện theo thời gian

---

## 📚 Tài liệu tham khảo

[1] 	Ahmad K, Al-Arif SMMR, Khan MAU, Mohammed N (2020), “Intelligent fusion of deep features for improved waste classification”, IEEE Access, 8, 167232-167243. 
[2]	Anh Tuấn, Mạnh Hùng (2025), “Tràn lan các bãi chôn lấp rác thải sinh hoạt gây ảnh hưởng nghiêm trọng đến người dân”, Báo điện tử Đài Truyền hình Việt Nam (VTV).
[3]	Hồ Xuân (2024), “Giải pháp xử lý chất thải rắn sinh hoạt là khuyến khích tái chế, tái sử dụng”, Báo điện tử VietNamNet.
[4] 	Huy Tú (2026), “Cuộc cách mạng trong ngành tái chế rác thải với AI”, Tạp chí điện tử VnEconomy.
[5]	Sreelakshmi K, Subeera VV, Jabeena A (2021), “Waste classification using ResNet50 with custom layers”, 2021 International Conference on Communication, Control and Information Sciences (ICCISc), 1-6.
[6]	Zheng J, Tan S, Wu X (2021), “Trash classification based on GoogleNet, MobileNetV2, and ResNet-50”, Journal of Physics: Conference Series, 1827(1), 012165.  
[7]	Islam N, Noor H, Ahmed MR (2024), “Enhancing Garbage Classification with Swin Transformer and Attention-Based Autoencoder: An Efficient Approach for Waste Management”, ResearchGate, 1-12.

---

## 👩‍💻 Tác giả

**Nguyễn Thị Hồng Ngân**

- 🎓 Ngành Kỹ thuật Phần mềm — Trường Đại học Nam Cần Thơ
- 💻 GitHub: [HnganNguyen](https://github.com/HnganNguyen)

---

<p align="center">
  © 2026 GarbageDetection • Phân Loại Rác Thải Thông Minh
</p>
