
$(function () {
    var ename = $("#ename");
    var eage = $("#eage");
    var etime = $("#etime");
    var estate = $("#estate");

    $("#sb").click(function () {

        if (ename.val() === null || ename.val() === "") {
            alert("请填写配送员的名字~");
            return;
        }
        if (eage.val() === null || eage.val() === "") {
            alert("请填写配送员的年龄~");
            return;
        }
        if (etime.val() === null || etime.val() === "") {
            alert("请填写配送员的工龄~");
            return;
        }
        if (estate.val() === null || estate.val() === "") {
            alert("请填写配送员的状态~");
            return;
        }

        $("form").submit();
    });

    $("#back").click(function () {
        history.back(-1);
    })
});