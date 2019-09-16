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
			href="{{URL::to('/report/hmis105/'.date('Y-m',strtotime(date('Y-m',strtotime($month)).' -1 month')))}}">
			<span class="btn btn-default ion-android-arrow-back"></span></a>
		{{date('Y-M',strtotime($month))}}
		<a title="Next Month"
			href="{{URL::to('/report/hmis105/'.date('Y-m',strtotime(date('Y-m',strtotime($month)).' +1 month')))}}">
			<span class="btn btn-default ion-android-arrow-forward"></span></a>
	</div>
	<div class="panel-body">
	@if (Session::has('message'))
		<div class="alert alert-info">{{ trans(Session::get('message')) }}</div>
	@endif	
		<div class="table-responsive">
			<p class="c124"><span class="c5">FACILITY LABORATORY MONTHLY REPORT</span></p>
<a id="t.7bfbc9d2907142eb0f3dc0cba0b6fcbbdf40d847"></a><a id="t.0"></a>
<table class="c89">
  <tbody>
    <tr class="c50">
      <td class="c12" colspan="2" rowspan="2"><p class="c6"><span class="c5">1.1. Total Number of laboratory client visits</span></p></td>
      <td class="c49" colspan="1" rowspan="5"><p class="c0"><span class="c5"></span></p></td>
      <td class="c43 c108" colspan="11" rowspan="1"><p class="c6"><span class="c54">1.2. Number of Specimen Collected at Facility and Received from other facilities (</span><span class="c20 c112">For tests done within</span><span class="c5">)</span></p></td>
    </tr>
    <tr class="c34">
      <td class="c71 c43" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c29 c43" colspan="1" rowspan="1"><p class="c6"><span class="c5">1.Blood</span></p></td>
      <td class="c24" colspan="1" rowspan="1"><p class="c6"><span class="c5">2.Stool/ Rectal swab</span></p></td>
      <td class="c24" colspan="1" rowspan="1"><p class="c6"><span class="c5">3.Urine</span></p></td>
      <td class="c84 c43" colspan="1" rowspan="1"><p class="c6"><span class="c5">4.Sputum</span></p></td>
      <td class="c36 c43" colspan="1" rowspan="1"><p class="c6"><span class="c5">5.CSF</span></p></td>
      <td class="c14 c43" colspan="1" rowspan="1"><p class="c6"><span class="c5">6.Biopsy</span></p></td>
      <td class="c73 c43" colspan="1" rowspan="1"><p class="c6"><span class="c5">7.Pus Swab</span></p></td>
      <td class="c41" colspan="1" rowspan="1"><p class="c6"><span class="c5">8.Genital Swab</span></p></td>
      <td class="c24" colspan="1" rowspan="1"><p class="c6"><span class="c5">9.Skin Snip</span></p></td>
      <td class="c80 c43" colspan="1" rowspan="1"><p class="c6"><span class="c5">10. Others</span></p></td>
    </tr>
    <tr class="c69">
      <td class="c102 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">OPd</span></p></td>
      <td class="c106" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$visits['out_patients']}}</span></p></td>
      <td class="c71" colspan="1" rowspan="1"><p class="c6"><span class="c5">Collected(IN)</span></p></td>
      <td class="c29" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['blood_collected_in']}}</span></p></td>
      <td class="c85" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['stool_collected_in']}}</span></p></td>
      <td class="c85" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['urine_collected_in']}}</span></p></td>
      <td class="c84" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['sputum_collected_in']}}</span></p></td>
      <td class="c36" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['csf_collected_in']}}</span></p></td>
      <td class="c14" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['biopsy_collected_in']}}</span></p></td>
      <td class="c73" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['pus_swab_collected_in']}}</span></p></td>
      <td class="c91" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['genital_swab_collected_in']}}</span></p></td>
      <td class="c85" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['skin_collected_in']}}</span></p></td>
      <td class="c80" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['others_collected_in']}}</span></p></td>
    </tr>
    <tr class="c68">
      <td class="c102 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">IPd</span></p></td>
      <td class="c106" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$visits['in_patients']}}</span></p></td>
      <td class="c71" colspan="1" rowspan="1"><p class="c6"><span class="c5">Received(OUT)</span></p></td>
      <td class="c29" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['blood_collected_out']}}</span></p></td>
      <td class="c85" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['stool_collected_out']}}</span></p></td>
      <td class="c85" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['urine_collected_out']}}</span></p></td>
      <td class="c84" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['sputum_collected_out']}}</span></p></td>
      <td class="c36" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['csf_collected_out']}}</span></p></td>
      <td class="c14" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['biopsy_collected_out']}}</span></p></td>
      <td class="c73" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['pus_swab_collected_out']}}</span></p></td>
      <td class="c91" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['genital_swab_collected_out']}}</span></p></td>
      <td class="c85" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['skin_collected_out']}}</span></p></td>
      <td class="c80" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{$sepecimen_counts['others_collected_out']}}</span></p></td>
    </tr>
    <tr class="c68">
      <td class="c102 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Total</span></p></td>
      <td class="c106" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$visits['in_patients'] + (int)$visits['out_patients']}}</span></p></td>
      <td class="c71 c23" colspan="1" rowspan="1"><p class="c96"><span class="c5">Totals</span></p></td>
      <td class="c29 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['blood_collected_in']+(int)$sepecimen_counts['blood_collected_out'] }}</span></p></td>
      <td class="c85 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['stool_collected_in']+(int)$sepecimen_counts['stool_collected_out'] }}</span></p></td>
      <td class="c85 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['urine_collected_in']+(int)$sepecimen_counts['urine_collected_out'] }}</span></p></td>
      <td class="c23 c84" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['sputum_collected_in']+(int)$sepecimen_counts['sputum_collected_out'] }}</span></p></td>
      <td class="c36 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['csf_collected_in']+(int)$sepecimen_counts['csf_collected_out'] }}</span></p></td>
      <td class="c14 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['biopsy_collected_in']+(int)$sepecimen_counts['biopsy_collected_out'] }}</span></p></td>
      <td class="c73 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['pus_swab_collected_in']+(int)$sepecimen_counts['pus_swab_collected_out'] }}</span></p></td>
      <td class="c23 c91" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['genital_swab_collected_in']+(int)$sepecimen_counts['genital_swab_collected_out'] }}</span></p></td>
      <td class="c85 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['skin_collected_in']+(int)$sepecimen_counts['skin_collected_out'] }}</span></p></td>
      <td class="c80 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">{{(int)$sepecimen_counts['others_collected_in']+(int)$sepecimen_counts['others_collected_out'] }}</span></p></td>
    </tr>
  </tbody>
