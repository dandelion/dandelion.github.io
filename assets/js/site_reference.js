/* Default class modification */
$.extend( $.fn.dataTableExt.oStdClasses, {
	"sWrapper": "dataTables_wrapper form-inline"
} );

$(document).ready(function () {
	
	var oTable = $('#tableReference').dataTable( {
		"sDom": "t",
		"bSortClasses": false,
		"bPaginate": false,
		"aaSorting": [[0,'asc']]
		/*,
		"fnInitComplete": function () {
			this.fnAdjustColumnSizing();
		}*/
	});
	
	if($('#customFilter')){

		$('#customFilter').keyup(function(){
			oTable.fnFilter($(this).val(), 0);
		});
		
		var search = "";
		if ( window.location.hash !== "" ) {
			search = window.location.hash.substring( 1 );
			
			// Update and focus input
			$('#customFilter').val(search);
			$('#customFilter').focus();
			
			// Apply filter 
			oTable.fnFilter(search, 0);
			
			// Move window to the right section
			$('html, body').animate({scrollTop: $('#tableReference').offset().top}, 1500);
		}
	}
});