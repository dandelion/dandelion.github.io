/* Set the defaults for DataTables initialisation */
$.extend( true, $.fn.dataTable.defaults, {
	"sDom": "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>",
	"sPaginationType": "bootstrap",
	"oLanguage": {
		"sLengthMenu": "_MENU_ records per page"
	}
} );


/* Default class modification */
$.extend( $.fn.dataTableExt.oStdClasses, {
	"sWrapper": "dataTables_wrapper form-inline"
} );

$(document).ready(function () {
	
	var search = "";
	if ( window.location.hash !== "" ) {
		search = window.location.hash.substring( 1 );
	}
	
	$('#tableReference').dataTable( {
		"sDom": "<'row'<'span6'l><'span6'f>r>t<'row'<'span6'i><'span6'p>>",
		"bInfo" : false,
		"bPaginate": false,
		"bLengthChange" : false,
		"bSortClasses": false,
		"aaSorting": [[0,'asc']],
		"oSearch": { "sSearch": search },
		"fnInitComplete": function () {
			this.fnAdjustColumnSizing();
			if(search != "") {
				$('div.dataTables_filter input').focus();
			}
		}
	});
	
	if(search != "") {
		$('html, body').animate({
	        scrollTop: $("#reference").offset().top
	    }, 1000);
	}
});