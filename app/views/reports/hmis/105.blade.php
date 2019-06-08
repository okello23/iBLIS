@extends("layout")
@section("content")
<style type="text/css">
@import url('https://themes.googleusercontent.com/fonts/css?kit=fpjTOVmNbO4Lz34iLyptLUXza5VhXqVC6o75Eld_V98');
.lst-kix_list_4-1>li {
	counter-increment:lst-ctn-kix_list_4-1
}
ol.lst-kix_list_7-0 {
	list-style-type:none
}
ol.lst-kix_list_9-0.start {
	counter-reset:lst-ctn-kix_list_9-0 0
}
.lst-kix_list_8-1>li {
	counter-increment:lst-ctn-kix_list_8-1
}
ol.lst-kix_list_8-2.start {
	counter-reset:lst-ctn-kix_list_8-2 0
}
.lst-kix_list_5-0>li {
	counter-increment:lst-ctn-kix_list_5-0
}
.lst-kix_list_7-0>li {
	counter-increment:lst-ctn-kix_list_7-0
}
.lst-kix_list_9-0>li {
	counter-increment:lst-ctn-kix_list_9-0
}
ol.lst-kix_list_1-5.start {
	counter-reset:lst-ctn-kix_list_1-5 0
}
ol.lst-kix_list_9-6.start {
	counter-reset:lst-ctn-kix_list_9-6 0
}
ol.lst-kix_list_5-3.start {
	counter-reset:lst-ctn-kix_list_5-3 0
}
.lst-kix_list_4-3>li {
	counter-increment:lst-ctn-kix_list_4-3
}
ol.lst-kix_list_4-5.start {
	counter-reset:lst-ctn-kix_list_4-5 0
}
.lst-kix_list_1-2>li {
	counter-increment:lst-ctn-kix_list_1-2
}
.lst-kix_list_5-2>li {
	counter-increment:lst-ctn-kix_list_5-2
}
ol.lst-kix_list_8-8.start {
	counter-reset:lst-ctn-kix_list_8-8 0
}
ol.lst-kix_list_10-4.start {
	counter-reset:lst-ctn-kix_list_10-4 0
}
.lst-kix_list_9-2>li {
	counter-increment:lst-ctn-kix_list_9-2
}
ol.lst-kix_list_8-7.start {
	counter-reset:lst-ctn-kix_list_8-7 0
}
.lst-kix_list_5-0>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) ".0. "
}
ol.lst-kix_list_6-0 {
	list-style-type:none
}
.lst-kix_list_5-4>li {
	counter-increment:lst-ctn-kix_list_5-4
}
.lst-kix_list_1-4>li {
	counter-increment:lst-ctn-kix_list_1-4
}
ol.lst-kix_list_1-6.start {
	counter-reset:lst-ctn-kix_list_1-6 0
}
.lst-kix_list_5-3>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) "." counter(lst-ctn-kix_list_5-3, decimal) ". "
}
ol.lst-kix_list_9-5.start {
	counter-reset:lst-ctn-kix_list_9-5 0
}
.lst-kix_list_5-2>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) ". "
}
.lst-kix_list_8-3>li {
	counter-increment:lst-ctn-kix_list_8-3
}
.lst-kix_list_5-1>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) ". "
}
.lst-kix_list_5-7>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) "." counter(lst-ctn-kix_list_5-3, decimal) "." counter(lst-ctn-kix_list_5-4, decimal) "." counter(lst-ctn-kix_list_5-5, decimal) "." counter(lst-ctn-kix_list_5-6, decimal) "." counter(lst-ctn-kix_list_5-7, decimal) ". "
}
.lst-kix_list_5-6>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) "." counter(lst-ctn-kix_list_5-3, decimal) "." counter(lst-ctn-kix_list_5-4, decimal) "." counter(lst-ctn-kix_list_5-5, decimal) "." counter(lst-ctn-kix_list_5-6, decimal) ". "
}
.lst-kix_list_5-8>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) "." counter(lst-ctn-kix_list_5-3, decimal) "." counter(lst-ctn-kix_list_5-4, decimal) "." counter(lst-ctn-kix_list_5-5, decimal) "." counter(lst-ctn-kix_list_5-6, decimal) "." counter(lst-ctn-kix_list_5-7, decimal) "." counter(lst-ctn-kix_list_5-8, decimal) ". "
}
.lst-kix_list_9-4>li {
	counter-increment:lst-ctn-kix_list_9-4
}
.lst-kix_list_5-4>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) "." counter(lst-ctn-kix_list_5-3, decimal) "." counter(lst-ctn-kix_list_5-4, decimal) ". "
}
.lst-kix_list_5-5>li:before {
	content:"" counter(lst-ctn-kix_list_5-0, decimal) "." counter(lst-ctn-kix_list_5-1, decimal) "." counter(lst-ctn-kix_list_5-2, decimal) "." counter(lst-ctn-kix_list_5-3, decimal) "." counter(lst-ctn-kix_list_5-4, decimal) "." counter(lst-ctn-kix_list_5-5, decimal) ". "
}
.lst-kix_list_10-3>li {
	counter-increment:lst-ctn-kix_list_10-3
}
ol.lst-kix_list_1-0.start {
	counter-reset:lst-ctn-kix_list_1-0 0
}
.lst-kix_list_6-1>li:before {
	content:"o  "
}
.lst-kix_list_6-3>li:before {
	content:"\0025cf  "
}
.lst-kix_list_6-0>li:before {
	content:"" counter(lst-ctn-kix_list_6-0, lower-latin) ") "
}
.lst-kix_list_6-4>li:before {
	content:"o  "
}
ol.lst-kix_list_4-0.start {
	counter-reset:lst-ctn-kix_list_4-0 3
}
.lst-kix_list_6-2>li:before {
	content:"\0025aa  "
}
.lst-kix_list_6-8>li:before {
	content:"\0025aa  "
}
.lst-kix_list_6-5>li:before {
	content:"\0025aa  "
}
.lst-kix_list_6-7>li:before {
	content:"o  "
}
.lst-kix_list_6-6>li:before {
	content:"\0025cf  "
}
ol.lst-kix_list_1-3 {
	list-style-type:none
}
ol.lst-kix_list_10-6.start {
	counter-reset:lst-ctn-kix_list_10-6 0
}
ol.lst-kix_list_1-4 {
	list-style-type:none
}
.lst-kix_list_2-7>li:before {
	content:"o  "
}
ol.lst-kix_list_1-5 {
	list-style-type:none
}
.lst-kix_list_7-4>li:before {
	content:"o  "
}
.lst-kix_list_7-6>li:before {
	content:"\0025cf  "
}
ol.lst-kix_list_1-6 {
	list-style-type:none
}
ol.lst-kix_list_1-0 {
	list-style-type:none
}
.lst-kix_list_2-5>li:before {
	content:"\0025aa  "
}
ol.lst-kix_list_1-1 {
	list-style-type:none
}
ol.lst-kix_list_1-2 {
	list-style-type:none
}
.lst-kix_list_7-2>li:before {
	content:"\0025aa  "
}
.lst-kix_list_8-6>li {
	counter-increment:lst-ctn-kix_list_8-6
}
ol.lst-kix_list_10-3.start {
	counter-reset:lst-ctn-kix_list_10-3 0
}
ol.lst-kix_list_9-4.start {
	counter-reset:lst-ctn-kix_list_9-4 0
}
ul.lst-kix_list_3-7 {
	list-style-type:none
}
ul.lst-kix_list_3-8 {
	list-style-type:none
}
ol.lst-kix_list_4-6.start {
	counter-reset:lst-ctn-kix_list_4-6 0
}
ol.lst-kix_list_9-7 {
	list-style-type:none
}
.lst-kix_list_10-1>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) ". "
}
ol.lst-kix_list_9-8 {
	list-style-type:none
}
ol.lst-kix_list_9-3 {
	list-style-type:none
}
ul.lst-kix_list_3-1 {
	list-style-type:none
}
ol.lst-kix_list_9-4 {
	list-style-type:none
}
ul.lst-kix_list_3-2 {
	list-style-type:none
}
.lst-kix_list_5-7>li {
	counter-increment:lst-ctn-kix_list_5-7
}
ol.lst-kix_list_9-5 {
	list-style-type:none
}
.lst-kix_list_7-8>li:before {
	content:"\0025aa  "
}
ol.lst-kix_list_9-6 {
	list-style-type:none
}
ul.lst-kix_list_3-0 {
	list-style-type:none
}
ol.lst-kix_list_4-3.start {
	counter-reset:lst-ctn-kix_list_4-3 0
}
ol.lst-kix_list_1-7 {
	list-style-type:none
}
ul.lst-kix_list_3-5 {
	list-style-type:none
}
.lst-kix_list_4-7>li {
	counter-increment:lst-ctn-kix_list_4-7
}
ol.lst-kix_list_9-0 {
	list-style-type:none
}
ol.lst-kix_list_1-8 {
	list-style-type:none
}
ul.lst-kix_list_3-6 {
	list-style-type:none
}
ol.lst-kix_list_9-1 {
	list-style-type:none
}
ul.lst-kix_list_3-3 {
	list-style-type:none
}
ol.lst-kix_list_9-2 {
	list-style-type:none
}
ul.lst-kix_list_3-4 {
	list-style-type:none
}
.lst-kix_list_10-7>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) "." counter(lst-ctn-kix_list_10-3, decimal) "." counter(lst-ctn-kix_list_10-4, decimal) "." counter(lst-ctn-kix_list_10-5, decimal) "." counter(lst-ctn-kix_list_10-6, decimal) "." counter(lst-ctn-kix_list_10-7, decimal) ". "
}
.lst-kix_list_10-5>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) "." counter(lst-ctn-kix_list_10-3, decimal) "." counter(lst-ctn-kix_list_10-4, decimal) "." counter(lst-ctn-kix_list_10-5, decimal) ". "
}
.lst-kix_list_9-8>li {
	counter-increment:lst-ctn-kix_list_9-8
}
.lst-kix_list_10-3>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) "." counter(lst-ctn-kix_list_10-3, decimal) ". "
}
.lst-kix_list_4-1>li:before {
	content:"" counter(lst-ctn-kix_list_4-1, lower-latin) ". "
}
.lst-kix_list_9-2>li:before {
	content:"" counter(lst-ctn-kix_list_9-2, lower-roman) ". "
}
.lst-kix_list_4-3>li:before {
	content:"" counter(lst-ctn-kix_list_4-3, decimal) ". "
}
.lst-kix_list_4-5>li:before {
	content:"" counter(lst-ctn-kix_list_4-5, lower-roman) ". "
}
ol.lst-kix_list_5-7.start {
	counter-reset:lst-ctn-kix_list_5-7 0
}
.lst-kix_list_1-8>li {
	counter-increment:lst-ctn-kix_list_1-8
}
.lst-kix_list_10-5>li {
	counter-increment:lst-ctn-kix_list_10-5
}
ol.lst-kix_list_1-4.start {
	counter-reset:lst-ctn-kix_list_1-4 0
}
.lst-kix_list_5-5>li {
	counter-increment:lst-ctn-kix_list_5-5
}
ol.lst-kix_list_1-1.start {
	counter-reset:lst-ctn-kix_list_1-1 0
}
.lst-kix_list_9-0>li:before {
	content:"" counter(lst-ctn-kix_list_9-0, decimal) ". "
}
ol.lst-kix_list_4-4.start {
	counter-reset:lst-ctn-kix_list_4-4 0
}
ol.lst-kix_list_10-7 {
	list-style-type:none
}
ol.lst-kix_list_9-2.start {
	counter-reset:lst-ctn-kix_list_9-2 0
}
.lst-kix_list_9-6>li:before {
	content:"" counter(lst-ctn-kix_list_9-6, decimal) ". "
}
ol.lst-kix_list_10-8 {
	list-style-type:none
}
.lst-kix_list_9-3>li {
	counter-increment:lst-ctn-kix_list_9-3
}
ol.lst-kix_list_10-3 {
	list-style-type:none
}
.lst-kix_list_9-4>li:before {
	content:"" counter(lst-ctn-kix_list_9-4, lower-latin) ". "
}
ol.lst-kix_list_10-4 {
	list-style-type:none
}
ol.lst-kix_list_10-5 {
	list-style-type:none
}
ol.lst-kix_list_10-6 {
	list-style-type:none
}
ol.lst-kix_list_10-0 {
	list-style-type:none
}
ol.lst-kix_list_10-1 {
	list-style-type:none
}
ol.lst-kix_list_1-3.start {
	counter-reset:lst-ctn-kix_list_1-3 0
}
ul.lst-kix_list_2-8 {
	list-style-type:none
}
ol.lst-kix_list_10-2 {
	list-style-type:none
}
ol.lst-kix_list_8-8 {
	list-style-type:none
}
ol.lst-kix_list_1-2.start {
	counter-reset:lst-ctn-kix_list_1-2 0
}
ol.lst-kix_list_8-4 {
	list-style-type:none
}
ul.lst-kix_list_2-2 {
	list-style-type:none
}
ol.lst-kix_list_8-5 {
	list-style-type:none
}
ul.lst-kix_list_2-3 {
	list-style-type:none
}
ol.lst-kix_list_8-6 {
	list-style-type:none
}
ul.lst-kix_list_2-0 {
	list-style-type:none
}
ol.lst-kix_list_8-7 {
	list-style-type:none
}
ul.lst-kix_list_2-1 {
	list-style-type:none
}
ol.lst-kix_list_8-0 {
	list-style-type:none
}
.lst-kix_list_9-8>li:before {
	content:"" counter(lst-ctn-kix_list_9-8, lower-roman) ". "
}
ul.lst-kix_list_2-6 {
	list-style-type:none
}
ol.lst-kix_list_8-1 {
	list-style-type:none
}
.lst-kix_list_1-1>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) ". "
}
ul.lst-kix_list_2-7 {
	list-style-type:none
}
ol.lst-kix_list_8-2 {
	list-style-type:none
}
ul.lst-kix_list_2-4 {
	list-style-type:none
}
ol.lst-kix_list_8-3 {
	list-style-type:none
}
ul.lst-kix_list_2-5 {
	list-style-type:none
}
.lst-kix_list_8-5>li {
	counter-increment:lst-ctn-kix_list_8-5
}
.lst-kix_list_1-3>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) "." counter(lst-ctn-kix_list_1-3, decimal) ". "
}
.lst-kix_list_10-4>li {
	counter-increment:lst-ctn-kix_list_10-4
}
ol.lst-kix_list_10-5.start {
	counter-reset:lst-ctn-kix_list_10-5 0
}
.lst-kix_list_4-8>li {
	counter-increment:lst-ctn-kix_list_4-8
}
.lst-kix_list_1-7>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) "." counter(lst-ctn-kix_list_1-3, decimal) "." counter(lst-ctn-kix_list_1-4, decimal) "." counter(lst-ctn-kix_list_1-5, decimal) "." counter(lst-ctn-kix_list_1-6, decimal) "." counter(lst-ctn-kix_list_1-7, decimal) ". "
}
ol.lst-kix_list_5-8.start {
	counter-reset:lst-ctn-kix_list_5-8 0
}
.lst-kix_list_1-3>li {
	counter-increment:lst-ctn-kix_list_1-3
}
.lst-kix_list_1-5>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) "." counter(lst-ctn-kix_list_1-3, decimal) "." counter(lst-ctn-kix_list_1-4, decimal) "." counter(lst-ctn-kix_list_1-5, decimal) ". "
}
ol.lst-kix_list_9-1.start {
	counter-reset:lst-ctn-kix_list_9-1 0
}
.lst-kix_list_5-6>li {
	counter-increment:lst-ctn-kix_list_5-6
}
.lst-kix_list_2-1>li:before {
	content:"o  "
}
ol.lst-kix_list_6-0.start {
	counter-reset:lst-ctn-kix_list_6-0 0
}
.lst-kix_list_2-3>li:before {
	content:"\0025cf  "
}
.lst-kix_list_4-2>li {
	counter-increment:lst-ctn-kix_list_4-2
}
.lst-kix_list_5-1>li {
	counter-increment:lst-ctn-kix_list_5-1
}
.lst-kix_list_1-1>li {
	counter-increment:lst-ctn-kix_list_1-1
}
.lst-kix_list_9-1>li {
	counter-increment:lst-ctn-kix_list_9-1
}
.lst-kix_list_3-0>li:before {
	content:"\0025cf  "
}
.lst-kix_list_3-1>li:before {
	content:"o  "
}
.lst-kix_list_3-2>li:before {
	content:"\0025aa  "
}
.lst-kix_list_8-1>li:before {
	content:"" counter(lst-ctn-kix_list_8-1, lower-latin) ". "
}
ol.lst-kix_list_1-8.start {
	counter-reset:lst-ctn-kix_list_1-8 0
}
.lst-kix_list_4-0>li {
	counter-increment:lst-ctn-kix_list_4-0
}
.lst-kix_list_8-2>li:before {
	content:"" counter(lst-ctn-kix_list_8-2, lower-roman) ". "
}
.lst-kix_list_6-0>li {
	counter-increment:lst-ctn-kix_list_6-0
}
.lst-kix_list_8-0>li {
	counter-increment:lst-ctn-kix_list_8-0
}
.lst-kix_list_3-5>li:before {
	content:"\0025aa  "
}
.lst-kix_list_10-0>li {
	counter-increment:lst-ctn-kix_list_10-0
}
.lst-kix_list_3-4>li:before {
	content:"o  "
}
.lst-kix_list_3-3>li:before {
	content:"\0025cf  "
}
.lst-kix_list_8-0>li:before {
	content:"" counter(lst-ctn-kix_list_8-0, lower-latin) ") "
}
.lst-kix_list_8-7>li:before {
	content:"" counter(lst-ctn-kix_list_8-7, lower-latin) ". "
}
.lst-kix_list_3-8>li:before {
	content:"\0025aa  "
}
.lst-kix_list_8-5>li:before {
	content:"" counter(lst-ctn-kix_list_8-5, lower-roman) ". "
}
ol.lst-kix_list_10-7.start {
	counter-reset:lst-ctn-kix_list_10-7 0
}
.lst-kix_list_8-6>li:before {
	content:"" counter(lst-ctn-kix_list_8-6, decimal) ". "
}
.lst-kix_list_8-3>li:before {
	content:"" counter(lst-ctn-kix_list_8-3, decimal) ". "
}
.lst-kix_list_3-6>li:before {
	content:"\0025cf  "
}
.lst-kix_list_3-7>li:before {
	content:"o  "
}
.lst-kix_list_8-4>li:before {
	content:"" counter(lst-ctn-kix_list_8-4, lower-latin) ". "
}
ol.lst-kix_list_5-0.start {
	counter-reset:lst-ctn-kix_list_5-0 5
}
.lst-kix_list_10-2>li {
	counter-increment:lst-ctn-kix_list_10-2
}
ol.lst-kix_list_8-5.start {
	counter-reset:lst-ctn-kix_list_8-5 0
}
ol.lst-kix_list_4-2.start {
	counter-reset:lst-ctn-kix_list_4-2 0
}
ol.lst-kix_list_9-3.start {
	counter-reset:lst-ctn-kix_list_9-3 0
}
.lst-kix_list_8-8>li:before {
	content:"" counter(lst-ctn-kix_list_8-8, lower-roman) ". "
}
ol.lst-kix_list_10-1.start {
	counter-reset:lst-ctn-kix_list_10-1 0
}
.lst-kix_list_4-4>li {
	counter-increment:lst-ctn-kix_list_4-4
}
.lst-kix_list_4-8>li:before {
	content:"" counter(lst-ctn-kix_list_4-8, lower-roman) ". "
}
.lst-kix_list_4-7>li:before {
	content:"" counter(lst-ctn-kix_list_4-7, lower-latin) ". "
}
ol.lst-kix_list_5-6.start {
	counter-reset:lst-ctn-kix_list_5-6 0
}
ol.lst-kix_list_4-1.start {
	counter-reset:lst-ctn-kix_list_4-1 0
}
ol.lst-kix_list_4-8.start {
	counter-reset:lst-ctn-kix_list_4-8 0
}
.lst-kix_list_8-4>li {
	counter-increment:lst-ctn-kix_list_8-4
}
ol.lst-kix_list_10-8.start {
	counter-reset:lst-ctn-kix_list_10-8 0
}
ol.lst-kix_list_8-6.start {
	counter-reset:lst-ctn-kix_list_8-6 0
}
ol.lst-kix_list_10-2.start {
	counter-reset:lst-ctn-kix_list_10-2 0
}
ol.lst-kix_list_5-5.start {
	counter-reset:lst-ctn-kix_list_5-5 0
}
ol.lst-kix_list_8-0.start {
	counter-reset:lst-ctn-kix_list_8-0 0
}
.lst-kix_list_7-0>li:before {
	content:"" counter(lst-ctn-kix_list_7-0, lower-latin) ") "
}
ol.lst-kix_list_4-7.start {
	counter-reset:lst-ctn-kix_list_4-7 0
}
ol.lst-kix_list_5-0 {
	list-style-type:none
}
.lst-kix_list_2-6>li:before {
	content:"\0025cf  "
}
ol.lst-kix_list_5-1 {
	list-style-type:none
}
ol.lst-kix_list_9-7.start {
	counter-reset:lst-ctn-kix_list_9-7 0
}
ol.lst-kix_list_5-2 {
	list-style-type:none
}
.lst-kix_list_2-4>li:before {
	content:"o  "
}
.lst-kix_list_2-8>li:before {
	content:"\0025aa  "
}
.lst-kix_list_7-1>li:before {
	content:"o  "
}
.lst-kix_list_7-5>li:before {
	content:"\0025aa  "
}
.lst-kix_list_9-6>li {
	counter-increment:lst-ctn-kix_list_9-6
}
ol.lst-kix_list_5-4.start {
	counter-reset:lst-ctn-kix_list_5-4 0
}
.lst-kix_list_7-3>li:before {
	content:"\0025cf  "
}
ul.lst-kix_list_7-5 {
	list-style-type:none
}
.lst-kix_list_10-0>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) ".0. "
}
ul.lst-kix_list_7-6 {
	list-style-type:none
}
ul.lst-kix_list_7-3 {
	list-style-type:none
}
.lst-kix_list_9-7>li {
	counter-increment:lst-ctn-kix_list_9-7
}
ul.lst-kix_list_7-4 {
	list-style-type:none
}
ol.lst-kix_list_5-1.start {
	counter-reset:lst-ctn-kix_list_5-1 0
}
ul.lst-kix_list_7-7 {
	list-style-type:none
}
ul.lst-kix_list_7-8 {
	list-style-type:none
}
ol.lst-kix_list_5-7 {
	list-style-type:none
}
ol.lst-kix_list_5-8 {
	list-style-type:none
}
.lst-kix_list_10-6>li {
	counter-increment:lst-ctn-kix_list_10-6
}
ol.lst-kix_list_5-3 {
	list-style-type:none
}
ul.lst-kix_list_7-1 {
	list-style-type:none
}
.lst-kix_list_8-7>li {
	counter-increment:lst-ctn-kix_list_8-7
}
ol.lst-kix_list_5-4 {
	list-style-type:none
}
ul.lst-kix_list_7-2 {
	list-style-type:none
}
.lst-kix_list_1-7>li {
	counter-increment:lst-ctn-kix_list_1-7
}
ol.lst-kix_list_5-5 {
	list-style-type:none
}
ol.lst-kix_list_5-6 {
	list-style-type:none
}
.lst-kix_list_7-7>li:before {
	content:"o  "
}
ol.lst-kix_list_10-0.start {
	counter-reset:lst-ctn-kix_list_10-0 4
}
ol.lst-kix_list_8-1.start {
	counter-reset:lst-ctn-kix_list_8-1 0
}
.lst-kix_list_9-5>li {
	counter-increment:lst-ctn-kix_list_9-5
}
.lst-kix_list_5-8>li {
	counter-increment:lst-ctn-kix_list_5-8
}
.lst-kix_list_10-4>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) "." counter(lst-ctn-kix_list_10-3, decimal) "." counter(lst-ctn-kix_list_10-4, decimal) ". "
}
.lst-kix_list_10-8>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) "." counter(lst-ctn-kix_list_10-3, decimal) "." counter(lst-ctn-kix_list_10-4, decimal) "." counter(lst-ctn-kix_list_10-5, decimal) "." counter(lst-ctn-kix_list_10-6, decimal) "." counter(lst-ctn-kix_list_10-7, decimal) "." counter(lst-ctn-kix_list_10-8, decimal) ". "
}
.lst-kix_list_4-0>li:before {
	content:"" counter(lst-ctn-kix_list_4-0, decimal) ". "
}
.lst-kix_list_10-2>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) ". "
}
.lst-kix_list_4-6>li {
	counter-increment:lst-ctn-kix_list_4-6
}
ol.lst-kix_list_1-7.start {
	counter-reset:lst-ctn-kix_list_1-7 0
}
.lst-kix_list_4-4>li:before {
	content:"" counter(lst-ctn-kix_list_4-4, lower-latin) ". "
}
.lst-kix_list_1-5>li {
	counter-increment:lst-ctn-kix_list_1-5
}
.lst-kix_list_4-2>li:before {
	content:"" counter(lst-ctn-kix_list_4-2, lower-roman) ". "
}
.lst-kix_list_4-6>li:before {
	content:"" counter(lst-ctn-kix_list_4-6, decimal) ". "
}
.lst-kix_list_9-3>li:before {
	content:"" counter(lst-ctn-kix_list_9-3, decimal) ". "
}
ol.lst-kix_list_7-0.start {
	counter-reset:lst-ctn-kix_list_7-0 0
}
.lst-kix_list_10-8>li {
	counter-increment:lst-ctn-kix_list_10-8
}
.lst-kix_list_10-6>li:before {
	content:"" counter(lst-ctn-kix_list_10-0, decimal) "." counter(lst-ctn-kix_list_10-1, decimal) "." counter(lst-ctn-kix_list_10-2, decimal) "." counter(lst-ctn-kix_list_10-3, decimal) "." counter(lst-ctn-kix_list_10-4, decimal) "." counter(lst-ctn-kix_list_10-5, decimal) "." counter(lst-ctn-kix_list_10-6, decimal) ". "
}
.lst-kix_list_9-1>li:before {
	content:"" counter(lst-ctn-kix_list_9-1, lower-latin) ". "
}
ol.lst-kix_list_4-0 {
	list-style-type:none
}
ol.lst-kix_list_4-1 {
	list-style-type:none
}
ol.lst-kix_list_4-2 {
	list-style-type:none
}
ol.lst-kix_list_4-3 {
	list-style-type:none
}
.lst-kix_list_9-7>li:before {
	content:"" counter(lst-ctn-kix_list_9-7, lower-latin) ". "
}
.lst-kix_list_9-5>li:before {
	content:"" counter(lst-ctn-kix_list_9-5, lower-roman) ". "
}
ul.lst-kix_list_6-6 {
	list-style-type:none
}
ul.lst-kix_list_6-7 {
	list-style-type:none
}
.lst-kix_list_5-3>li {
	counter-increment:lst-ctn-kix_list_5-3
}
ul.lst-kix_list_6-4 {
	list-style-type:none
}
ul.lst-kix_list_6-5 {
	list-style-type:none
}
ul.lst-kix_list_6-8 {
	list-style-type:none
}
ol.lst-kix_list_4-8 {
	list-style-type:none
}
.lst-kix_list_1-0>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) ". "
}
ol.lst-kix_list_4-4 {
	list-style-type:none
}
ul.lst-kix_list_6-2 {
	list-style-type:none
}
ol.lst-kix_list_4-5 {
	list-style-type:none
}
ul.lst-kix_list_6-3 {
	list-style-type:none
}
.lst-kix_list_1-2>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) ". "
}
ol.lst-kix_list_4-6 {
	list-style-type:none
}
ol.lst-kix_list_4-7 {
	list-style-type:none
}
ul.lst-kix_list_6-1 {
	list-style-type:none
}
ol.lst-kix_list_8-4.start {
	counter-reset:lst-ctn-kix_list_8-4 0
}
.lst-kix_list_1-4>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) "." counter(lst-ctn-kix_list_1-3, decimal) "." counter(lst-ctn-kix_list_1-4, decimal) ". "
}
.lst-kix_list_10-1>li {
	counter-increment:lst-ctn-kix_list_10-1
}
.lst-kix_list_1-0>li {
	counter-increment:lst-ctn-kix_list_1-0
}
.lst-kix_list_8-8>li {
	counter-increment:lst-ctn-kix_list_8-8
}
.lst-kix_list_1-6>li {
	counter-increment:lst-ctn-kix_list_1-6
}
.lst-kix_list_1-6>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) "." counter(lst-ctn-kix_list_1-3, decimal) "." counter(lst-ctn-kix_list_1-4, decimal) "." counter(lst-ctn-kix_list_1-5, decimal) "." counter(lst-ctn-kix_list_1-6, decimal) ". "
}
.lst-kix_list_10-7>li {
	counter-increment:lst-ctn-kix_list_10-7
}
.lst-kix_list_2-0>li:before {
	content:"\0025cf  "
}
ol.lst-kix_list_8-3.start {
	counter-reset:lst-ctn-kix_list_8-3 0
}
.lst-kix_list_4-5>li {
	counter-increment:lst-ctn-kix_list_4-5
}
ol.lst-kix_list_9-8.start {
	counter-reset:lst-ctn-kix_list_9-8 0
}
.lst-kix_list_1-8>li:before {
	content:"" counter(lst-ctn-kix_list_1-0, decimal) "." counter(lst-ctn-kix_list_1-1, decimal) "." counter(lst-ctn-kix_list_1-2, decimal) "." counter(lst-ctn-kix_list_1-3, decimal) "." counter(lst-ctn-kix_list_1-4, decimal) "." counter(lst-ctn-kix_list_1-5, decimal) "." counter(lst-ctn-kix_list_1-6, decimal) "." counter(lst-ctn-kix_list_1-7, decimal) "." counter(lst-ctn-kix_list_1-8, decimal) ". "
}
.lst-kix_list_2-2>li:before {
	content:"\0025aa  "
}
ol.lst-kix_list_5-2.start {
	counter-reset:lst-ctn-kix_list_5-2 0
}
.lst-kix_list_8-2>li {
	counter-increment:lst-ctn-kix_list_8-2
}
ol {
	margin:0;
	padding:0
}
table td, table th {
	padding:0
}
.c35 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#ffffff;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:175.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c24 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#c6d9f1;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c8 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#d9d9d9;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:11.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c41 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#c6d9f1;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:42.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c39 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#c6d9f1;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:254.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c49 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:0pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#ffffff;
	border-left-style:solid;
	border-bottom-width:0pt;
	width:11.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c12 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#c6d9f1;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:62.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c40 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	background-color:#bfbfbf;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:58.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c109 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:45pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c52 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:38.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c103 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#a5a5a5;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:262.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c72 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:30.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c16 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:21.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c57 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:31.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c30 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:35.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c120 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:529.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c11 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:13.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c127 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:573.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c19 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:40.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c56 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:35.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c122 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:356pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c121 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:27pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c64 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:99pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c3 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:31.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c36 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:31.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c14 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:40pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c51 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:29.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c67 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:21.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c38 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:14.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c32 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:11.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c94 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c58 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:49.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c61 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:58.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c21 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:13.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c75 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c9 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:37.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c27 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:54pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c25 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:49.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c108 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:450.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c47 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:78pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c71 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:64.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c18 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:110.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c86 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c4 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:11.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c29 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c10 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:35.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c78 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:35.9pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c80 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:34.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c93 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:0pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:11.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c73 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:48.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c15 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:12.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c99 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:175.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c63 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:35.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c126 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:249.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c95 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:184.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c55 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#a5a5a5;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:276.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c77 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:14.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c42 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:63.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c91 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:42.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c79 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:239.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c102 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:42.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c123 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:531.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c22 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:113.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c85 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36.4pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c84 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:44pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c87 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:36.7pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c106 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:20.1pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c31 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:13pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c53 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:65.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c88 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:65.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c28 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:140.3pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c33 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:70pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c101 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:276.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c26 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:12.2pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c45 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:12.6pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c107 {
	border-right-style:solid;
	padding:0pt 5.4pt 0pt 5.4pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:288.8pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c37 {
	border-right-style:solid;
	padding:0pt 5.8pt 0pt 5.8pt;
	border-bottom-color:#000000;
	border-top-width:1pt;
	border-right-width:1pt;
	border-left-color:#000000;
	vertical-align:top;
	border-right-color:#000000;
	border-left-width:1pt;
	border-top-style:solid;
	border-left-style:solid;
	border-bottom-width:1pt;
	width:42.5pt;
	border-top-color:#000000;
	border-bottom-style:solid
}
.c5 {
	color:#000000;
	font-weight:700;
	text-decoration:none;
	vertical-align:baseline;
	font-size:8pt;
	font-family:"Times New Roman";
	font-style:normal
}
.c1 {
	color:#000000;
	font-weight:400;
	text-decoration:none;
	vertical-align:baseline;
	font-size:8pt;
	font-family:"Times New Roman";
	font-style:normal
}
.c0 {
	padding-top:0pt;
	padding-bottom:0pt;
	line-height:1.0;
	orphans:2;
	widows:2;
	text-align:left;
	height:11pt
}
.c62 {
	padding-top:0pt;
	padding-bottom:10pt;
	line-height:1.0;
	orphans:2;
	widows:2;
	text-align:left
}
.c124 {
	padding-top:0pt;
	padding-bottom:0pt;
	line-height:1.0;
	orphans:2;
	widows:2;
	text-align:center
}
.c6 {
	padding-top:0pt;
	padding-bottom:0pt;
	line-height:1.0;
	orphans:2;
	widows:2;
	text-align:left
}
.c96 {
	padding-top:0pt;
	padding-bottom:0pt;
	line-height:1.0;
	orphans:2;
	widows:2;
	text-align:right
}
.c2 {
	padding-top:0pt;
	padding-bottom:0pt;
	line-height:1.15;
	text-align:left;
	height:11pt
}
.c119 {
	width:100%;
	border-spacing:0;
	border-collapse:collapse;
	margin-right:auto
}
.c83 {
	color:#ff0000;
	text-decoration:none;
	vertical-align:baseline;
	font-style:normal
}
.c113 {
	width:100%;
	border-spacing:0;
	border-collapse:collapse;
	margin-right:auto
}
.c89 {
	width:100%;
	border-spacing:0;
	border-collapse:collapse;
	margin-right:auto
}
.c129 {
	width: 100%;
	border-spacing:0;
	border-collapse:collapse;
	margin-right:auto
}
.c128 {
	border-spacing:0;
	width: 100%;
	border-collapse:collapse;
	margin-right:auto
}
.c114 {
	width:100%;
	border-spacing:0;
	border-collapse:collapse;
	margin-right:auto
}
.c20 {
	font-size:8pt;
	font-family:"Times New Roman";
	font-weight:400
}
.c59 {
	margin-left:5.7pt;
	text-indent:-5.7pt;
	margin-right:5.7pt
}
.c54 {
	font-size:8pt;
	font-family:"Times New Roman";
	font-weight:700
}
.c81 {
	margin-left:6pt;
	text-indent:-6pt
}
.c70 {
	margin-left:18pt;
	text-indent:-36pt
}
.c117 {
	margin-left:18pt;
	padding-left:-3.8pt
}
.c13 {
	padding:0;
	margin:0
}
.c100 {
	max-width:451.3pt;
	padding:14.2pt 72pt 14.2pt 72pt
}
.c111 {
	margin-left:18pt;
	padding-left:0pt
}
.c66 {
	margin-left:25.2pt;
	padding-left:-10.8pt
}
.c116 {
	height:21pt
}
.c112 {
	font-style:italic
}
.c69 {
	height:10pt
}
.c92 {
	height:20pt
}
.c34 {
	height:7pt
}
.c23 {
	background-color:#d9d9d9
}
.c44 {
	background-color:#ffff00
}
.c76 {
	height:56pt
}
.c118 {
	color:#00b050
}
.c115 {
	height:108pt
}
.c43 {
	background-color:#c6d9f1
}
.c65 {
	background-color:#bfbfbf
}
.c48 {
	color:#000000
}
.c125 {
	height:14pt
}
.c50 {
	height:2pt
}
.c7 {
	height:11pt
}
.c82 {
	background-color:#d0cece
}
.c105 {
	height:3pt
}
.c74 {
	height:27pt
}
.c90 {
	height:13pt
}
.c98 {
	height:18pt
}
.c17 {
	height:0pt
}
.c110 {
	height:42pt
}
.c104 {
	height:16pt
}
.c68 {
	height:9pt
}
.c97 {
	height:12pt
}
.c46 {
	height:8pt
}
.c60 {
	background-color:#ffffff
}
.title {
	padding-top:24pt;
	color:#000000;
	font-weight:700;
	font-size:36pt;
	padding-bottom:6pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
.subtitle {
	padding-top:18pt;
	color:#666666;
	font-size:24pt;
	padding-bottom:4pt;
	font-family:"Georgia";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	font-style:italic;
	orphans:2;
	widows:2;
	text-align:left
}
li {
	color:#000000;
	font-size:11pt;
	font-family:"Calibri"
}
p {
	margin:0;
	color:#000000;
	font-size:11pt;
	font-family:"Calibri"
}
h1 {
	padding-top:24pt;
	color:#000000;
	font-weight:700;
	font-size:24pt;
	padding-bottom:6pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
h2 {
	padding-top:18pt;
	color:#000000;
	font-weight:700;
	font-size:18pt;
	padding-bottom:4pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
h3 {
	padding-top:14pt;
	color:#000000;
	font-weight:700;
	font-size:14pt;
	padding-bottom:4pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
h4 {
	padding-top:12pt;
	color:#000000;
	font-weight:700;
	font-size:12pt;
	padding-bottom:2pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
h5 {
	padding-top:11pt;
	color:#000000;
	font-weight:700;
	font-size:11pt;
	padding-bottom:2pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
h6 {
	padding-top:10pt;
	color:#000000;
	font-weight:700;
	font-size:10pt;
	padding-bottom:2pt;
	font-family:"Calibri";
	line-height:1.1500000000000001;
	page-break-after:avoid;
	orphans:2;
	widows:2;
	text-align:left
}
</style>
<div>
	<ol class="breadcrumb">
		<li><a href="{{{URL::route('user.home')}}}">{{ trans('messages.home') }}</a></li>
		<li class="active">{{ Lang::choice('messages.report',2) }}</li>
		<li class="active">HMIS 105</li>
	</ol>
</div>
<br />
<div class="panel panel-primary">
	<div class="panel-heading ">
		<span class="glyphicon glyphicon-stats"></span>
		HMIS 105 |
		<a title="Previous Month"
			href="{{URL::to('/hmis105/'.date('Y-m',strtotime(date('Y-m',strtotime($month)).' -1 month')))}}">
			<span class="btn btn-default ion-android-arrow-back"></span></a>
		{{date('Y-M',strtotime($month))}}
		<a title="Next Month"
			href="{{URL::to('/hmis105/'.date('Y-m',strtotime(date('Y-m',strtotime($month)).' +1 month')))}}">
			<span class="btn btn-default ion-android-arrow-forward"></span></a>
	</div>
	<div class="panel-body">
	@if (Session::has('message'))
		<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
	@endif
		<div class="table-responsive">
			<table class="table table-condensed report-table-border">
				<tbody>
					<tr>
						<th colspan="13" style="background-color: #cccccc;">7. LABORATORY TESTS</th>
					</tr>
					<tr>
						<td colspan="2">LABORATORY TESTS</td>
						<td colspan="2">NUMBER DONE</td>
						<td colspan="2">NUMBER POSITIVE</td>
						<td></td>
						<td colspan="2">LABORATORY TESTS</td>
						<td colspan="2">NUMBER DONE</td>
						<td colspan="2">NUMBER POSITIVE</td>
					</tr>
					<tr>
						<td colspan="6" style="background-color: #cccccc;">7.1 HEMATOLOGY (BLOOD)</td>
						<td></td>
						<td colspan="2">38. Hepatitis B</td>
						<td colspan="2">{{(isset($testTypeCountArray['hepatitis_b']))?$testTypeCountArray['hepatitis_b']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['hepatitis_b']))?$testTypeCountArray['hepatitis_b']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">01. Hb</td>
						<td colspan="2">
							@if(isset($testTypeCountArray['hb']))
							{{(isset($testTypeCountArray['hb']['hb']))?$testTypeCountArray['hb']['hb']['total']:''}}
							@endif
						</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">39. Brucella</td>
						<td colspan="2">{{(isset($testTypeCountArray['brucella']))?$testTypeCountArray['brucella']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['brucella']))?$testTypeCountArray['brucella']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">02. HBG<8</td>
						<td colspan="2">
							@if(isset($testTypeCountArray['cbc']))
								{{(isset($testTypeCountArray['cbc']['hgb']))?$testTypeCountArray['cbc']['hgb']['hbg_less_8']:''}}
							@endif
						</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">40. Pregnancy Test</td>
						<td colspan="2">{{(isset($testTypeCountArray['pregnancy_test']))?$testTypeCountArray['pregnancy_test']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['pregnancy_test']))?$testTypeCountArray['pregnancy_test']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">03. HBG≥8</td>
						<td colspan="2">
							@if(isset($testTypeCountArray['cbc']))
								{{(isset($testTypeCountArray['cbc']['hgb']))?$testTypeCountArray['cbc']['hgb']['hbg_equal_8']:''}}
							@endif
						</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">41. Rheumatoid Factor</td>
						<td colspan="2">{{(isset($testTypeCountArray['rheumatoid_factor']))?$testTypeCountArray['rheumatoid_factor']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['rheumatoid_factor']))?$testTypeCountArray['rheumatoid_factor']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">04. WBC Total</td>
						<td colspan="2">
							@if(isset($testTypeCountArray['cbc']))
								{{(isset($testTypeCountArray['cbc']['wbc_total']))?$testTypeCountArray['cbc']['wbc_total']['total']:''}}
							@endif
						</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2" rowspan="4">42. Others</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td colspan="2">05. WBC Differential</td>
						<td colspan="2">{{(isset($testTypeCountArray['wbc_differential']))?$testTypeCountArray['wbc_differential']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td colspan="2">06. Film Comment</td>
						<td colspan="2">{{(isset($testTypeCountArray['film_comment']))?$testTypeCountArray['film_comment']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td colspan="2">07. ESR</td>
						<td colspan="2">{{(isset($testTypeCountArray['esr']))?$testTypeCountArray['esr']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td colspan="2">08. RBC</td>
						<td colspan="2">
						@if(isset($testTypeCountArray['cbc']))
							{{(isset($testTypeCountArray['cbc']['rbc']))?$testTypeCountArray['cbc']['rbc']['total']:''}}
						@endif
						</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="6" style="background-color: #cccccc;">7.5 IMMUNOLOGY</td>
					</tr>
					<tr>
						<td colspan="2">09. Bleeding time</td>
						<td colspan="2">{{(isset($testTypeCountArray['bleeding_time']))?$testTypeCountArray['bleeding_time']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">43. CD4 tests</td>
						<td colspan="2">{{(isset($testTypeCountArray['cd4_tests']))?$testTypeCountArray['cd4_tests']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
					</tr>
					<tr>
						<td colspan="2">10 Prothrombin Time</td>
						<td colspan="2">{{(isset($testTypeCountArray['prothrombin_time']))?$testTypeCountArray['prothrombin_time']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">44. Viral Load Tests</td>
						<td colspan="2">{{(isset($testTypeCountArray['viral_load_tests']))?$testTypeCountArray['viral_load_tests']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
					</tr>
					<tr>
						<td colspan="2">11. Clotting Time</td>
						<td colspan="2">{{(isset($testTypeCountArray['clotting_time']))?$testTypeCountArray['clotting_time']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">45. Others</td>
						<td colspan="2"></td>
						<td colspan="2" style="background-color: #777777;"></td>
					</tr>
					<tr>
						<td colspan="2" rowspan="3">12. Others</td>
						<td colspan="2"></td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="6" style="background-color: #cccccc;">7.6 MICROBIOLOGY (CSF URINE, STOOL, BLOOD, SPUTUM, SWABS)</td>
					</tr>

					<tr>
						<td colspan="2"></td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">46. ZN for AFBs</td>
						<td colspan="2">{{(isset($testTypeCountArray['zn_for_afbs']))?$testTypeCountArray['zn_for_afbs']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['zn_for_afbs']))?$testTypeCountArray['zn_for_afbs']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2"></td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">47.Routine Cultures & Sensitivities</td>
						<td colspan="2">{{(isset($testTypeCountArray['routine_cultures_sensitivities']))?$testTypeCountArray['routine_cultures_sensitivities']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['routine_cultures_sensitivities']))?$testTypeCountArray['routine_cultures_sensitivities']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="6" style="background-color: #cccccc;">7.2 BLOOD TRANSFUSION</td>
						<td></td>
						<td colspan="2">48. Gram</td>
						<td colspan="2">{{(isset($testTypeCountArray['gram']))?$testTypeCountArray['gram']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['gram']))?$testTypeCountArray['gram']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">13. ABO Grouping</td>
						<td colspan="2">{{(isset($testTypeCountArray['abo_grouping']))?$testTypeCountArray['abo_grouping']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">49. India Ink</td>
						<td colspan="2">{{(isset($testTypeCountArray['india_ink']))?$testTypeCountArray['india_ink']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['india_ink']))?$testTypeCountArray['india_ink']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">14. Combs</td>
						<td colspan="2">{{(isset($testTypeCountArray['combs']))?$testTypeCountArray['combs']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['combs']))?$testTypeCountArray['combs']['total']:''}}</td>
						<td></td>
						<td colspan="2">50. Wet Preps</td>
						<td colspan="2">{{(isset($testTypeCountArray['wet_preps']))?$testTypeCountArray['wet_preps']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['wet_preps']))?$testTypeCountArray['wet_preps']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">15. Cross Matching</td>
						<td colspan="2">{{(isset($testTypeCountArray['cross_matching']))?$testTypeCountArray['cross_matching']['total']:''}}</td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">51. Urine Microscopy</td>
						<td colspan="2">{{(isset($testTypeCountArray['urine_microscopy']))?$testTypeCountArray['urine_microscopy']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['urine_microscopy']))?$testTypeCountArray['urine_microscopy']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">16. Blood Collected (Units)</td>
						<td colspan="2"></td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="6" style="background-color: #cccccc;">7.7 CLINICAL CHEMISTRY</td>
					</tr>
					<tr>
						<td colspan="2">17. Blood Transfusion(Lts)</td>
						<td colspan="2"></td>
						<td colspan="2" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="6">Renal Profile</td>
					</tr>
					<tr>
						<td colspan="6" style="background-color: #cccccc;">7.3 PARASITOLOGY</td>
						<td></td>
						<td colspan="2">52. Urea</td>
						<td colspan="2">{{(isset($testTypeCountArray['urea']))?$testTypeCountArray['urea']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['urea']))?$testTypeCountArray['urea']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">CATEGORY</td>
						<td colspan="1">0-4 years</td>
						<td colspan="1">5 and over</td>
						<td colspan="1">0-4 years</td>
						<td colspan="1">5 and over</td>
						<td></td>
						<td colspan="2">53. Calcium</td>
						<td colspan="2">{{(isset($testTypeCountArray['calcium']))?$testTypeCountArray['calcium']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['calcium']))?$testTypeCountArray['calcium']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">18. Malaria Microscopy</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_microscopy']))?$testTypeCountArray['malaria_microscopy']['total']['under_5']:''}}</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_microscopy']))?$testTypeCountArray['malaria_microscopy']['total']['above_5']:''}}</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_microscopy']))?$testTypeCountArray['malaria_microscopy']['positive']['under_5']:''}}</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_microscopy']))?$testTypeCountArray['malaria_microscopy']['positive']['above_5']:''}}</td>
						<td></td>
						<td colspan="2">54. Potassium</td>
						<td colspan="2">{{(isset($testTypeCountArray['potassium']))?$testTypeCountArray['potassium']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['potassium']))?$testTypeCountArray['potassium']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">19. Malaria RDTs</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_rdts']))?$testTypeCountArray['malaria_rdts']['total']['under_5']:''}}</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_rdts']))?$testTypeCountArray['malaria_rdts']['total']['above_5']:''}}</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_rdts']))?$testTypeCountArray['malaria_rdts']['positive']['under_5']:''}}</td>
						<td colspan="1">{{(isset($testTypeCountArray['malaria_rdts']))?$testTypeCountArray['malaria_rdts']['positive']['above_5']:''}}</td>
						<td></td>
						<td colspan="2">55. Sodium</td>
						<td colspan="2">{{(isset($testTypeCountArray['sodium']))?$testTypeCountArray['sodium']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['sodium']))?$testTypeCountArray['sodium']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">20. Trypanosoma</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">56. Creatinine</td>
						<td colspan="2">{{(isset($testTypeCountArray['creatinine']))?$testTypeCountArray['creatinine']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['creatinine']))?$testTypeCountArray['creatinine']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">21. Microfilaria</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="6">Liver Profile</td>
					</tr>
					<tr>
						<td colspan="2">22. Leishmania</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">57. ALT</td>
						<td colspan="2">{{(isset($testTypeCountArray['alt']))?$testTypeCountArray['alt']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['alt']))?$testTypeCountArray['alt']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">23. Trichinella</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">58. AST</td>
						<td colspan="2">{{(isset($testTypeCountArray['ast']))?$testTypeCountArray['ast']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['ast']))?$testTypeCountArray['ast']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">24. Borrella</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">59. Albumin</td>
						<td colspan="2">{{(isset($testTypeCountArray['albumin']))?$testTypeCountArray['albumin']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['albumin']))?$testTypeCountArray['albumin']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">Stool Microscopy</td>
						<td colspan="4" style="background-color: #777777;"></td>
						<td></td>
						<td colspan="2">60. Total Protein</td>
						<td colspan="2">{{(isset($testTypeCountArray['total_protein']))?$testTypeCountArray['total_protein']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['total_protein']))?$testTypeCountArray['total_protein']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">25. Entamoeba</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="6">Lipid/Cardiac Profile</td>
					</tr>
					<tr>
						<td colspan="2">26. Glardia Lamblia</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">61. Triglycerides</td>
						<td colspan="2">{{(isset($testTypeCountArray['triglycerides']))?$testTypeCountArray['triglycerides']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['triglycerides']))?$testTypeCountArray['triglycerides']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">27. Trichomonas</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">62. Cholesterol</td>
						<td colspan="2">{{(isset($testTypeCountArray['cholesterol']))?$testTypeCountArray['cholesterol']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['cholesterol']))?$testTypeCountArray['cholesterol']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">28. Stronyloides</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">63. CK</td>
						<td colspan="2">{{(isset($testTypeCountArray['ck']))?$testTypeCountArray['ck']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['ck']))?$testTypeCountArray['ck']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">29. Shistosoma</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">64. LDH</td>
						<td colspan="2">{{(isset($testTypeCountArray['ldh']))?$testTypeCountArray['ldh']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['ldh']))?$testTypeCountArray['ldh']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">30. Taenia</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">65. HDL</td>
						<td colspan="2">{{(isset($testTypeCountArray['hdl']))?$testTypeCountArray['hdl']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['hdl']))?$testTypeCountArray['hdl']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">31. Askaris</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="6">Other Clinical Chemistry Tests</td>
					</tr>
					<tr>
						<td colspan="2">32. Hookworm</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">66. Alkaline Phos</td>
						<td colspan="2">{{(isset($testTypeCountArray['alkaline_phosphates']))?$testTypeCountArray['alkaline_phosphates']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['alkaline_phosphates']))?$testTypeCountArray['alkaline_phosphates']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">33. Trichuris</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">67. Amylase</td>
						<td colspan="2">{{(isset($testTypeCountArray['amylase']))?$testTypeCountArray['amylase']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['amylase']))?$testTypeCountArray['amylase']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">34. Other Parasites</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
						<td></td>
						<td colspan="2">68. Glucose</td>
						<td colspan="2">
							@if(isset($testTypeCountArray['glucose']))
								{{(isset($testTypeCountArray['glucose']['glucose']))?$testTypeCountArray['glucose']['glucose']['total']:''}}
							@endif
						</td>
						<td colspan="2">
							@if(isset($testTypeCountArray['glucose']))
								{{(isset($testTypeCountArray['glucose']['glucose']))?$testTypeCountArray['glucose']['glucose']['total']:''}}
							@endif
						</td>
					</tr>
					<tr>
						<td colspan="6" style="background-color: #cccccc;">7.4 SEROLOGY</td>
						<td></td>
						<td colspan="2">69. Uric Acid</td>
						<td colspan="2">{{(isset($testTypeCountArray['uric_acid']))?$testTypeCountArray['uric_acid']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['uric_acid']))?$testTypeCountArray['uric_acid']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">35. VDRL/RPR</td>
						<td colspan="2">{{(isset($testTypeCountArray['vdrl_rpr']))?$testTypeCountArray['vdrl_rpr']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['vdrl_rpr']))?$testTypeCountArray['vdrl_rpr']['total']:''}}</td>
						<td></td>
						<td colspan="2">70. Lactate</td>
						<td colspan="2">{{(isset($testTypeCountArray['lactate']))?$testTypeCountArray['lactate']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['lactate']))?$testTypeCountArray['lactate']['total']:''}}</td>
					</tr>
					<tr>
						<td colspan="2">36. TPHA</td>
						<td colspan="2">{{(isset($testTypeCountArray['tpha']))?$testTypeCountArray['tpha']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['tpha']))?$testTypeCountArray['tpha']['total']:''}}</td>
						<td></td>
						<td colspan="2" rowspan="2">71. Others</td>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<td colspan="2">37. Shigella Dysentery</td>
						<td colspan="2">{{(isset($testTypeCountArray['shigella_dysentery']))?$testTypeCountArray['shigella_dysentery']['total']:''}}</td>
						<td colspan="2">{{(isset($testTypeCountArray['shigella_dysentery']))?$testTypeCountArray['shigella_dysentery']['total']:''}}</td>
						<td></td>
						<td colspan="2"></td>
						<td colspan="2"></td>
					</tr>
				</tbody>
			</table>
			<br>
			<table  class="table table-condensed report-table-border">
				<tr>
					<td colspan="7" style="background-color: #cccccc;">7.8 SUMMARY OF HIV TEST BY PURPOSE</td>
				</tr>
				<tr>
					<td>CATEGORY</td>
					<td>HCT</td>
					<td>PMTCT</td>
					<td>CLINICAL DIAGNOSIS</td>
					<td>QUALITY CONTROL</td>
					<td>SMC</td>
					<td>TOTAL</td>
				</tr>
				<tr>
					<td>72. DETERMINE</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['determine']['HCT']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['determine']['PMTCT']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['determine']['CLINICAL DIAGNOSIS']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['determine']['QUALITY CONTROL']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['determine']['SMC']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['determine']['total']:''}}</td>
				</tr>
				<tr>
					<td>73. STAT PAK</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['start_pak']['HCT']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['start_pak']['PMTCT']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['start_pak']['CLINICAL DIAGNOSIS']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['start_pak']['QUALITY CONTROL']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['start_pak']['SMC']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['start_pak']['total']:''}}</td>
				</tr>
				<tr>
					<td>74. UNIGOLD</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['unigold']['HCT']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['unigold']['PMTCT']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['unigold']['CLINICAL DIAGNOSIS']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['unigold']['QUALITY CONTROL']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['unigold']['SMC']:''}}</td>
					<td>{{(isset($testTypeCountArray['hiv']))?$testTypeCountArray['hiv']['unigold']['total']:''}}</td>
				</tr>
			</table>
		</div>



	</div>
</div>

@stop
