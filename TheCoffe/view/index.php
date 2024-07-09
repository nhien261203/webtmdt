<?php
session_start();
 if(!isset($_SESSION['id_user'])){    
    header("Location:../login/dangnhap.php");
 }
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="../css/css/stylehome.css">
    <link rel="icon" href="../css/img/logo (2).jpg">
    <link rel="stylesheet" href="../css/icon/themify-icons-font/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="../css/icon/fontawesome-free-6.4.0-web/css/all.css">

    <style>
.header-right .soluong{
            border-radius: 50%;
            border: 1px solid #000;
            background-color: red;
            width: 20px;
            height: 20px;
            color: aliceblue;
            margin-top: -10px;
            margin-left: -8px;       
            text-align: center;         
        }
        .header-right{
            display: flex;
        }
        .header-right > .giohang{
            display: flex;
        }
        html{
            scroll-behavior: smooth;
        }
        .header-content{
  margin-left: 100px;
   display: flex;
   flex-direction: column; 
   margin-top: -350px;
   margin-bottom: 350px;
}
.header-content h1{
    margin-left: 50px;
    margin-bottom: 30px;
}
.search{
    position: absolute;
    /* border: 1px solid #000; */
    padding-bottom: 2px;
    padding-left: 15px;
    padding-right: 10px;
    padding-top: 10px;
    margin-left: -50px;
    display: none;
    border-radius: 30px;
    /* background-color: #dadada; */
    /* background-color: aliceblue; */
    backdrop-filter: blur(50px);
}
.search button{
    background: none;
    border: none;
    font-size: 20px;
}
.search form{
    display: flex;
}
.input-field {
  
  width: 100%;
  height: 100%;
  background: none;
  border: none;
  outline: none;
  border-bottom: 1px solid #bbb;
  padding: 0;
  font-size: 0.95rem;
  color: #151111;
  transition: 0.4s;
}
.header-right >.ti-search:hover .search{
    display: block;
}

/* user */
.ti-user{
    position: relative;
}
.profile{
    position: absolute;
    /* border: 1px solid #000; */
    display: none;
    padding: 10px;
    width: 130px;
}
.header-right > .ti-user:hover .profile{
    display: block;
}
.profile li{
    margin: 5px;
}
.profile li a:hover{
    background: -webkit-linear-gradient(120deg,hsl(318,94%,61%),hsl(239,69%,51%));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}
.all{
    margin:0;
    font-family: Arial, sans-serif;
    background-color: #FFF7E6;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 70vh;

}
.container {
    max-width: 1200px;
    width: 100%;
    background-color: #FFF7E6;
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
    display: flex;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
}

