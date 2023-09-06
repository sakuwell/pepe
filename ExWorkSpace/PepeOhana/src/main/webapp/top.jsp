<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.UsersInfoDto" %>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <title>Top | pepeohana</title>
</head>

<%
    // セッションを取得
	UsersInfoDto userInfoOnSession = (UsersInfoDto)session.getAttribute("LOGIN_INFO"); 
	boolean isLoggedIn = false; 
	String userName = "";
	//HttpSession mysession = request.getSession(true);

    // セッションが存在し、username属性もセットされている場合はログイン済み
    if (userInfoOnSession != null) {
		userName = userInfoOnSession.getUserName();	
        isLoggedIn = true;
    }
%>

<body>
	<!-- ログイン済ヘッダー -->
	<% if (isLoggedIn) { %>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">
            <img src="images/pepe_ohana_logo.png" alt="ページロゴ" width="auto" height="70">
          </a>
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
            	<%= userName %>さん
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="#">マイページ</a></li>
              <li><a class="dropdown-item" href="#">ログアウト</a></li>
            </ul>
          </div>
        </div>
    </nav>
    <% } else { %>
    <!-- 未ログインヘッダー -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
    	<div class="container-fluid">
        	<a class="navbar-brand" href="#">
            	<img src="images/pepe_ohana_logo.png" alt="ページロゴ" width="auto" height="70">
          	</a>
        	<div class="dropdown">
            	<button class="btn btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
             		 未ログイン
            	</button>
            	<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              		<li><a class="dropdown-item" href="#">ログイン</a></li>
              		<li><a class="dropdown-item" href="#">新規ユーザー登録</a></li>
            	</ul>
          	</div>
        </div>
    </nav>
    <% } %>
    <!-- 未ログインヘッダーここまで -->


    <!-- ヒーロー画像 -->
    <img src="#" class="img-fluid" alt="ヒーロー画像">

    <!-- ここから下　ページごとの内容 -->
    <div>
        <!-- 検索フォームゾーン -->
        <div class="container">
            <div class="h4 pb-2 mb-4 text-black border-bottom border-black">
                ねこまっち検索
            </div>
                <p>家族をさがしているネコがたくさんいます！</p>
            <!-- 猫カード -->
            <div class="row">
 				<!-- カードのコンテンツ -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <img src="images/ねこ_1.jpg" class="card-img-top" alt="猫画像" style="width:100%">
                        <div class="card-body">
                            <h5 class="card-title text-center">ぺぺ<small> ちゃん</small></h5>
                            <p class="card-text text-right">性別：男の子</p>
                            <p class="card-text text-right">生後：0歳5か月</p>
                            <p class="card-text text-right">描種：アメリカンショートヘアー</p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="stretched-link"></a>
                            </div>
                        </div>
                    </div>
                </div>
 				<!-- カードのコンテンツ -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <img src="images/ねこ_1.jpg" class="card-img-top" alt="猫画像" style="width:100%">
                        <div class="card-body">
                            <h5 class="card-title text-center">ぺぺ<small> ちゃん</small></h5>
                            <p class="card-text text-right">性別：男の子</p>
                            <p class="card-text text-right">生後：0歳5か月</p>
                            <p class="card-text text-right">描種：アメリカンショートヘアー</p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="stretched-link"></a>
                            </div>
                        </div>
                    </div>
                </div>
				<!-- カードのコンテンツ -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <img src="images/ねこ_1.jpg" class="card-img-top" alt="猫画像" style="width:100%">
                        <div class="card-body">
                            <h5 class="card-title text-center">ぺぺ<small> ちゃん</small></h5>
                            <p class="card-text text-right">性別：男の子</p>
                            <p class="card-text text-right">生後：0歳5か月</p>
                            <p class="card-text text-right">描種：アメリカンショートヘアー</p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="stretched-link"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- カードのコンテンツ -->
                <div class="col-6 col-md-4 col-lg-3">
                    <div class="card mb-3">
                        <img src="images/ねこ_1.jpg" class="card-img-top" alt="猫画像" style="width:100%">
                        <div class="card-body">
                            <h5 class="card-title text-center">ぺぺ<small> ちゃん</small></h5>
                            <p class="card-text text-right">性別：男の子</p>
                            <p class="card-text text-right">生後：0歳5か月</p>
                            <p class="card-text text-right">描種：アメリカンショートヘアー</p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="stretched-link"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ここまで　ページごとの内容 -->

    <!-- フッター -->
    <div class="text-center mt-4">
        <a class="icon-link icon-link-hover" href="#">
            TOPへ
        </a>
    </div>
    <div class="container">
        <footer class="mt-3 d-flex flex-wrap justify-content-between align-items-center my-4 border-top">
          <p class="col-md-4 mb-0 text-body-secondary">© 2023 pepeohana, Inc</p>
          <a href="#" class="col-md-4 d-flex align-items-center justify-content-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
            <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
          </a>
      
          <ul class="nav col-md-4 justify-content-end">
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">About</a></li>
          </ul>
        </footer>
    </div>
    <!-- フッター　ここまで -->

</body>
</html>