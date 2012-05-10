$ ->
	$("#owner_tokens").tokenInput("/owners.json", {
	    crossDomain: false,
	    prePopulate: $("#owner_tokens").data("pre"),
	    theme: "facebook"
	  });