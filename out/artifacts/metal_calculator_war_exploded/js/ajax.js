$(document).ready(function () {
    $(".submit_button").click(function () {
        var inputdata = $("#element_param").serialize();
        $.ajax({
            type:'post',
            async:"true",
            url:"http://localhost:8088/metal_calculator/Servlet",
            cache: false,
            data:inputdata,
            success:function(data){
                var p=data.split(",")
                $("#Density").html(p[0]);
                $("#Viscosity").html(p[1]);
            },
            error:function(){
                alert("请求失败");
            }
        })
    })
});