</table>
<ol class="c13 lst-kix_list_1-1 start" start="1">
  <li class="c62 c117"><span class="c5">ROUTINE TESTING</span></li>
</ol>
<p class="c0"><span class="c5"></span></p>
<p class="c6"><span class="c5">2.0. NUMBER OF ROUTINE TESTS DONE</span></p>
<a id="t.f2ec05dd9fcab2829a8235784ad6421fb4d36ffd"></a><a id="t.1"></a>
<table class="c114">
  <tbody>
    <tr class="c17">
      <td class="c43 c120" colspan="8" rowspan="1"><p class="c6 c81"><span class="c54">1.1. Number of Tests Done in Facility Laboratory </span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Lab Tests</span></p></td>
      <td class="c42 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Number Done</span></p></td>
      <td class="c53 c23" colspan="2" rowspan="1"><p class="c6"><span class="c5">Number Positive</span></p></td>
      <td class="c38 c23" colspan="1" rowspan="21"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Lab Tests</span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Number Done</span></p></td>
      <td class="c61 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Number Positive</span></p></td>
    </tr>
    <tr class="c69">
      <td class="c79 c23" colspan="4" rowspan="1"><p class="c6"><span class="c5">HEMATOLOGY (BLOOD)</span></p></td>
      <td class="c23 c101" colspan="3" rowspan="1"><p class="c6"><span class="c54">SEROLOGY</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">01. Hb (non automated)</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{ $total_test_count['hb_non_automated'] }}</span></p></td>
      <td class="c53 c65" colspan="2" rowspan="8"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="2"><p class="c0"><span class="c1"></span></p>
        <p class="c6"><span class="c1">44. VDRL/ RPR</span></p></td>
      <td class="c47" colspan="1" rowspan="2"><p class="c0"><span class="c1">{{$serology_test_counts['vdrl_rrr']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="2"><p class="c0"><span class="c1">{{(isset($testTypeCountArray['vdrl_rpr']))?$testTypeCountArray['vdrl_rpr']['positive']:''}}</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">02. CBC</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{ $total_test_count['cbc'] }}</span></p></td>
    </tr>
    <tr class="c105">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">03. Film Comment </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{ $total_test_count['film_comment'] }} </span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">45. TPHA</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c83 c20">{{$serology_test_counts['tpha']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c83 c20"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">04. ESR </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">
{{ $total_test_count['esr'] }}</span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">46. Shigella Dysentery</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c83 c20">
{{$serology_test_counts['shigella_dysentery']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c83 c20">{{(isset($testTypeCountArray['shigella_dysentery']))?$testTypeCountArray['shigella_dysentery']['positive']:''}}</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">05. Bleeding time </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">
 {{ $total_test_count['bleeding_time']}}</span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">47. Hepatitis B SAgS</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c83 c20">{{$serology_test_counts['hepatitisb_sags']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c83 c20"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">06. Prothrombin time </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">
{{ $total_test_count['prothrombin_time']}}</span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">48. Brucella</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['brucella']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">07. Clotting time </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">
{{ $total_test_count['clotting_time']}}</span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">49. Pregnancy Test (HCG)</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['pregnancy_test']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">08. Sickle Cell </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{ $total_test_count['sickle_cell']}}</span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">50. CRAG</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['crag']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">09. Others </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$total_test_count['others']}}</span></p></td>
      <td class="c53 c65" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">51. Rheumatoid factor</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['rheumatoid_factor']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18 c23" colspan="1" rowspan="1"><p class="c6"><span class="c54">BLOOD TRANSFUSION</span><span class="c1">&nbsp;</span></p></td>
      <td class="c42 c23" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c53 c23" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">52. Hep B Core Ag</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['hepb_core_ag']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">10. AHG (Comb's Test)</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$blood_transfussion_test_counts['ahb_combs_test']}}</span></p></td>
      <td class="c53 c82" colspan="2" rowspan="1"><p class="c0"><span class="c1">{{(isset($testTypeCountArray['combs']['combs']))?$testTypeCountArray['combs']['combs']['positive']:''}}</span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">53. Hep C</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['hepc']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1">TBD</span></p></td>
    </tr>
    <tr class="c69">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">11. ABO Grouping</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$blood_transfussion_test_counts['abo_grouping']}}</span></p></td>
      <td class="c53 c65" colspan="2" rowspan="4"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">54. Hep A</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$serology_test_counts['hepa']}}</span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">12. Rhesus Grouping</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$blood_transfussion_test_counts['rhesus_grouping']}}</span></p></td>
      <td class="c28 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c47 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">13. Cross Matching</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$blood_transfussion_test_counts['cross_matching']}}</span></p></td>
      <td class="c101" colspan="3" rowspan="1"><p class="c6"><span class="c54">MICROBIOLOGY (CSF, URINE, STOOL, BLOOD, SPUTUM, SWABS)</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c54">IMMUNOLOGY </span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">55. Auramine (FM) &nbsp;for AFBs</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18 c23" colspan="1" rowspan="1"><p class="c6"><span class="c20 ">14. CD4 test</span></p></td>
      <td class="c42 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5">
{{$immunology_counts['cd4']}} </span></p></td>
      <td class="c53 c23" colspan="2" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">56. ZN for AFBs</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">15. Viral Load Test</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$immunology_counts['hiv_viral_load']}}</span></p></td>
      <td class="c53 c65" colspan="2" rowspan="2"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">57. Leishman Stain</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">16. Hep B Viral Load</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$immunology_counts['hepb']}}</span>
