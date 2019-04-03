const PAGE = {
  init: function() {
    this.bind();
  },
  bind: function() {
    $('#userSubmit').bind('click',this.handleSubmit);
  },
  handleSubmit: function() {
    let strUrl = window.location.href;
    let arrUrl = strUrl.split("/");
    let id = arrUrl[arrUrl.length-2];
    // let id = strPage.replace(/[^0-9]/ig,"");
    let name = $('#userName').val();
    let phone = $('#userPhone').val();
    let password = $('#userPassword').val();
    let role = $('#userRole').val();
    role = Number(role)
    if(!name || !phone || !password || !role){
      alert('请输入必要参数a');
      return
    }
    // console.log(id)

    $.ajax({
        url: '/api/user/' + id,
        data: { name, phone, password, role },
        type: 'PUT',
        beforeSend: function() {
          $("#userSubmit").attr("disabled",true);

        },

        success: function(data) {
          if(data.code === 200){
            alert('编辑成功！')
            location.href = '/admin/user'
          }else{
            alert(data.message)
          }
        },
        error: function(err) {
          console.log(err)
        },
        complete: function() {
          $("#userSubmit").attr("disabled",false);
        }
    })
  }
}

PAGE.init();