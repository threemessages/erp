function formSubmit(url,target){
	if(!target){
		target = '_self';
	}
	form = document.forms[0];
	form.target = target;
	form.action = url;
	form.submit();
}
