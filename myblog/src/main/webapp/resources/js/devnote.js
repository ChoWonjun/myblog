/*
 *	layout 
 */
(window.onload = function() {
  var obj1 = document.getElementById('main'); 
  var obj2 = document.getElementById('right'); 
 
  if(obj1!=null && obj2!=null) {
	  var obj1_height = obj1.offsetHeight;
	  var obj2_height = obj2.offsetHeight;
	
	  if(obj1_height > obj2_height) { obj2.style.height = obj1_height + 'px'; }
	  else { obj1.style.height = obj2_height + 'px'; }
  }
})();


/*
 *	article
 */

function delete_article() {
	var flag = confirm('정말 삭제하시겠습니까?');
	if(flag) document.delete_article_form.submit();
}

function update_article() {
	document.update_article_form.submit();
}

var imgObj = new Image();
function showImgWin(imgName) {
  imgObj.src = imgName;
  setTimeout("createImgWin(imgObj)", 100);
}
function createImgWin(imgObj) {
  if (! imgObj.complete) {
    setTimeout("createImgWin(imgObj)", 100);
    return;
  }
  imageWin = window.open("", "imageWin",
    "width=" + imgObj.width + ",height=" + imgObj.height);
  imageWin.document.write("<html><body style='margin:0'>");
  imageWin.document.write("<a href=javascript:window.close()><img src='" + imgObj.src + "' border=0></a>");
  imageWin.document.write("</body><html>");
  imageWin.document.title = imgObj.src;
}

$(function() {
	$('#articleContents img').click(function(){
		showImgWin(this.src)
	});
})