</p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">58. Gram</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1"></span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">59. India Ink</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c79 c65" colspan="4" rowspan="1"><p class="c6"><span class="c20">MOLECULAR</span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">60. Urine Microscopy</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="2"><p class="c6"><span class="c1">17. TB Genexpert </span></p>
        <p class="c6"><span class="c1">(For Genexpert sites only)</span></p></td>
      <td class="c42" colspan="1" rowspan="2"><p class="c0"><span class="c1 c44">{{$molecular_counts['tb_genexpert']}}</span></p></td>
      <td class="c30 c65" colspan="1" rowspan="1"><p class="c6"><span class="c54">MTB+</span></p></td>
      <td class="c51" colspan="1" rowspan="1"><p class="c0"><span class="c1 c44"></span></p></td>
      <td class="c38" colspan="1" rowspan="3"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">61. Wet Preps</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c30 c65" colspan="1" rowspan="1"><p class="c6"><span class="c5">RR</span></p></td>
      <td class="c51" colspan="1" rowspan="1"><p class="c0"><span class="c1 c44"></span></p></td>
      <td class="c28 c60" colspan="1" rowspan="1"><p class="c6"><span class="c1">62. Others</span></p></td>
      <td class="c47 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">18. Latent TB Infection test</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$molecular_counts['latent_tb']}}</span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c1 c44"></span></p></td>
      <td class="c28 c65" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c47 c65" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">19. TB Lamp Test</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$molecular_counts['tb_lam']}}</span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c38" colspan="1" rowspan="23"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28 c65" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c47 c65" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c23 c79" colspan="4" rowspan="1"><p class="c6"><span class="c54">PARASITOLOGY</span><span class="c1">&nbsp;(Blood)</span></p></td>
      <td class="c28 c65" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c47 c65" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">20. Malaria Microscopy</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{(isset($testTypeCountArray['malaria_microscopy']))?$testTypeCountArray['malaria_microscopy']['total']['under_5']:''}}</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1">{{(isset($testTypeCountArray['malaria_microscopy']))?$testTypeCountArray['malaria_microscopy']['total']['above_5']:''}}</span></p></td>
      <td class="c28 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p>
        <p class="c0"><span class="c1"></span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c61 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">21. Malaria RDTs</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{(isset($testTypeCountArray['malaria_rdts']))?$testTypeCountArray['malaria_rdts']['total']['under_5']:''}}</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1">{{(isset($testTypeCountArray['malaria_rdts']))?$testTypeCountArray['malaria_rdts']['total']['above_5']:''}}</span></p></td>
      <td class="c28 c23" colspan="1" rowspan="1"><p class="c6"><span class="c54">Renal Profile</span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c61 c23" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">22. Trypanosoma</span></p></td>
      <td class="c42 c82" colspan="1" rowspan="5"><p class="c0"><span class="c1"></span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">63. Urea</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="5"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c20">23. Microfilaria</span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c20">64. Calcium</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c20">24. Leishmania</span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c20">65. Potassium</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c20">25. Trichinella</span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">66. Sodium</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">26. Borrellia</span></p></td>
      <td class="c53 c60" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">67. Creatinine</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c79 c23" colspan="4" rowspan="1"><p class="c6"><span class="c54">STOOL MICROSCOPY</span><span class="c1">&nbsp;</span></p></td>
      <td class="c28 c23" colspan="1" rowspan="1"><p class="c6"><span class="c54">Liver Profile</span><span class="c1">&nbsp;</span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">27. Entamoeba</span></p></td>
      <td class="c42 c23" colspan="1" rowspan="12"><p class="c0"><span class="c1"></span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">68. ALT</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="4"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">28. Giardia Lumblia</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">69. AST</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">29. Cryptosporidium </span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">70. Albumin</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">30. Isospora</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">71. Total Protein</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">31. Cyclospora</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28 c23" colspan="1" rowspan="1"><p class="c6"><span class="c54">Lipid/Thyroid Profile</span><span class="c1">&nbsp;</span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">32. Strongyloides</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">72. Triglycerides</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="5"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">33. Shistosoma</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">73. Cholesterol</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">34. Taenia</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">74. Free T3</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">35. Askaris</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">75. Free T4</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">36. Hookworm</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">76. TSH</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">37. Trichuris</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28 c23" colspan="1" rowspan="1"><p class="c6"><span class="c54">Oher Clinical Chemistry Tests</span><span class="c1">&nbsp;</span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c50">
      <td class="c18" colspan="1" rowspan="1"><p class="c6"><span class="c1">38. Other parasites</span></p></td>
      <td class="c53" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">77. Alkaline Phosphate</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="6"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c18 c60" colspan="1" rowspan="1"><p class="c96"><span class="c5">Total Tests Done</span></p></td>
      <td class="c42" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c53 c23" colspan="2" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">78. Amylase</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c79 c23" colspan="4" rowspan="1"><p class="c6"><span class="c54">Culture &amp; Sensitivity</span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">79. Glucose&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c18 c60" colspan="1" rowspan="1"><p class="c6"><span class="c1">39. Blood</span></p>
        <p class="c0"><span class="c1"></span></p></td>
      <td class="c42 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$culture_and_sensitivity_counts['blood']}}</span></p></td>
      <td class="c53 c23" colspan="2" rowspan="5"><p class="c0"><span class="c1"></span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">80. Total Bilirubin</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c18 c60" colspan="1" rowspan="1"><p class="c6"><span class="c1">40. Urine</span></p></td>
      <td class="c42 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$culture_and_sensitivity_counts['urine']}}</span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">81. Lipase</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c18 c60" colspan="1" rowspan="1"><p class="c6"><span class="c1">41. Stool</span></p></td>
      <td class="c42 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$culture_and_sensitivity_counts['stool']}}</span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">82.. AFP</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c18 c60" colspan="1" rowspan="1"><p class="c6"><span class="c1">42. Swabs</span></p></td>
      <td class="c42 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$culture_and_sensitivity_counts['swabs']}}</span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c6"><span class="c1">83. Others</span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c18 c60" colspan="1" rowspan="1"><p class="c6"><span class="c1">43. Sputum</span></p></td>
      <td class="c42 c60" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$culture_and_sensitivity_counts['sputum']}}</span></p></td>
      <td class="c38" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c28" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c40" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
  </tbody>
