Density_result=document.getElementsByClassName("Density").value;
Density_result=0.0;
$(document).ready(function(){
    $(".element_sum").attr("value","0");
    $(".param").each(function () {
        this.value=0;
    });
    $(".Temperature").attr("value","0");
});
function clearNoNum(obj) {
    /*obj.value = obj.value.replace(/[^\d.]/g, "");
    obj.value = obj.value.replace(/\.{5,}/g, ".");
    obj.value = obj.value.replace(".", "$#$").replace(/\./g, "").replace("$#$", ".");
    obj.value = obj.value.replace(/^(\-)*(\d+)\.(\d\d).*$/, '$1$2.$3');
    if (obj.value.indexOf(".") < 0 && obj.value != "") {
        obj.value = parseFloat(obj.value);
    }*/
    //限制输入框小数位数
    obj.value = obj.value.replace(/^\D*(\d*(?:\.\d{0,5})?).*$/g, '$1');

}


//总费用合计计算
$(function() {
    //得到输入框的节点
    var suminput = document.querySelectorAll('.param');
    //遍历节点累加数据，input为节点变量
    $.each($(".param"), function(i, n) {
        var input = suminput[i];
        input.onkeyup = function() {
            clearNoNum(this); //限制文本框的输入为数字等
            var sum = 0;
            for (var i = 0; i < suminput.length; i++) {
                var inpVal = parseFloat($(suminput[i]).val() == null || $(suminput[i]).val() == "" ? 0 : $(suminput[i]).val());
                sum += inpVal;
            }
            $(".element_sum").val(sum.toFixed(5))
        }
    })
});

$(function () {
    $(".clear").click(function () {
       $(".param").each(function () {
                this.value=0;
       })
        $(".Temperature").value=0;
    })

});
