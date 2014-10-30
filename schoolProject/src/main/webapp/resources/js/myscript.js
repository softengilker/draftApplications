PrimeFaces.locales['tr'] = {
    closeText: 'kapat',
    prevText: 'geri',
    nextText: 'ileri',
    currentText: 'bugün',
    monthNames: ['Ocak','Şubat','Mart','Nisan','Mayıs','Haziran','Temmuz','Ağustos','Eylül','Ekim','Kasım','Aralık'],
    monthNamesShort: ['Oca','Şub','Mar','Nis','May','Haz', 'Tem','Ağu','Eyl','Eki','Kas','Ara'],
    dayNames: ['Pazar','Pazartesi','Salı','Çarşamba','Perşembe','Cuma','Cumartesi'],
    dayNamesShort: ['Pz','Pt','Sa','Ça','Pe','Cu','Ct'],
    dayNamesMin: ['Pz','Pt','Sa','Ça','Pe','Cu','Ct'],
    weekHeader: 'Hf',
    firstDay: 1,
    isRTL: false,
    showMonthAfterYear: false,
    yearSuffix: '',
    timeOnlyTitle: 'Zaman Seçiniz',
    timeText: 'Zaman',
    hourText: 'Saat',
    minuteText: 'Dakika',
    secondText: 'Saniye',
    ampm: false,
    month: 'Ay',
    week: 'Hafta',
    day: 'Gün',
    allDayText : 'Tüm Gün'
};

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
