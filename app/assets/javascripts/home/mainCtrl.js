uplearnApp.controller('MainCtrl',[
	'$scope', 
	'links',
	'$location',
	'$state',
	'AuthService',
	function($scope, links, $location,$state,AuthService){	
		
		window.myscope = $scope;
		
		$scope.links = links.links;
		$scope.groupedLinks = links.groupedLinks;

		$scope.addLink = function() {
			if ($scope.title==="" || !$scope.title || $scope.url==="" || !$scope.url) { return; }

			links.create({
				title: $scope.title,
				body: $scope.body,
				url: $scope.url,
				upvotes: 0 
			});
			
			$scope.title = "Title";
			$scope.body = "Body";
			$scope.url = "Url";
			$location.url("/home");
		};

		$scope.upvoteButtonStatus = true;

		$scope.upvoteLink = function(link) {
			event.stopPropagation();
			$scope.upvoteButtonStatus ? links.upvote(link) : links.downvote(link);
			$scope.upvoteButtonStatus = !$scope.upvoteButtonStatus;
		};

		$scope.showLink = function(link){
			event.stopPropagation();
			$location.url("/links/" + link.id);
		};

		// format date
		$scope.showDate = function(date){
			d = Date.new(date);
			return d.toDateString();
		};



		// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		// the following not used at present, some workings to filter links by user
		// the following calls the AuthService I created to get current user (but that is not working yet)
		$scope.loggedInUser = AuthService.currentUser();

		// filter method to get user 1 links only
		var linksUser1 = function(obj){
			return obj.user.id == 1;
		};
		user_links1 = $scope.links.filter(linksUser1);

		// filter method to get user 2 links only
		var linksUser2 = function(obj){
			return obj.user.id == 2;
		};
		user_links2 = $scope.links.filter(linksUser2);
		// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


	}
]);