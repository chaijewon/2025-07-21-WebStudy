package com.sist.model;
import java.util.*;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
public class MemberModel {
   @RequestMapping("member/post.do")
   public String member_post(HttpServletRequest request,
		   HttpServletResponse response)
   {
	   
	   return "../member/post.jsp";
   }
}
