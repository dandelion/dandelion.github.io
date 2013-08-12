/* Default class modification */
$.extend( $.fn.dataTableExt.oStdClasses, {
	"sWrapper": "dataTables_wrapper form-inline"
} );

$(document).ready(function () {
	
	var search = "";
	if ( window.location.hash !== "" ) {
		search = window.location.hash.substring( 1 );
	}
	
	var oTable = $('#tableReference').dataTable( {
		"sDom": "t",
		"bSortClasses": false,
		"bPaginate": false,
		"aaSorting": [[0,'asc']],
		"fnInitComplete": function () {
//			this.fnAdjustColumnSizing();
			if(search != "") {
				$('div.dataTables_filter input').focus();
			}
		}
	});
	
	if($('#customFilter')){
		$('#customFilter').keyup(function(){
			oTable.fnFilter($(this).val(), 0);
		});
		
//		if(search != "") {
//			$('#customFilter').val(search);
//			$('#customFilter').focus();
//			oTable.fnFilter(search, 0);
//		}
	}
});