</table>
<p class="c0"><span class="c5"></span></p>
<p class="c62"><span class="c5">4.0. Summary of HIV Test by Purpose</span></p>
<a id="t.4176207b0439548ddc42ba1627537ecf3b3083aa"></a><a id="t.2"></a>
<table class="c89">
  <tbody>
    <tr class="c17">
      <td class="c64 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Category </span></p></td>
      <td class="c57 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">HCT</span></p></td>
      <td class="c19 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">eMTCT</span></p></td>
      <td class="c109 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Clinical Diagnosis</span></p></td>
      <td class="c3 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">SMC</span></p></td>
      <td class="c94 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Repeat Tests</span></p></td>
      <td class="c23 c27" colspan="1" rowspan="1"><p class="c6"><span class="c5">Test for Verification</span></p></td>
      <td class="c27 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Inconclusive Results</span></p></td>
      <td class="c23 c58" colspan="1" rowspan="1"><p class="c6"><span class="c5">DNA Confirmed Tests</span></p></td>
      <td class="c121 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">IQC</span></p></td>
      <td class="c3 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">EQA</span></p></td>
      <td class="c72 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Total</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c64" colspan="1" rowspan="1"><p class="c6"><span class="c1">84. Determine</span></p></td>
      <td class="c57" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['hct']}}</span></p></td>
      <td class="c19" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['emct']}}</span></p></td>
      <td class="c109" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['clinic']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['smc']}}</span></p></td>
      <td class="c94" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['repeat']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['verification']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['inconclusive']}}</span></p></td>
      <td class="c58" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['dna']}}</span></p></td>
      <td class="c121" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['iqc']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['eqa']}}</span></p></td>
      <td class="c72" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['determine']['total']}}</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c64" colspan="1" rowspan="1"><p class="c6"><span class="c1">85. Statpak</span></p></td>
      <td class="c57" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['hct']}}</span></p></td>
      <td class="c19" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['emct']}}</span></p></td>
      <td class="c109" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['clinic']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['smc']}}</span></p></td>
      <td class="c94" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['repeat']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['verification']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['inconclusive']}}</span></p></td>
      <td class="c58" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['dna']}}</span></p></td>
      <td class="c121" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['iqc']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['eqa']}}</span></p></td>
      <td class="c72" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['statpak']['total']}}</span></p></td>
