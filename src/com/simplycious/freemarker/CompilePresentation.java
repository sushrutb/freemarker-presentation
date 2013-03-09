/**
 * 
 */
package com.simplycious.freemarker;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * @author sushrut
 * 
 */
public class CompilePresentation {

	/**
	 * @param args
	 * @throws IOException
	 * @throws TemplateException
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static void main(String[] args) throws IOException, TemplateException {

		Configuration cfg = new Configuration();
		cfg.setDirectoryForTemplateLoading(new File("/home/sushrut/freemarkerpresentation/templates/"));
		cfg.setObjectWrapper(new DefaultObjectWrapper());

		Template temp = cfg.getTemplate("page.ftl");

		Map root = new HashMap();
		List<String> slides = new ArrayList<String>();
		for (int i = 0; i < 10; i++) {
			slides.add("slide_" + (i + 1));
		}

		root.put("slideslist", slides);

		Writer out = new OutputStreamWriter(new FileOutputStream(new File("/home/sushrut/freemarkerpresentation/presentation/index.html")));
		temp.process(root, out);
		out.flush();
		System.out.println("Completed");
	}

}
