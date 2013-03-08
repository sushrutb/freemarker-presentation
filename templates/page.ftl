<#include "header.ftl">
<#include "footer.ftl">
<#include "slides.ftl">

<#macro page_view>
<div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
  	<#list slideslist as slide>
	    <div class="<#if slide_index == 0>active</#if> item">
	    	<@.vars[slide]/>
	    </div>
    </#list>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
</#macro>

<#macro page_html> 
<!DOCTYPE html>
<html lang="en">

	<@page_head/>
    <body>
    
    <@page_view/>
    
    <@footer/>
    </body>
</html>
</#macro>

<@page_html/> 