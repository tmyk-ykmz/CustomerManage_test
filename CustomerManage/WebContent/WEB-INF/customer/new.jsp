<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="customer.CustomerBean" id="customer" scope="session" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>

<body>
    <h1>顧客管理</h1>
    <div class="main">
    <form name=form1 action="CustomerServlet" method="post">
        <h2>新規登録画面</h2>
        <table border="1">
            <tr>
                <td class="title">氏名</td>
                <td><input type="text" name="name" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">郵便番号</td>
                <td><input type="text" name="zip" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">住所1</td>
                <td><input type="text" name="address1" maxlength="100"></td>
            </tr>
            <tr>
                <td class="title">住所2</td>
                <td><input type="text" name="address2" maxlength="100"></td>
            </tr>
            <tr>
                <td class="title">TEL</td>
                <td><input type="text" name="tel" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">FAX</td>
                <td><input type="text" name="fax" maxlength="20"></td>
            </tr>
            <tr>
                <td class="title">E-mail</td>
                <td><input type="text" name="email" maxlength="20"></td>
            </tr>
        </table>
        <p>
            <button name="state" value="new_confirm" onClick="return funcConfirm()">送信</button>
            <input type="button" value="戻る" onclick="history.back()">
        </p>
    </form>
    </div>
</body>

<script type="text/javascript">
//TODO バリデーションチェック･alertダイアログ処理
        function funcConfirm() {
            if (document.form1.name.value == "") {
                alert("氏名が入力されていません");
                return false;
            }
            if (document.form1.tel.value == "") {
                alert("電話番号が入力されていません");
                return false;
            }
            if (!document.form1.zip.value.match(/^[0-9]{3}-[0-9]{4}$/)) {
                alert("郵便番号の形式が違います");
                return false;
            }
            if (!document.form1.tel.value.match(/^0\d{1,4}-\d{1,4}-\d{3,4}$/)) {
                alert("TELの形式が違います");
                return false;
            }
            if (!document.form1.fax.value.match(/^0\d{1,4}-\d{1,4}-\d{3,4}$/)) {
                alert("FAXの形式が違います");
                return false;
            }
            if (!document.form1.email.value.match(/^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/)) {
                alert("E-mailの形式が違います");
                return false;
            }
        }
    </script>
</html>
