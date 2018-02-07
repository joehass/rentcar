var con = document.getElementById('con');
    var talk = document.getElementById('talk');
    document.onkeyup = function (e) {//键盘事件监听回车键
        var ev = e || event;
        if(ev.keyCode == 13){
            if(con.value == ''){
                alert('内容不能为空！');
            }else{
                sendMsg();
                con.value = '';
            }
        }
    }
    function fs(){
    	if(con.value == ''){
            alert('内容不能为空！');
        }else{
            sendMsg();
            con.value = '';
        }
    }
    function qp(){
    	$("#talk").text("");
    }
    function fm1(){
    	 $("#con").val($("#m1").text());
    }
    function fm2(){
    	 $("#con").val($("#m2").text());
    }
    function fm3(){
    	 $("#con").val($("#m3").text());
    }

    /* 声音特效 */
    function fmusic(){
        var lss = $("#lss");
    	$('<audio id="chatAudio"><source src="music/6571.mp3" type="audio/ogg"></audio>').appendTo(lss);//载入声音文件 
        $('#chatAudio')[0].play();
    }
    
    function sendMsg(){
    	var now=new Date() ;
        var newLi = document.createElement('li');
        newLi.className = '我';
        var currentDate = 1900+now.getYear()+"-"+(now.getMonth()+1)+"-"+now.getDate()+" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();
        newLi.innerHTML = '['+currentDate+']' +'我:'+con.value;
        talk.appendChild(newLi);
        var xhr = null;//新建一个变量来存储ajax对象
        if(window.XMLHttpRequest){//创建ajax对象兼容写法来兼容一般浏览器和ie浏览器 ajax链接第一步
            xhr = new XMLHttpRequest();
        }else{
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }
        //拼接url
        var Url='http://www.tuling123.com/openapi/api?key=fb6b7bcfbe52fccdb7f5d752a3088f75&info='+con.value+'&userid=1234567';
        xhr.open('get',Url,true);//打开和服务器链接 使用get方法异步传送
        xhr.send();//发送信息
        xhr.onreadystatechange = function () {//监测链接状态
            if(xhr.readyState == 4){//判断是否是链接最后一个阶段
                if(xhr.status == 200){//判断是否链接成功
                    /*解析返回的信息*/
                    var str = JSON.parse(xhr.responseText);
                    var newLi2 = document.createElement('li');
                    newLi2.className = '小风';
                    var currentDate = 1900+now.getYear()+"-"+(now.getMonth()+1)+"-"+now.getDate()+" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds();
                    newLi2.innerHTML = '['+currentDate +']'+ '小风:'+str.text;
                    talk.appendChild(newLi2);
                }else{
                    alert("连接失败，请检查网络！");
                }
            }
        }
       /* fmusic();*/
    }