</tr>
    <tr class="c17">
      <td class="c64" colspan="1" rowspan="1"><p class="c6"><span class="c1">86. SD Bioline</span></p></td>
      <td class="c57" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['hct']}}</span></p></td>
      <td class="c19" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['emct']}}</span></p></td>
      <td class="c109" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['clinic']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['smc']}}</span></p></td>
      <td class="c94" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['repeat']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['verification']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['inconclusive']}}</span></p></td>
      <td class="c58" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['dna']}}</span></p></td>
      <td class="c121" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['iqc']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['eqa']}}</span></p></td>
      <td class="c72" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['sdbioline']['total']}}</span></p></td>
</tr>
    <tr class="c17">
      <td class="c64" colspan="1" rowspan="1"><p class="c6"><span class="c1">87. HIV Syphilis DUO</span></p></td>
      <td class="c57" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['hct']}}</span></p></td>
      <td class="c19" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['emct']}}</span></p></td>
      <td class="c109" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['clinic']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['smc']}}</span></p></td>
      <td class="c94" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['repeat']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['verification']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['inconclusive']}}</span></p></td>
      <td class="c58" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['dna']}}</span></p></td>
      <td class="c121" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['iqc']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['eqa']}}</span></p></td>
      <td class="c72" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['syphilis']['total']}}</span></p></td>
