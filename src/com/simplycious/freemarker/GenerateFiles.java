package com.simplycious.freemarker;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

public class GenerateFiles {
	public static void main(String[] args) throws Exception {

		/* ------------------------------------------------------------------- */
		/* You should do this ONLY ONCE in the whole application life-cycle: */

		/* Create and adjust the configuration */
		Configuration cfg = new Configuration();
		cfg.setDirectoryForTemplateLoading(new File("/home/sushrut/freemarkerpresentation/templates/"));
		cfg.setObjectWrapper(new DefaultObjectWrapper());

		/* ------------------------------------------------------------------- */
		/* You usually do these for many times in the application life-cycle: */

		/* Get or create a template */
		Template temp = cfg.getTemplate("home.ftl");

		/* Create a data-model */
		Map root = new HashMap();
		root.put("user", "Big Joe");
		Map latest = new HashMap();
		root.put("latestProduct", latest);
		latest.put("url", "products/greenmouse.html");
		latest.put("name", "green mouse");

		/* Merge data-model with template */
		Writer out = new OutputStreamWriter(System.out);
		temp.process(root, out);
		out.flush();
	}
}
