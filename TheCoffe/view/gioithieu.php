<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chuyện nhà</title>
    <link rel="stylesheet" href="../css/css/stylehome.css">
    <link rel="icon" href="../css/img/logo (2).jpg">
    <link rel="stylesheet" href="../css/icon/themify-icons-font/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="../css/icon/fontawesome-free-6.4.0-web/css/all.css">
<style>
.khoinguon{
    padding-left:50px;
    display: flex;
    padding: auto;
    padding-bottom:20px;
}
.kn1{
    width: 40%;
    
}
.kn2{
    width:50%;
    margin-left:100px;
}
.kn2 img{
    width:100%;
}
.tieude1{
    text-align:center;
    font-size:20px;
    font-weight:bold;  
    font-family: Arial, sans-serif;
}
.underline {
    width: 50px;
    height: 5px;
    background-color: orange;
    margin: 10px auto 0;
}
.tieude2{
    text-align:center;
    font-size:15px;
    margin-top:5px;
    margin-bottom: 15px;
    font-family: Arial, sans-serif;
}
.all{
    margin: 0;
    font-family: Arial, sans-serif;
    background-color:#FFF7E6;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    
}
.container {
    max-width: 1000px;
    width: 100%;
    padding: 20px;
    background-color: ;
}

.title {
    text-align: left;
    margin-bottom: 20px;
    display: flex;
    align-items: center;
}

.title h2 {
    font-size: 20px;
    margin: 0;
    display: inline-block;
    vertical-align: middle;
}

.title .underline {
    display: inline-block;
    width: 60px;
    height: 6px;
    background-color: orange;
    margin-left: 10px;
    vertical-align: middle;
}

.news-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
}

.news-item {
    display: flex;
    flex-direction: column;
    background-color: #fff;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.news-item img {
    width: 100%;
    height: auto;
}

.news-content {
    padding: 15px;
}

.news-content h2 {
    font-size: 20px;
    margin: 0 0 10px;
    color: #333;
}

.news-content .date {
    font-size: 14px;
    margin: 5px 0;
    color: #999;
}

.news-content p {
    font-size: 14px;
    margin: 5px 0;
    color: #666;
}
</style>


</head>
<body>
<?php 
include "./header.php";
?>

<div class="gioithieu">
    <div class="tieude">
        <div class="tieude1">
            CHUYỆN NHÀ
            <div class="underline"></div>
        </div>
       
        <div class="tieude2"> The Coffee House sẽ là nơi mọi người xích lại gần nhau đề cao giá trị kết nối con người và sẻ chia<br>
         thân tình bên những tách cà phê, ly trà đượm hương, truyền cảm hứng về lối sống hiện đại.</div>
    </div>
    <div class="khoinguon">
       <div class="kn1">
            <img style=""src="https://file.hstatic.net/1000075078/file/thecoffeehouse_traxanhtaybac_6_f9e96c0f4b114b6d94977004bdc0a912_grande.jpg" alt="">
            <div style="padding-top:8px;width:100%"><h3>NGƯỢC LÊN TÂY BẮC GÓI VỊ MỘC VỀ XUÔI</h3></div>
            <div style="color:gray;padding-top:8px;padding-bottom:8px;width:100%">16/06/2024</div>
            <div style="">Những dải ruộng bậc thang, các cô gái Thái với điệu múa xòe hoa, muôn cung đường ngợp mùa hoa… đó là rẻo cao Tây Bắc luôn làm say lòng...</div>
       </div>
       <div class="kn2">
            <img src="https://file.hstatic.net/1000075078/file/signaturebythecoffeehouse_03_351126338c6a455693514f41b9fed720_grande.jpg" alt="">
            <div style="padding-top:8px;width:100%"><h3>SIGNATURE BY THE COFFEE HOUSE - "DẤU ẤN" MỚI CỦA NHÀ CÀ PHÊ</h3></div>
            <div style="color:gray;padding-top:8px;padding-bottom:8px;width:100%">16/06/2024</div>
            <div style="">Ngày 11.01.2023, Chuỗi The Coffee House thông báo cửa hàng SIGNATURE by The Coffee House chính thức khai trương tại trung tâm thương mại Crescent Mall, Nguyễn Văn Linh..</div>
       </div>
    </div>
    <div class="all">
    <div class="container">
        <div class="title">
            <h2>Teaholic</h2>
            <div class="underline"></div>
        </div>
        <div class="news-grid">
            <div class="news-item">
                <img src="https://file.hstatic.net/1000075078/file/an_banh_uong_nuoc_nhom_03_e104adc3c9a4426593832c141cc10e5b_grande.jpg" alt="Image 1">
                <div class="news-content">
                    <h2>TRUNG THU NÀY, SAO BẠN KHÔNG TỰ CHO MÌNH "DỪNG MỘT CHÚT THÔI, THƯỞNG...</h2>
                    <p class="date">19/09/2023</p>
                    <p>Bạn có từng nghe: “Trung thu thôi mà, có gì đâu mà chơi”, hay “Trung...</p>
                </div>
            </div>
            <div class="news-item">
                <img src="https://file.hstatic.net/1000075078/file/teaholic_3f320cac87814da0912f45ccfebd4e0e.jpg" alt="Image 2">
                <div class="news-content">
                    <h2>BỘ SƯU TẬP CẦU TOÀN KÈO THƠM: "VÍA" MAY MẮN KHÔNG THỂ BỎ LỠ TẾT NÀY</h2>
                    <p class="date">16/01/2023</p>
                    <p>Tết này vẫn giống Tết xưa, không hề mai một nét văn hóa truyền thống...</p>
                </div>
            </div>
            <div class="news-item">
                <img src="https://lh4.googleusercontent.com/--NPhFBpCpk-OPywizr4rsHUjL075Qeu9WlTxqHsvbKuwIiirM32HwvxwQ-gQkTJhWXkp8wZmrU9v7_NVZz6fDCh17ElcO0KtcqaVzpzeA4_jl7l8fZF3w0cvK_7RAo1qoQ2G6X9XrJq" alt="Image 3">
                <div class="news-content">
                    <h2>“KHUẤY ĐỂ THẤY TRẮNG” - KHUẤY LÊN NIỀM HẠNH PHÚC: TRẢI NGHIỆM KHÔNG THỂ BỎ...</h2>
                    <p class="date">16/08/2022</p>
                    <p>Năm 2022 là năm để cao sức khỏe tinh thần nên giới trẻ muốn tận...</p>
                </div>
            </div>
            <div class="news-item">
                <img src="https://file.hstatic.net/1000075078/file/teaholic_3f320cac87814da0912f45ccfebd4e0e.jpg" alt="Image 4">
                <div class="news-content">
                    <h2>TRUNG THU NÀY, SAO BẠN KHÔNG TỰ CHO MÌNH "DỪNG MỘT CHÚT THÔI, THƯỞNG...</h2>
                    <p class="date">19/09/2023</p>
                    <p>Bạn có từng nghe: “Trung thu thôi mà, có gì đâu mà chơi”, hay “Trung...</p>
                </div>
            </div>
        </div>
    </div>

    </div>
    

<?php 
include "./footer.php";
?>
</body>
</html>