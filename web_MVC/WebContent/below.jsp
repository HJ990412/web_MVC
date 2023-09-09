<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
    BODY {margin-left: 0; margin-top: 100; margin-right: 0; background-color: white;
          background-image: url("background.png");
          background-repeat: no-repeat;
          background-position: center}
        a { text-decoration: none; }
        table { width: 600px; border-collapse: collapse; table-layout: auto; }
        td { width: 170px; text-align: center; }
        .td1 { border: solid thick #cccccc; }
        .margin1 { margin: 20pt 300pt 100pt 320pt; background-color: #cccccc; }
        div { width: 170pt; height: 170pt; }
        .position1 { z-index: 1; position: absolute; top: 180pt; left: 200pt; background-color: #0066ff; }
        .position2 { z-index: 2; position: absolute; top: 150pt; left: 410pt; background-color: #ff9933; }
        .position3 { z-index: 3; position: absolute; top: 180pt; left: 630pt; background-color: #00cc00; }
        .position4 { z-index: 4; position: absolute; top: 150pt; left: 840pt; background-color: #cc00ff; }
        .range1 { height: 60%; background-image: url("background.png"); }
        div { width: 170pt; height: 170pt; }
        
        .range2 { height: 30%; margin-top: 600px; margin-left: 400px; margin-right: 400px; }
        .test1 { text-align: center; font-size: 17pt; color: white; }
        .test2 { text-align: center; font-size: 11pt; color: white; }
    </style>
    <script language="JavaScript">
        function MouseOver(cell, newcolor) {
            cell.bgColor = newcolor;
        }

        function MouseOut(cell, newcolor) {
            cell.bgColor = newcolor;
        }
    </script>
</head>
<body>
    <p class="range1">
        <a href="sub1.html" target="below">
            <div class="position1">
                <p class="test1"><br>빅데이터 소개</p>
                <hr width="50%" color="white">
                <br>
                <p class="test2">빅데이터에 대해 소개합니다.</p>
            </div>
        </a>
        <a href="sub2.html" target="below">
            <div class="position2">
                <p class="test1"><br>빅데이터 분석사례</p>
                <hr width="50%" color="white">
                <br>
                <p class="test2">빅데이터 분석를 사례별로<br>소개합니다.</p>
            </div>
        </a>
        <a href="sub3.html" target="below">
            <div class="position3">
                <p class="test1"><br>빅데이터 분석과정</p>
                <hr width="50%" color="white">
                <br>
                <p class="test2">빅데이터 분석과정을<br>소개합니다.</p>
            </div>
        </a>
        <a href="sub4.html" target="below">
            <div class="position4">
                <p class="test1"><br>자료실</p>
                <hr width="50%" color="white">
                <br>
                <p class="test2">공유된 자료는 자유롭게<br>이용 가능합니다.</p>
            </div>
        </a>
    </p>
    <p class="range2">
       <p class="margin1">
        <table align="center">
            <tr>
                <td class="td1" onmouseover="MouseOver(this,'#3333ff');" onmouseout="MouseOut(this,'#cccccc');">
                    <p><a href="http://www.gov.kr/portal/main" target="_blank"><img src="link1.jpg"></a></p>
                </td>
                <td class="td1" onmouseover="MouseOver(this,'#3333ff');" onmouseout="MouseOut(this,'#cccccc');">
                    <p><a href="https://www.open.go.kr/" target="_blank"><img src="link2.jpg"></a></p>
                </td>
                <td class="td1" onmouseover="MouseOver(this,'#3333ff');" onmouseout="MouseOut(this,'#cccccc');">
                    <p><a href="http://kosis.kr/index/index.do" target="_blank"><img src="link3.jpg"></a></p>
                </td>
                <td class="td1" onmouseover="MouseOver(this,'#3333ff');" onmouseout="MouseOut(this,'#cccccc');">
                    <p><a href="https://www.data.go.kr/" target="_blank"><img src="link4.jpg"></a></p>
                </td>
            </tr>
        </table>
    </p>
    </p>
</body>
</html>