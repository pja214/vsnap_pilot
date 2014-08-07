
var ready;
ready = function() {

 // ...your javascript goes here...


//$(document).on('ready',function(){


	/*$('#booleanOutput').ready(function(){
		if ($('booleanOutput').val()) {
			($('booleanOutput').html('<img src="http://www.clipartbest.com/cliparts/eaT/eXa/eaTeXa6i4.png" height:75px width:75px/>'));
				} else { ($('booleanOutput').html('<img src="http://www.clker.com/cliparts/a/6/e/8/119498563188281957tasto_8_architetto_franc_01.svg.med.png" height:75px width:75px/>'));
			

	});
		}

$( "#interaction_recipient" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(this);
	if ($('#interaction_recipient').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});

		
		 */

$("h1:contains('Week 1')").html("The First Five Vsnaps and Week 1"); 

$("td:contains('true')").html('<img src="http://www.clipartbest.com/cliparts/eaT/eXa/eaTeXa6i4.png" height="30px" width="30px"/>');
$("td:contains('false')").html('<img src="http://www.clker.com/cliparts/a/6/e/8/119498563188281957tasto_8_architetto_franc_01.svg.med.png" height="30px" width="30px"/>'); 





};

$(document).ready(ready);
$(document).on('page:load', ready);
	/*
		$( "td" ).each.ready(function() {
			//checks to see the field contains text
			if ($('#interaction_url').val()) {
		
				//assigns a blue background if the field is filled, or makes it red if empty
				myElement.style.backgroundColor = "#8DD7D6";
			} else {myElement.style.backgroundColor = "#D78D8E";};
		});
	*/

