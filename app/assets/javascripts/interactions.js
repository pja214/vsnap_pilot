
var ready;
ready = function() {









/*
$(document).on('ready',function(){

$('#interaction_url').click(function(){
	
	alert('test');

	
	});4
*/

/* THIS SECTION HANDLES ASSIGNING COLORS ON INITIAL PAGE LOAD*/

$( "#interaction_recipient" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field1");
	if ($('#interaction_recipient').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_pilot_metric" ).ready(function() { 			
	var myElement = document.querySelector(".field2"); 		
		if( $('#interaction_pilot_metric[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});

$( "#interaction_url" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field3");
	if ($('#interaction_url').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});

$( "#interaction_viewed" ).ready(function() { 			
	var myElement = document.querySelector(".field4"); 		
		if( $('#interaction_viewed[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_response_sentiment" ).ready(function() { 			
	var myElement = document.querySelector(".field5"); 		
		if( $('#interaction_response_sentiment[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});

$( "#interaction_call_or_email_response" ).ready(function() { 			
	var myElement = document.querySelector(".field6"); 		
		if( $('#interaction_call_or_email_response[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});

$( "#interaction_comments" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field7");
	if ($('#interaction_comments').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});



/* THIS SECTION HANDLES THE ON-CHANGE CHECK THAT ASSIGNS COLORS AS FIELDS ARE FILLED */

$( "#interaction_recipient" ).change(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field1");
	if ($('#interaction_recipient').val()) {

		//alert('this updated when you tabbed away');
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_pilot_metric" ).change(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field2"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_pilot_metric[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});



$( "#interaction_url" ).change(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field3");
	if ($('#interaction_url').val()) {

		//alert('this updated when you tabbed away');
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});



$( "#interaction_viewed" ).change(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field4"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_viewed[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_response_sentiment" ).change(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field5"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_response_sentiment[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_response_other" ).change(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field6"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_response_other[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});



$( "#interaction_comments" ).change(function() {
	var myElement = document.querySelector(".field7");
		if ($('#interaction_comments').val()) {
			//	alert('True!');
			

			//alert('this updated when you tabbed away');
			myElement.style.backgroundColor = "#8DD7D6";
		};

});


/*

if ($('#interaction_comments').val() && ('#interaction_response').val() && ('#interaction_url').val()) { alert('true!') } else { alert('false!') };
  */


};

$(document).ready(ready);
$(document).on('page:load', ready);

//if interaction_url() &and& |or|
