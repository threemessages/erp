function formSubmit(url,target){
	form = document.forms[0];
	form.target = target;
	form.action = url;
	form.submit();
}
