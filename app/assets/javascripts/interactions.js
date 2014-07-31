

$(document).on('ready',function(){





/*$('#interaction_url').click(function(){
	
	alert('test');

	
	});4
*/

/* THIS SECTION HANDLES ASSIGNING COLORS ON INITIAL PAGE LOAD*/

$( "#interaction_task" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field1");
	if ($('#interaction_task').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});



$( "#interaction_url" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field2");
	if ($('#interaction_url').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});

$( "#interaction_complete" ).ready(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field3"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_complete[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_response" ).ready(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field4"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_response[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_comments" ).ready(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field5");
	if ($('#interaction_comments').val()) {

		//assigns a blue background if the field is filled, or makes it red if empty
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});




/* THIS SECTION HANDLES THE ON-CHANGE CHECK THAT ASSIGNS COLORS AS FIELDS ARE FILLED */

$( "#interaction_task" ).change(function() {
	//checks to see the field contains text
		var myElement = document.querySelector(".field1");
	if ($('#interaction_task').val()) {

		//alert('this updated when you tabbed away');
		myElement.style.backgroundColor = "#8DD7D6";
	} else {myElement.style.backgroundColor = "#D78D8E";};
});



$( "#interaction_url" ).change(function() {

		if ($('#interaction_url').val()) {
			//	alert('True!');
			var myElement = document.querySelector(".field2");

			//alert('this updated when you tabbed away');
			myElement.style.backgroundColor = "#8DD7D6";
		};

});

$( "#interaction_complete" ).change(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field3"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_complete[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_response" ).change(function() { 			//this will pull item data 0 from the array
	var myElement = document.querySelector(".field4"); 		//this will pull the field from item data 1 array in the finalized setup
		if( $('#interaction_response[type="checkbox"]').first().is(':checked') ){
   			 myElement.style.backgroundColor = "#8DD7D6";}
   			 else {myElement.style.backgroundColor = "#D78D8E";};
});


$( "#interaction_comments" ).change(function() {
	if ($('#interaction_comments').val()) {
		var myElement = document.querySelector(".field5");

		myElement.style.backgroundColor = "#8DD7D6";
	};
});





/*

if ($('#interaction_comments').val() && ('#interaction_response').val() && ('#interaction_url').val()) { alert('true!') } else { alert('false!') };
  */

});

//if interaction_url() &and& |or|