.news-item {
    display: flex;
    width:30%;
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

<?php 
 $db= mysqli_connect("localhost","root","","the_coffee");
 if(isset($_SESSION['id_user'])){
    $id_user=$_SESSION['id_user'];
 }
$sql=" SELECT price FROM tbl_order_details WHERE id_user = '$id_user' ";
$result_se_hang=mysqli_query($db,$sql);
$count=mysqli_num_rows($result_se_hang);
?>

<body>
    
    <div id="header">
        <div class="header">
        <div class="logo">
           <div class="letter">T</div>
           <div class="letter">H</div>
           <div class="letter">E</div>
           
           <div class="letter lt">C</div>
           <div class="letter">O</div>
           <div class="letter">F</div>
           <div class="letter">F</div>
           <div class="letter">E</div>
           <div class="letter">E</div>
           
           <div class="letter lt">H</div>
           <div class="letter">O</div>
           <div class="letter">U</div>
           <div class="letter">S</div>
           <div class="letter">E</div>
            

        </div>
        <div class="header-mid">
            <ul class="dm1">
                <li><a href="#">TRANG CHỦ</a></li>
                <li><a href="./product.php">SẢN PHẨM</a>
                  <ul class="dm2">
                    <div class="dm">

                    <!-- đổ danh mục -->
<?php
        $sql= "SELECT *FROM tbl_category";
        $rs= mysqli_query($db,$sql);
        if($rs->num_rows>0){
            $i=0;
            while($row=$rs->fetch_assoc()){
            $i++;
            $category_name= $row['category_name'];
            $category_id= $row['category_id'];

?>
                    <li><a href="./cafe.php?category_name=<?php echo $category_name ?>"><?php echo $category_name ?></a></li>

            <?php
            }}
            ?>
                    
                </div>
                  </ul>
                </li>
                <li><a href="./tintuc.php">TIN TỨC</a></li>
                <li><a href="./gioithieu.php">CHUYỆN NHÀ</a></li>
                <li><a href="./lienhe.php">LIÊN HỆ</a></li>
            </ul>
        </div>
        <div class="header-right">
        <i class="ti-user">
                <ul class="profile">
                    <li><a href="./condition.php">Đơn hàng</a></li>
                    <li><a href="../login/dangnhap.php">Đăng xuất</a></li>
                </ul>
            </i>


            <i class="ti-search">
            <div class="search">
                    <form action="./search.php" method="post" >
                        <input type="text" name="search"
                    placeholder="Nhập tên sản phẩm"
                    class="input-field"
                   
                    required>
                        <button name="tim" type="submit"><i class="ti-search"></i></button>
                    </form>
                </div>



            </i>
        <a class="giohang" href="./cart.php">
            <i class="ti-shopping-cart"></i>
            <div class="soluong"><?php echo $count ?></div> 
        </a>
            
        </div>
    </div>
</div>
    
    </div>
    <div id="main">
        <div class="main-gioithieu">
        <div class="main-content">
            <h1>SINGNATURE BY THE COFFEE HOUSE</h1>
            <p>"Nơi quý khách được thưởng thức cà phê, món ăn bản sắc, không gian đa đạng"</p>

        </div>
        <div class="main-img">
            <img src="https://file.hstatic.net/1000075078/file/cao_thang_2_-_img_3688_55aa5913d31d46b7adc25ce7d2bf7633_1024x1024.jpg" alt="">

        </div>
    </div>
    

    </div>
    <div class="all">
    <div class="container">
        <div class="title">
            <h2>BLOG</h2>
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
    <div class="all">
    <div class="container">
        <div class="title">
            <h2>CoffeHolic</h2>
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

    
    <div id="footer">
        <div class="lienhe">
            <ul class="lh1">
                <li><a href="">THÔNG TIN HỖ TRỢ</a>
                    <ul class="lh2">
                        <li><a href="">Tìm hiểu về mua trả góp</a></li>
                        <li><a href="">Tìm trung tâm bảo hành hãng</a></li>
                        <li><a href="">Hướng dẫn mua hàng online</a></li>
                        <li><a href="">Giao hàng & thanh toán</a></li>
                    </ul>
                
                </li>
                <li><a href="">DỊCH VỤ KHÁCH HÀNG</a>
                    <ul class="lh2">
                        <li><a href="">Giới thiệu về công ty</a></li>
                        <li><a href="">Tuyển dụng</a></li>
                        <li><a href="">Gửi góp ý & khiếu nại</a></li>
                        <li><a href="">Tìm siêu thị</a></li>
                        <li><a href="">Liên hệ</a></li>
                    </ul>
                
                </li>
                <li><a href="">DỊCH VỤ & HỖ TRỢ</a>
                    <ul class="lh2">
                        <li><a href="">Chính sách giao hàng</a></li>
                        <li><a href="">Chính sách đổi sản phẩm</a></li>
                        <li><a href="">Chính sách bảo hành</a></li>
                        <li><a href="">Chính sách trả góp</a></li>
                        <li><a href="">Chính sách đổi trả</a></li>
                    </ul>
                
                </li>
                <li><a href="">BẢN TIN</a>
                  <p>Đăng kí thành viên để nhận bản tin mỗi ngày</p>
                  <div class="mail">
                    <input type="text" placeholder="Nhập email của bạn">
                    <Button>Gửi</Button>
                  </div>
                </li>
            </ul>

        </div>
        <div class="diachi">
            <div class="diachi-left">
                <div class="logo">
                    <div class="letter">T</div>
                    <div class="letter">H</div>
                    <div class="letter">E</div>
                    
                    <div class="letter lt">C</div>
                    <div class="letter">O</div>
                    <div class="letter">F</div>
                    <div class="letter">F</div>
                    <div class="letter">E</div>
                    <div class="letter">E</div>
                    
                    <div class="letter lt">H</div>
                    <div class="letter">O</div>
                    <div class="letter">U</div>
                    <div class="letter">S</div>
                    <div class="letter">E</div>
                     
         
                 </div>

            </div>
            <div class="diachi-mid">
                <div class="mid-comtent">
                    <i class="ti-location-pin"></i>
                    <p>Địa chỉ: Tân Triều, Thanh Trì, Hà Nội</p>


                </div>
                <div class="mid-comtent">
                    <i class="ti-headphone-alt"></i>
                    <p>Điện thoại : 0328443736</p>

                </div>
                <div class="mid-comtent">
                    <i class="ti-email"></i>
                    <p>Email: huatunglam1205@gmail.com</p>

                </div>

            </div>
            <div class="diachi-right">
                <div class="icon"><a href=""><i class="ti-facebook"></i></a></div>
                <div class="icon"><a href=""><i class="ti-instagram"></i></a></div>
                <div class="icon"><a href=""><i class="ti-youtube"></i></a></div>
                <div class="icon"><a href=""><i class="ti-google"></i></a></div>
                <div class="icon"><a href=""><i class="ti-twitter"></i></a></div>

            </div>

        </div>

    </div>
</body>
</html>