</tr>
    <tr class="c17">
      <td class="c64" colspan="1" rowspan="1"><p class="c6"><span class="c1">88. Oraquick (Self Testing)</span></p></td>
      <td class="c57" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['hct']}}</span></p></td>
      <td class="c19" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['emct']}}</span></p></td>
      <td class="c109" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['clinic']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['smc']}}</span></p></td>
      <td class="c94" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['repeat']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['verification']}}</span></p></td>
      <td class="c27" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['inconclusive']}}</span></p></td>
      <td class="c58" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['dna']}}</span></p></td>
      <td class="c121" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['iqc']}}</span></p></td>
      <td class="c3" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['eqa']}}</span></p></td>
      <td class="c72" colspan="1" rowspan="1"><p class="c0"><span class="c1">{{$hiv_by_purpose['oraquick']['total']}}</span></p></td>
</tr>
  </tbody>
</table>
<p class="c0"><span class="c5"></span></p>
<p class="c0"><span class="c5"></span></p>
<p class="c0"><span class="c5"></span></p>
<p class="c0"><span class="c5"></span></p>
<p class="c0"><span class="c5"></span></p>
<p class="c0"><span class="c5"></span></p>
<p class="c6"><span class="c5">3.0. AMR SURVEILLANCE</span></p>
<a id="t.0a262dff7c35cf53ce624d8eb6c6c4e7e9404a52"></a><a id="t.3"></a>
<table class="c119">
  <tbody>
    <tr class="c97">
      <td class="c23 c127" colspan="43" rowspan="1"><p class="c6 c59"><span class="c5">3.1. National Priority AMR Organisms</span></p></td>
    </tr>
    <tr class="c125">
      <td class="c33 c23" colspan="1" rowspan="1"><p class="c6 c59"><span class="c54">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p></td>
      <td class="c23 c107" colspan="24" rowspan="1"><p class="c124"><span class="c5">3.2. WHO Priority AMR Organisms</span></p></td>
      <td class="c56" colspan="3" rowspan="2"><p class="c6 c59"><span class="c1">9.Vibrio cholerae</span></p></td>
      <td class="c56" colspan="3" rowspan="2"><p class="c6 c59"><span class="c1">10..Enterococcus spp</span></p></td>
      <td class="c56" colspan="3" rowspan="2"><p class="c6 c59"><span class="c1">11..Haemophilus influenzae</span></p></td>
      <td class="c56" colspan="3" rowspan="2"><p class="c6 c59"><span class="c1">12..Neisseria meningitides</span></p></td>
      <td class="c56" colspan="3" rowspan="2"><p class="c6 c59"><span class="c1">13..Campylobacter</span></p></td>
      <td class="c52" colspan="3" rowspan="2"><p class="c6 c59"><span class="c1">14..Others</span></p></td>
    </tr>
    <tr class="c76">
      <td class="c33" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c86" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">1.Klebsiella pneumoniae</span></p></td>
      <td class="c87" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">2.Escherichia coli</span></p></td>
      <td class="c75" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">3.Salmonella spp</span></p></td>
      <td class="c75" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">4.Shigella spp</span></p></td>
      <td class="c78" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">5.Neisseria gonorrhoeae</span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">6.Staphylococcus aureus </span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">7.Streptococcus pneumoniae</span></p></td>
      <td class="c63" colspan="3" rowspan="1"><p class="c6 c59"><span class="c1">8.Acinetobacter baumannii</span></p></td>
    </tr>
    <tr class="c104">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">15. No. of Isolates</span></p></td>
      <td class="c86" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c87" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c75" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c75" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c78" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c63" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c56" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c52" colspan="3" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c90">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c5">ANTIBIOTICS</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c6"><span class="c5">R </span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c6"><span class="c5">I</span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c6"><span class="c5">S</span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">16.Ampicilin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">17.Azithromycin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">18.Amikacin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">19.Ceftriaxone</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">20.Ceftazidime</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">21.Cefotaxime</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">22.Cefoxitin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">23.Cefixime</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">24.Cotrimoxazole</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">25.Ciprofloxacin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">26.Colistin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">27.Gentamicin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">28.Imipenem</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">29.Levofloxacin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">30.Meropenem</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">31.Oxacillin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">32.Penicillin G</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">33.Vancomycin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">34. Augmentin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c116">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">35.Chloramphenicol</span></p>
        <p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">36.Clindamycin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">37.Erythromycin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">38.Nalidixic acid</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">39.Nitrofurantoin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">40.Piperacillin</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c116">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">41.Piperacillin/Tazobactam</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
    <tr class="c7">
      <td class="c33" colspan="1" rowspan="1"><p class="c6"><span class="c1">42.Tetracycline</span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c11" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c31" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c15" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c26" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c32" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c4" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c21" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
      <td class="c45" colspan="1" rowspan="1"><p class="c0"><span class="c1"></span></p></td>
    </tr>
  </tbody>
