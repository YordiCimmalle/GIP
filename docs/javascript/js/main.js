var invoerVak = document.getElementById("invoeren");

var berekenButton = document.getElementById("button");

berekenButton.addEventListener("click", function() {
	swal({   title: "Bereken de delay!",
	text: "Geef de afstand (in m):",
	type: "input",
	showCancelButton: true,
	closeOnConfirm: false,
	animation: "slide-from-top",
	inputPlaceholder: "Geef de afstand..." },
	function(inputValue){
  	var afstand = inputValue;

  	var formule = afstand/0.343;

  	var resultaat = formule.toFixed(2);

  	if (inputValue === false)
  	return false;
  	if (inputValue === "")
  	{
			swal.showInputError("Het vak is leeg. Geef een afstand op!");
  		return false
  	}
  	swal("Resultaat", "De delay bedraagd  " + resultaat + " m/s");
  });
});
