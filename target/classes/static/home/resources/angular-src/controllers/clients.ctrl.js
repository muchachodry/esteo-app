app.controller('clients',function($rootScope,$scope,$location,$http,clientStatusProvider){
	$scope.status = clientStatusProvider.status;
	
	$scope.getClients=function(e){
		$scope.status.searching=true;
		
		$http({
			method:'GET',
			url:'/osteo-app/api/allClients'
		}).then(
			function successCallback(response){
				$scope.data = response.data;
				$scope.status.searching=false;
				$scope.status.searched=true;	
			}	
		);
	};
	
	$scope.onFilterClients = function(event){
		var current_client_list = jQuery(".client-value");
		var term = jQuery(".scc-input").val();
		var regexp = new RegExp(term); //sa
		current_client_list.each(function( key, value){
			//if(value)
			}
		);
		
		

		
	}
	
	var run=function(){				
		// Initial search
		$scope.getClients();
	};
	
	var init=function init(){	
		run();
	};
	
	init();
});