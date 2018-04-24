//window.onload = function () {
//    //    alert(1);
//    //    $(function () {
//    //        $("#printf").live("click", function () {
//    //            alert(12121);
//    //            //var $Object = $("div:checked").parents(".x-grid-row-selected").val();
//    //           // console.log($Object);

//    //            $("#comment").jqprint();
//    //        });

//    //    });

//}
function SelectNum(val) {
    var StuNum = document.getElementById("stuNum");
    var StuName = document.getElementById("stuName");
    var StuCourse = document.getElementById("stuCourse");
    var StuAddress = document.getElementById("stuAddress");
    var StuTel = document.getElementById("stuTel");

    StuNum.innerHTML = val[0].Id;
    StuName.innerHTML = val[0].Name;
    StuCourse.innerHTML = val[0].Course;
    StuAddress.innerHTML = val[0].Address;
    StuTel.innerHTML = val[0].Tel;

    $("#comment").jqprint();
}



