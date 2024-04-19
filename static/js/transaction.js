$(document).ready(function(){
	// $('#addBook').click(function(){
	// 	$('#bookModal').modal({
	// 		backdrop: 'static',
	// 		keyboard: false
	// 	});		
	// 	$("#bookModal").on("shown.bs.modal", function () {
	// 		$('#bookForm')[0].reset();				
	// 		$('.modal-title').html("<i class='fa fa-plus'></i> Add book");					
	// 		$('#action').val('addBook');
	// 		$('#save').val('Save');
	// 	});
	// });		
	// Handle search functionality
    $('#searchTransaction').click(function(){
        var searchTerm = $('#searchTransactionid').val();
        window.location.href = `/transaction?search=${searchTerm}`;
    });
});