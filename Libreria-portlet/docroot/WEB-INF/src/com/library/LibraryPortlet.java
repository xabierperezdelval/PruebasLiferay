package com.library;

import java.io.IOException;
import java.util.Date;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.PortletException;
import javax.portlet.PortletRequest;
import javax.portlet.PortletURL;

import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.kernel.util.WebKeys;
import com.liferay.portal.theme.ThemeDisplay;
import com.liferay.portlet.PortletURLFactoryUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;
import com.slayer.model.LMSBook;
import com.slayer.model.impl.LMSBookImpl;
import com.slayer.service.LMSBookLocalServiceUtil;
import com.slayer.service.impl.LMSBookLocalServiceImpl;

/**
 * Portlet implementation class LibraryPortlet
 */
public class LibraryPortlet extends MVCPortlet {
	
	public void updateBook(ActionRequest actionRequest, ActionResponse actionResponse)  throws IOException, PortletException {
		
		String bookTitle =	ParamUtil.getString(actionRequest, "bookTitle");
		String author = ParamUtil.getString(actionRequest, "author");
		
		LMSBookLocalServiceUtil.insertBook(bookTitle, author);
		
//		// 1. Instantiate an empty object of type LMSBookImpl
//		LMSBook lmsBook = new LMSBookImpl();
//		// 2. Generate a unique primary key to be set
//		long bookId = 01;
//		try{
//			bookId = CounterLocalServiceUtil.increment();
//		}catch (SystemException e){
//			e.printStackTrace();		
//		}
//
//		lmsBook.setBookId(bookId);
//		lmsBook.setBookTitle(bookTitle);
//		lmsBook.setAuthor(author);
//		lmsBook.setCreateDate(new Date());
//
//		//4. Call the Service Layer API to persist the object
//
//		try{
//			lmsBook = LMSBookLocalServiceUtil.addLMSBook(lmsBook);
//		}catch (SystemException e){
//			e.printStackTrace();
//		}
		


	
	
//		ThemeDisplay themeDisplay = (ThemeDisplay) actionRequest.getAttribute(WebKeys.THEME_DISPLAY);
//
//		PortletConfig portletConfig = (PortletConfig) actionRequest.getAttribute("javax.portlet.config");
//
//		String portletName = portletConfig.getPortletName();
//
//		PortletURL successPageURL = PortletURLFactoryUtil.create(actionRequest,
//				portletName + " WAR " + portletName + "portlet", themeDisplay.getPlid(),
//				PortletRequest.RENDER_PHASE);
//
//		successPageURL.setParameter("jspPage", LibraryConstants.PAGE_SUCCESS);
//		actionResponse.sendRedirect(successPageURL.toString());



	}


}


