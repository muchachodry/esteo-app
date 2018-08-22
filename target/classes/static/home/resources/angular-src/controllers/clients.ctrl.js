app.controller('clients',function($rootScope,$scope,$location,$http,clientStatusProvider){
	$scope.status = clientStatusProvider.status;
	
	/**
	 * get all CLients func
	 */
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
	
	/**
	 * To filter clients on left bar
	 */
	$scope.onFilterClients = function(event){		
		var current_client_list = jQuery(".client-value");
		var term = jQuery(".scc-input").val();
		var regexp = new RegExp(term); //sa
		current_client_list.each(function( key, value){
			var elemval = value.innerText.toLowerCase();
			(elemval.indexOf(term) >= 0) ? $(this).show() : $(this).hide();     
		});
	};
	
	/**
	 * Return and append client info in the view
	 */
	$scope.onShowClientInfo = function(event, cliente){
		$scope.status.select = cliente.id;
		$scope.data.selectedClient = cliente;
		console.log($scope.data.selectedClient);
	};
		
	/**
	 * Init de client controller
	 */
	var run=function(){				
		// Initial search
		$scope.getClients();
	};
	
	var init=function init(){	
		run();
	};
	
	init();
});