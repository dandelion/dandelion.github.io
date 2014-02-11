var addthis_config = {
	"data_track_addressbar" : true
};

$(function() {
	$("#words").wordsrotator({
		animationIn : "fadeInRight",
		animationOut : "fadeOutLeft",
		speed : 3000,
		words : [ 'simpler', 'enjoyable!', 'faster!!' ]
	});
});