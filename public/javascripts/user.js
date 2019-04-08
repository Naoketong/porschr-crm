const PAGE = {
	init:function(){
		this.bind();
	},
	bind:function(){
		$('#pahe-user-tuichu').bind('click',this.pahe);
	},
	pahe:function(){
	   location.href = '/admin/login'
	},
}
PAGE.init()