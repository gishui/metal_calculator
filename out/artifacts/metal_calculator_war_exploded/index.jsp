<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>液体金属属性计算</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
  </script>
  <script type="text/javascript" src="js/init.js"></script>
  <script type="text/javascript" src="js/ajax.js"></script>

</head>
<body>
<%--<button id="btn">ajaxrequest</button>--%>
<h1 align="center">Liquid Metals Thermophysical Property Caculator</h1>
<%--action="${pageContext.request.contextPath}/Servlet" method="post"--%>

    <div class="main">
        <form method="post" id="element_param">
        <div class="element_input">
            <table class="normal" align="center" cellpadding="1px" border="1">
                <tbody>
                <tr height="60px">
                    <td valign="center" align="center" width="62">
                        <div>H</div>
                    </td>
                    <td></td>
                    <td colspan="2" align="center"><button class="clear">Clear</button></td>
                    <td colspan="10" class="element_input_text" align="center">
                        <p>composition input(atom %)</p>
                    </td>
                    <td colspan="3" align="center"><label class="Sum_text">Sum: </label><input type="text" class="element_sum" name="53"  readonly="readonly"></td>
                    <td valign="center" align="center" width="61">
                        <div>He</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Li</div><input name="1" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Be</div><input name="2" type="text" class="param" size="1"></td>
                    <td colspan="10" rowspan="2"><br></td>
                    <td valign="center" align="center" width="62" class="can">
                        <div>B</div><input name="3" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>C</div><input name="4" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>N</div>
                    </td>
                    <td valign="center" align="center" width="64">
                        <div>O</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>F</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Ne</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Na</div><input name="5" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Mg</div><input name="6" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Al</div><input name="7" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>Si</div><input name="8" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>P</div><input name="9" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>S</div><input name="10" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>Cl</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Ar</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="62" class="can">
                        <div>K</div><input name="11" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Ca</div><input name="12" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>Sc</div>
                    </td>
                    <td valign="center" align="center" width="63" class="can">
                        <div>Ti</div><input name="13" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="59" class="can">
                        <div>V</div><input name="14" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="65" class="can">
                        <div>Cr</div><input name="15" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Mn</div><input name="16" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Fe</div><input name="17" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="57" class="can">
                        <div>Co</div><input name="18" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Ni</div><input name="19" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="59" class="can">
                        <div>Cu</div><input name="20" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Zn</div><input name="21" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Ga</div><input name="22" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>Ge</div><input name="23" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>As</div>
                    </td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>Se</div><input name="24" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>Br</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Kr</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Rb</div><input name="25" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Sr</div><input name="26" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>Y</div>
                    </td>
                    <td valign="center" align="center" width="63" class="can">
                        <div>Zr</div><input name="27" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="59" class="can">
                        <div>Nb</div><input name="28" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="65" class="can">
                        <div>Mo</div><input name="29" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>Tc</div>
                    </td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Ru</div><input name="30" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="57" class="can">
                        <div>Rh</div><input name="31" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Pd</div><input name="32" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="59" class="can">
                        <div>Ag</div><input name="33" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Cd</div><input name="34" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="62" class="can">
                        <div>In</div><input name="35" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>Sn</div><input name="36" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Sb</div><input name="37" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>Te</div><input name="38" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61">
                        <div>I</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Xe</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Cs</div><input name="39" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Ba</div><input name="40" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" style="font-size: 5px">
                        <div>La-Lu</div>
                    </td>
                    <td valign="center" align="center" width="63" class="can">
                        <div>Hf</div><input name="41" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="59" class="can">
                        <div>Ta</div><input name="42" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="65" class="can">
                        <div>W</div><input name="43" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Re</div><input name="44" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Os</div><input name="45" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="57" class="can">
                        <div>Ir</div><input name="46" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Pt</div><input name="47" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="59" class="can">
                        <div>Au</div><input name="48" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="60" class="can">
                        <div>Hg</div><input name="49" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="62" class="can">
                        <div>Tl</div><input name="50" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64" class="can">
                        <div>Pb</div><input name="51" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="61" class="can">
                        <div>Bi</div><input name="52" type="text" class="param" size="1"></td>
                    <td valign="center" align="center" width="64">
                        <div>Po</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>At</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Rn</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="62">
                        <div>Fr</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Ra</div>
                    </td>
                    <td valign="center" align="center" width="61" style="font-size: 5px">
                        <div>Ac-Lr</div>
                    </td>
                    <td valign="center" align="center" width="63">
                        <div>Rf</div>
                    </td>
                    <td valign="center" align="center" width="59">
                        <div>Db</div>
                    </td>
                    <td valign="center" align="center" width="65">
                        <div>Sg</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Bh</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Hs</div>
                    </td>
                    <td valign="center" align="center" width="57">
                        <div>Mt</div>
                    </td>
                    <td valign="center" align="center" width="61">
                        <div>Ds</div>
                    </td>
                    <td valign="center" align="center" width="59">
                        <div>Rg</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Cn</div>
                    </td>
                    <td><br></td>
                    <td colspan="5" align="center"><label class="Temperature_text">Temperatrue(K): </label><input name="0" type="text" class="Temperature" size="3"></td>
                </tr>
                </tbody>
            </table>
            <table class="others" align="center" cellpadding="2px" border="1" cellspacing="2px">
                <tbody>
                <tr>
                    <td valign="center" align="center" width="60">
                        <div>La</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Ce</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Pr</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Nd</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Pm</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Sm</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Eu</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Gd</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Tb</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Dy</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Ho</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Er</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Tm</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Yb</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Lu</div>
                    </td>
                </tr>
                <tr>
                    <td valign="center" align="center" width="60">
                        <div>Ac</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Th</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Pa</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>U</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Np</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Pu</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Am</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Cm</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Bk</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Cf</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Es</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Fm</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Md</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>No</div>
                    </td>
                    <td valign="center" align="center" width="60">
                        <div>Lr</div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        </form>

    <div class="result_region">
        <!--计算按钮-->
        <input type="submit" value="calculate" class="submit_button">
        <p class="result_title">Results</p>
        <div id="Property">
            <div class="re_div">
                <div style="float: left"><label class="result_label">Density(g/cm³):</label></div>
                <div style="float: left;margin-left: 17px"><textarea id="Density" readonly="readonly"></textarea></div>
            </div><br><br><br>
            <div class="re_div">
                <div style="float: left"><label class="result_label">Viscosity(mPa·s):</label></div>
                <div style="float: left;margin-left: 5px"><textarea id="Viscosity" readonly="readonly"></textarea></div>
            </div>

        </div>
    </div>
    <div class="info">
      <p class="About_Title">About</p><br>
      <p class="About">Some infomation about this</p>
    </div>
  </div>

</body>
</html>
