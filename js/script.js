// 标签按钮点击事件处理函数
// 使右边栏内容区域显示所点击内容
function switchTag(e){
    var target = e.target;
    console.log(target.textContent.toLowerCase());
    var contents = document.getElementsByName('content');
    for(var i=0;i<contents.length;i++){
        console.log(contents[i].style);
        console.log(contents[i].id);
        if(target.textContent.toLowerCase().trim()!=contents[i].id)
            contents[i].style.display='none';
        else
            contents[i].style.display='';
    }
}