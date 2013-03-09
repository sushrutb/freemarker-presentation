<#macro slide_1>
<div style="text-align:center;">
	<div class="row span12">
		<h1>Freemarker Presentation</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="text-align:center;font-size:32px;">
		<h3>Pune Java User Group</h3>
		<h5>9th March 2013</h5>
	</span>
	<span class="row span12" style="text-align:center;font-size:22px;margin-top:120px;">
		<h3>by <a href="http://linkedin.com/in/sushrutbidwai">Sushrut Bidwai</a></h3>
	</span>
	<span class="row span12" style="text-align:center;font-size:22px;">
		<h4><a href="http://wisebuy.in">Wisebuy.in</a></h4>
	</span>
</div>
</#macro>

<#macro slide_2>
<div>
	<div class="row span12">
		<h1>What is Wisebuy.in?</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
		<ul>
			<li style="line-height:40px;">Shopping search engine</li>
			<li style="line-height:40px;">1 Million+ products</li>
			<li style="line-height:40px;">From 50+ stores</li>
			<li style="line-height:40px;">80+ categories</li>
		</ul>
	</span>
</div>
</#macro>
<#macro slide_3>
<div>
	<div class="row span12">
		<h1>Why Freemarker?</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
		<ul>
			<li style="line-height:24px;">Simple</li>
			<li style="line-height:24px;">Powerful
				<ul>
					<li style="line-height:24px;">Code reuse - Macros</li>
					<li style="line-height:24px;">Template libraries - for larger projects</li>
					<li style="line-height:24px;">Arbitrary data models</li>
				</ul>
			</li>
			<li style="line-height:24px;">Fast
				<ul>
					<li style="line-height:24px;">Caching</li>
					<li style="line-height:24px;">Fast page assembly</li>
				</ul>
			</li>
			<li style="line-height:24px;">Testing of markup is easy</li>
		</ul>
	</span>
</div>
</#macro>
<#macro slide_4>
<div>
	<div class="row span12">
		<h1>Template Structure</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
	<#noparse>
	<pre class="prettyprint linenums">
	<code>
		&lt;html&gt;
		&lt;head&gt;
		  &lt;title&gt;Welcome!&lt;/title&gt;
		&lt;/head&gt;
		&lt;body&gt;
		  &lt;#-- Greet the user with his/her name --&gt;
		  &lt;h1&gt;Welcome ${user}!&lt;/h1&gt;
		  &lt;p&gt;We have these animals:
		  &lt;ul&gt;
		  &lt;#list animals as being&gt;
		    &lt;li&gt;${being.name} for ${being.price} Euros
		  &lt;/#list&gt;
		  &lt;/ul&gt;
		&lt;/body&gt;
		&lt;/html&gt;
	</code>  
	</pre>
	</#noparse>
	</span>
</div>
</#macro>
<#macro slide_5>
<div>
	<div class="row span12">
		<h1>Directives</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
		<ul>
			<li style="line-height:24px;">if / else /elseif </li>
			<li style="line-height:24px;">switch / case / default / break </li>
			<li style="line-height:24px;">list / break </li>
			<li style="line-height:24px;">include / import </li>
			<li style="line-height:24px;">function / return </li>
			<li style="line-height:24px;">macro / nested / return</li>
			<li style="line-height:24px;">visit / recurse / fallback - used for xml processing</li>
		</ul>
	</span>
</div>
</#macro>
<#macro slide_6>
<div>
	<div class="row span12">
		<h1>Macro  and nesting</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
	<#noparse>
	<pre class="prettyprint linenums">
	<code>
			&lt;#macro repeat count&gt;
			  &lt;#list 1..count as x&gt;
			    &lt;#nested x, x/2, x==count&gt;
			  &lt;/#list&gt;
			&lt;/#macro&gt;
			&lt;@repeat count=4 ; c, halfc, last&gt;
			  ${c}. ${halfc}&lt;#if last&gt; Last!&lt;/#if&gt;
			&lt;/@repeat&gt;  
	</code>
	</pre>
	</#noparse>
	</span>
</div>
</#macro>

<#macro slide_7>
<div>
	<div class="row span12">
		<h1>Templating templates</h1>
		<hr/>
	</div>
	
	<span class="row span12">
	<#noparse>
	<pre class="prettyprint linenums">
	<code>
		&lt;#macro page_html&gt; 
		&lt;!DOCTYPE html&gt;
		&lt;html lang="en"&gt;
			&lt;@page_head/&gt;
		    &lt;body&gt;
		    	&lt;@navbar/&gt;
		    	&lt;@productmenu/&gt;
				&lt;form name="mainForm" class="form-inline" method="GET" action="/products"&gt;
				&lt;div style="margin-top:20px;margin-bottom:20px;"&gt;    	
			   		&lt;@searchbar/&gt;
		   		&lt;/div&gt;
		   		&lt;@page_view/&gt;
		    	&lt;/form&gt;
				&lt;@aboutcontent/&gt;
		   		&lt;@footer/&gt;
		   		&lt;@social_buttons/&gt;
		    &lt;/body&gt;
		&lt;/html&gt;
		&lt;/#macro&gt; 
	</code>
	</pre>
	</#noparse>
	</span>
</div>
</#macro>
<#macro slide_8>
<div>
	<div class="row span12">
		<h1>Namespaces and FTL Libraries</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
		<ul>
			<li style="line-height:34px;">Global and local variables</li>
			<li style="line-height:34px;">Import with a hash name</li>
			<li style="line-height:34px;">Helps in dividing up larger project</li>
			<li style="line-height:34px;">Creating re-usable components</li>
		</ul>
	</span>
</div>
</#macro>
<#macro slide_9>
<div>
	<div class="row span12">
		<h1>Custom Framework</h1>
		<hr/>
	</div>
	
	<span class="row span12" style="font-size:22px;margin-top:120px;line-height:56px;">
		<ul>
			<li style="line-height:34px;">ursl.yml</li>
			<li style="line-height:34px;">Data model creation</li>
			<li style="line-height:34px;">Callbacks using reflection</li>
			<li style="line-height:34px;">FTL Libraries</li>
		</ul>
	</span>
</div>
</#macro>
<#macro slide_10>
<div style="text-align:center;">
	<div class="row span12">
		<h1>Thank You!</h1>
		<hr/>
	</div>
	<span class="row span12" style="text-align:center;font-size:32px;">
		<h3>Pune Java User Group</h3>
		<h5>9th March 2013</h5>
	</span>
	<span class="row span12" style="text-align:center;font-size:22px;margin-top:120px;">
		<h3>by <a href="http://linkedin.com/in/sushrutbidwai">Sushrut Bidwai</a></h3>
	</span>
	<span class="row span12" style="text-align:center;font-size:22px;">
		<h4><a href="http://wisebuy.in">Wisebuy.in</a></h4>
	</span>
</div>
</#macro>
