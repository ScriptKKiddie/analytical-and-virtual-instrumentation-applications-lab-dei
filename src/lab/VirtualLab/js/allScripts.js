function menuBarImage(id1, id2, id3, id4, id5, url, id6, id7, id8, id9) {
    if (id1 != null) {
        document.getElementById(id1).className = "current_page_item";
    }
    if (id2 != null) {
        document.getElementById(id2).className = "current_page_item_passed";
    }
    if (id3 != null) {
        document.getElementById(id3).className = "current_page_item_passed";
    }
    if (id4 != null) {
        document.getElementById(id4).className = "current_page_item_passed";
    }
    if (id5 != null) {
        document.getElementById(id5).className = "current_page_item_passed";
    }
    if (id6 != null) {
        document.getElementById(id6).className = "current_page_item_passed";
    }
    if (id7 != null) {
        document.getElementById(id7).className = "current_page_item_passed";
    }
    if (id8 != null) {
        document.getElementById(id8).className = "current_page_item_passed";
    }
    if (id9 != null) {
        document.getElementById(id9).className = "current_page_item_passed";
    }
    if (url != null) {
        window.open(url, 'TempFrame');
    }
}

function cssCall() {    
    var menu = parent.frames["menuFrame"];
    menu.document.getElementById("1").className = "current_page_item_passed";
    menu.document.getElementById("2").className = "current_page_item_passed";
    menu.document.getElementById("3").className = "current_page_item";
    menu.document.getElementById("4").className = "current_page_item_passed";
    menu.document.getElementById("5").className = "current_page_item_passed";
    menu.document.getElementById("6").className = "current_page_item_passed";
    menu.document.getElementById("7").className = "current_page_item_passed";
    menu.document.getElementById("8").className = "current_page_item_passed";
    menu.document.getElementById("9").className = "current_page_item_passed";
    
}

function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true					
	}

function ValidateForm(){
	var emailID=document.form1.TextBox3;
	var name=document.form1.TextBox1;
	if((name.value==null) || (name.value=="")){
	    alert("Please Enter your name");
	    name.focus();
	    return false;
	}
	if ((emailID.value==null)||(emailID.value=="")){
		alert("Please Enter your Email ID")
		emailID.focus()
		return false
	}
	if (echeck(emailID.value)==false){
		emailID.value=""
		emailID.focus()
		return false
	}
	return true
 }
