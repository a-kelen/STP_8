<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VectorForm.aspx.cs" Inherits="STP_8.VectorForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script>
        function Button1_onclick() {
            let x = document.getElementById('x').value;
            let y = document.getElementById('y').value;
            let z = document.getElementById('z').value;
            x = parseFloat(x);
            y = parseFloat(y);
            z = parseFloat(z);
            console.log(x, y, z);
            if (isNaN(x) || isNaN(y) || isNaN(z)) {
                alert('Invalid input');
                return;
            }

            var service = new STP_8.VectorLengthCalculator();
            service.CalculateVectorLength(x, y, z, onSuccess, null, null);
        }
        function onSuccess(result) {
            alert(`Length of vector is equal to ${result}`);
        }
    </script>
    <style>
        body {
            margin: 2em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                <Services>
                    <asp:ServiceReference Path="VectorLengthCalculator.svc" />
                </Services>
            </asp:ScriptManager>
            <asp:Label ID="Label1" runat="server" Text="Input vector coordinates"></asp:Label>
            <hr />
            <input id="x" type="text" placeholder="X"/>
            <input id="y" type="text" placeholder="Y"/>
            <input id="z" type="text" placeholder="Z"/>
        </div>
        <hr />
    </form>
    <p>
        <input id="Button1" type="button" value="Calculate" onclick="return Button1_onclick()" /></p>
</body>
</html>
