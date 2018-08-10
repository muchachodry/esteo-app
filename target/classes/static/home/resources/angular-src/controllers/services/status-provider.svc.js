app.factory('clientStatusProvider',function(){
	var original_status={
		searched:false,
		searching:false,
		error:false,
		hasResults:false,
		select:null
	}
	var status=angular.copy(original_status);
	
	return{
		status:status
	}
});