</table>
<p class="c0"><span class="c5"></span></p>
<p class="c62"><span class="c5">4.0. REFFERRAL TESTING</span></p>
<a id="t.80f42347fffb44d87277e6fc087c364b6bf2089d"></a><a id="t.4"></a>
<table class="c113">
  <tbody>
    <tr class="c110">
      <td class="c55" colspan="1" rowspan="1"><p class="c2"><span class="c5"></span></p>
        <a id="t.5d138b17033eb9b212659cebc7300fba4c972bb5"></a><a id="t.5"></a>
        <table class="c128">
          <tbody>
            <tr class="c46">
              <td class="c39" colspan="4" rowspan="1"><p class="c6"><span class="c5">4.1. Volume of Sample Referred</span></p></td>
            </tr>
            <tr class="c74">
              <td class="c22 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Type of Test</span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">No. of Specimen Referred </span></p></td>
              <td class="c37 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Average Turn Around Time</span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">No. of Pending Results/Feedback</span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">01. EID</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">02. Viral Load for HIV</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">03. CD4</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">04. Sickle Cell Disease Confirmation</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c20">05. Histology</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c20">06. Polio/</span><span class="c20 c118">&nbsp;</span><span class="c1">or Acute Flaccid Paralysis</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c98">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">07. Severe Acute Respiratory Syndrome/Infection (SARS/SARI)</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c69">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">08. TB Genexpert</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c98">
              <td class="c22" colspan="1" rowspan="1"><p class="c6"><span class="c1">09. DST for Multi Drug Resistance TB (MDR TB)</span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22 c23" colspan="1" rowspan="1"><p class="c6"><span class="c1">09. Microbiology</span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0 start" start="1">
                  <li class="c6 c66"><span class="c20">Typhoid Fever </span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="2">
                  <li class="c6 c66"><span class="c1">Cholera </span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c69">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="3">
                  <li class="c6 c66"><span class="c1">Dysentery </span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c96 c7"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c96 c7"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c96 c7"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="4">
                  <li class="c6 c66"><span class="c1">Rota Virus </span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="5">
                  <li class="c6 c66"><span class="c1">Meningitis</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="6">
                  <li class="c6 c66"><span class="c1">Neonatal tetanus</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="7">
                  <li class="c6 c66"><span class="c1">Plague</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_6-0" start="8">
                  <li class="c6 c66"><span class="c1">Isolates</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22 c23" colspan="1" rowspan="1"><p class="c6"><span class="c1">10. Virology</span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c69">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0 start" start="1">
                  <li class="c6 c66"><span class="c1">Measles or Rubella</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0" start="2">
                  <li class="c6 c66"><span class="c1">Viral Haemarrhagic Fevers(VHF)</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c50">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0" start="3">
                  <li class="c6 c66"><span class="c1">Animal Bites (suspected rabies)</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0" start="4">
                  <li class="c6 c66"><span class="c1">Suspected outbreak samples (EBOLA, Marburg, others)</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c50">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0" start="5">
                  <li class="c6 c66"><span class="c1">Hepatitis B core Ag</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c50">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0" start="6">
                  <li class="c6 c66"><span class="c1">Hepatitis B Viral Load </span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_7-0" start="7">
                  <li class="c6 c66"><span class="c1">Hepatitis C Viral load</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22 c23" colspan="1" rowspan="1"><p class="c6"><span class="c1">11. Parasitology</span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c50">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_8-0 start" start="1">
                  <li class="c6 c66"><span class="c1">Hemo parasites</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_8-0" start="2">
                  <li class="c6 c66"><span class="c1">Intestinal parasites</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c50">
              <td class="c22" colspan="1" rowspan="1"><ol class="c13 lst-kix_list_8-0" start="3">
                  <li class="c6 c66"><span class="c1">Tissue parasites</span></li>
                </ol></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c22 c23" colspan="1" rowspan="1"><p class="c96"><span class="c5">Totals</span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c37 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c25 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
          </tbody>
        </table>
        <p class="c0"><span class="c5"></span></p></td>
      <td class="c103" colspan="1" rowspan="1"><p class="c2"><span class="c5"></span></p>
        <a id="t.23db3c9268955fee7aafea61f577d361e3306a3c"></a><a id="t.6"></a>
        <table class="c128">
          <tbody>
            <tr class="c46">
              <td class="c23 c126" colspan="10" rowspan="1"><p class="c6"><span class="c5">4.2. Number of Routine Tests that could not be conducted at facility and were referred to hub or other facility </span></p></td>
            </tr>
            <tr class="c92">
              <td class="c88" colspan="1" rowspan="2"><p class="c6"><span class="c54">Routine Test Type </span><span class="c20 c112">(specify type test)</span></p></td>
              <td class="c23 c95" colspan="9" rowspan="1"><p class="c6"><span class="c5">Reasons for Referrals and Reasons for not conducting tests that are on test menu</span></p></td>
            </tr>
            <tr class="c115">
              <td class="c16" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Equipment break down</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Reagent stock out</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Supplies stock out</span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Power outage</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">No testing expertise</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Lack of required equipment</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Confirmatory testing</span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">For QA re-testing</span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c6 c59"><span class="c5">Others</span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">CD4</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">TB </span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">CBC</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c68">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">Chemistry</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">Microbiology</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">HIV screening</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">VDRL</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">Haematology</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
            <tr class="c46">
              <td class="c88" colspan="1" rowspan="1"><p class="c6"><span class="c5">Parasitology</span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c16" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c67" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
              <td class="c77" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
            </tr>
          </tbody>
        </table>
        <p class="c0"><span class="c5"></span></p></td>
    </tr>
  </tbody>
