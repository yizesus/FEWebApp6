<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="FEWebApp8.shoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giỏ hàng</title>
    <script lang="javascript">
    <%--<script type="text/html"> --%>
        function calculate(){
         var dg= parseFloat(window.document.getElementById("dg").value);
        var sl=parseFloat(window.document.getElementById("sl").value);
        window.document.getElementById("tt").value=dg*sl;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server" method="post">
            Đơn giá <input type="number" id="dg" min="100" max="500" step="100" value="200" />
            Số lượng <input type="number" id="sl" min="1" max="9" step="1" value="1" 
                <%--onkeyup="tt.value = parseFloat(dg.value)*parseFloat(sl.value)"
                onchange="tt.value = parseFloat(dg.value)*parseFloat(sl.value)"--%>
                onchange="calculate();"
                onkeyup="calculate();"
                />
            Thành tiền <input type="number" id="tt"  readonly/>

    </form>
</body>
</html>
