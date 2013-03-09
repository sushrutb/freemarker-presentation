<#include "header.ftl">
<#include "footer.ftl">
<#include "slides.ftl">

<#macro page_view>
<div class="container">
<div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
  	<#list slideslist as slide>
		<div class="<#if slide_index == 0>active </#if>item">
	  		<div class="container" style="max-height:6500px;">
		  		<div style="min-height:650px;">
		    		<@.vars[slide]/>
				</div>
		    </div>
	    </div>
    </#list>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev" style="margin-left:-100px;">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next" style="margin-right:-100px;">&rsaquo;</a>
</div>
</div>
</#macro>

<#macro page_html> 
<!DOCTYPE html>
<html lang="en">

	<@page_head/>
    <body style="font-family:'Roboto Condensed'">
    
    <@page_view/>
    
    <@footer/>
    </body>
</html>
</#macro>

<@page_html/> 