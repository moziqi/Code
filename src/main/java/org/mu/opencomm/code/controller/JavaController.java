package org.mu.opencomm.code.controller;

import org.mu.opencomm.code.entity.JarFile;
import org.mu.opencomm.code.service.JarFileService;
import org.mu.opencomm.code.service.TagService;
import org.mu.opencomm.common.controller.GenericController;
import org.mu.opencomm.common.dbutil.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/java/")
public class JavaController implements GenericController {

	private final static int PN = 1;
	private final static int SIZE = 5;

	@Autowired
	private JarFileService jarFileService;

	@Autowired
	private TagService tagService;

	@RequestMapping(value = "home.html", method = RequestMethod.GET)
	public ModelAndView home(
			@RequestParam(value = "pn", required = false) Integer pn,
			@RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
			ModelMap model) {
		return new ModelAndView("resource/libs", model);
	}

	@RequestMapping(value = "libs.html", method = RequestMethod.GET)
	public ModelAndView libs(
			@RequestParam(value = "pn", required = false, defaultValue = "0") Integer pn,
			@RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
			@RequestParam(value = "tag", required = false) String tag,
			ModelMap model) {
		Page<JarFile> jarFiles = jarFileService.getJarFiles(pn, size);
		// 假设获取下载列表
		Page<JarFile> downloadJarFiles = jarFileService.getJarFiles(PN, SIZE);
		model.put("downloadJarFiles", downloadJarFiles);
		model.put("page", jarFiles);
		model.put("tags", tagService.getMostTagged("java"));
		return new ModelAndView("resource/libs", model);
	}

	@RequestMapping(value = "jar/{name}.html", method = RequestMethod.GET)
	public ModelAndView library(@PathVariable("name") String name,
			ModelMap model) {
		JarFile jarFile = jarFileService.getJarFile(name);
		jarFile.setDescription("Description: " + jarFile.getName());
		jarFile.setTags(new String[] { "Java", "Framework", "Jar" });
		jarFile.setCategory(new String[] { "Java", "Framework", "Jar" });
		model.put("jarFile", jarFile);
		return new ModelAndView("resource/library", model);
	}

	public JarFileService getJarFileService() {
		return jarFileService;
	}

	public void setJarFileService(JarFileService jarFileService) {
		this.jarFileService = jarFileService;
	}

	public TagService getTagService() {
		return tagService;
	}

	public void setTagService(TagService tagService) {
		this.tagService = tagService;
	}

}
