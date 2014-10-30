
function handleSubmitAdd(xhr, status, args ) {
	dialog = jQuery( '#addDialog' );
	
    if ( args.validationFailed ) {  
        dialog.effect("shake", { times:3 }, 100);  
    } else {
        dialog.hide();  
    }  		
}

function handleSubmitRequest(xhr, status, args, dialogName, formName ) {  
    dialog = jQuery('#' + dialogName );
    
    if ( args.validationFailed ) {  
        dialog.effect("shake", { times:3 }, 100);  
    } else {
        clearForm( formName );
        dialog.hide();  
    }  
}

function clearForm( formName ) {
    jQuery('#' + formName ).each(function(){ this.reset(); });
}    