</table>
<p class="c0 c70"><span class="c5"></span></p>
<p class="c0 c70"><span class="c5"></span></p>
<p class="c0 c70"><span class="c5"></span></p>
<ol class="c13 lst-kix_list_10-0 start" start="5">
  <li class="c62 c111"><span class="c5">MONTHLY LABORATORY REPORT ON REJECTED SPECIMEN</span></li>
</ol>
<a id="t.e45ddff25573c00cf290f8ea966fead2ed7d7f70"></a><a id="t.7"></a>
<table class="c129">
  <tbody>
    <tr class="c17">
      <td class="c43 c123" colspan="9" rowspan="1"><p class="c6"><span class="c5">5.1. Rejection Rate of Specimen Collected at a Facility</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c99 c23" colspan="1" rowspan="2"><p class="c0"><span class="c5"></span></p>
        <p class="c6"><span class="c5">Reasons for Specimen Rejection</span></p></td>
      <td class="c23 c122" colspan="8" rowspan="1"><p class="c124"><span class="c54 c48">Sample Type</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c9 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Blood</span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Stool/Rectal Swab</span></p></td>
      <td class="c10 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Urine</span></p></td>
      <td class="c37 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Sputum</span></p></td>
      <td class="c25 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Pus Swab</span></p></td>
      <td class="c37 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Genital Swab</span></p></td>
      <td class="c10 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Skin snip</span></p></td>
      <td class="c10 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">Others</span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20 c48">01. Inadequate specimen volume</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20 c48">02. Hemolyzed specimen</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20 c48">03. Specimen without lab request form</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">04. No test specified on </span><span class="c1">lab request form accompanying specimen</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20 c48">05. Specimen without label or identifier</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c1">06. Wrong specimen label</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">07. Unclear specimen label</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20 c48">08. Wrong specimen container</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">09. Damaged </span><span class="c20 c48">specimen</span><span class="c1">&nbsp;container</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">10. Too old </span><span class="c20 c48">specimen</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">11. Date of </span><span class="c20 c48">specimen</span><span class="c1">&nbsp;collection not specified</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">12. Time of </span><span class="c20 c48">specimen</span><span class="c1">&nbsp;collection not specified</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c20">13. </span><span class="c20 c48">Specimen</span><span class="c1">&nbsp;type unacceptable for required test</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c35" colspan="1" rowspan="1"><p class="c6"><span class="c1">14. Other reasons</span></p></td>
      <td class="c9" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
    <tr class="c17">
      <td class="c99 c23" colspan="1" rowspan="1"><p class="c96"><span class="c5">Totals </span></p></td>
      <td class="c9 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c47 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c37 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c25 c23" colspan="1" rowspan="1"><p class="c6"><span class="c5">`</span></p></td>
      <td class="c37 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
      <td class="c10 c23" colspan="1" rowspan="1"><p class="c0"><span class="c5"></span></p></td>
    </tr>
  </tbody>
</table>
		</div>
        
        
        
	</div>
</div>

@stop