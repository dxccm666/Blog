package cn.kee.core.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.kee.core.entity.PageBean;
import cn.kee.core.entity.QueryCondition;
import cn.kee.core.entity.bo.BlogArticleBo;
import cn.kee.core.entity.vo.AlipayEventUserVo;
import cn.kee.core.entity.vo.BlogArticleVo;
import cn.kee.core.service.BlogArticleService;
import cn.kee.core.service.CodingEventService;

@Controller
public class IndexController extends BaseController {
	
	private static Logger logger = Logger.getLogger(IndexController.class);
	
	@Autowired
	private BlogArticleService blogArticleService;
	@Autowired
	private CodingEventService codingEventService;
	
	/**
	 * 主页
	 * @user jinhang
	 * 2014年8月6日
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpServletRequest request, QueryCondition queryCondition){
//		return "index";
		return blog(request, queryCondition);
	}
	
	/**
	 * 博客主页
	 * @user jinhang
	 * 2014年8月6日
	 */
	@RequestMapping(value = "blog", method = RequestMethod.GET)
	public String blog(HttpServletRequest request, QueryCondition queryCondition){
		PageBean<BlogArticleVo> articleBean = null;
		try{
			articleBean = blogArticleService.getArticleList(queryCondition);
		}catch(Exception e){
			e.printStackTrace();
		}
		request.setAttribute("articleList", articleBean != null ? articleBean.getDatas() : null);
		request.setAttribute("pageInfo", articleBean);
		logger.info("get article list size:" + articleBean.getDatas().size());
		return "blog/blog";
	}
	
	/**
	 * 关于页面
	 * @user jinhang
	 * 2014年8月6日
	 */
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public String about(HttpServletRequest request, QueryCondition queryCondition){
		return "blog/about";
	}
	
	/**
	 * 博客活动页面
	 * @user jinhang
	 * 2015年4月23日
	 */
	@RequestMapping(value = "codingEvent", method = RequestMethod.GET)
	public String codingEvent(HttpServletRequest request, QueryCondition queryCondition){
		try {
			BlogArticleBo article = blogArticleService.getArticleById(74);
			request.setAttribute("article", article);
			List<AlipayEventUserVo> eventList = codingEventService.getAlipayEventList();
			request.setAttribute("codingEventList", eventList);
			request.setAttribute("totalMoney", eventList != null ? eventList.get(0).getTotalMoney() : 0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "blog/codingEvent";
	}
	
	/**
	 * 支付宝页面
	 * @user jinhang
	 * 2015年4月23日
	 */
	@RequestMapping(value = "zhifubao", method = RequestMethod.GET)
	public String zhifubao(HttpServletRequest request, QueryCondition queryCondition){
		return "aliPay/index";
	}
	
	/**
	 * 支付宝生成二维码管理
	 * @user jinhang
	 * 2015年4月23日
	 */
	@RequestMapping(value = "alipayapi", method = RequestMethod.POST)
	public String alipayapi(HttpServletRequest request, QueryCondition queryCondition){
		return "aliPay/alipayapi";
	}
	
	/**
	 * 支付宝回调
	 * @user jinhang
	 * 2015年4月23日
	 */
	@RequestMapping(value = "alinotify", method = RequestMethod.GET)
	public String alinotify(HttpServletRequest request, QueryCondition queryCondition){
		return "aliPay/notify_url";
	}
	
	/**
	 * 留下你的想法（用户留言本）
	 * @user jinhang
	 * 2014年8月6日
	 */
	@RequestMapping(value = "blog/leaveYourMind", method = RequestMethod.GET)
	public String leaveYourMind(HttpServletRequest request , QueryCondition queryCondition){
		return "blog/leaveYourMind";
	}
	
	/**
	 * 系统演示
	 * @user jinhang
	 * 2014年8月6日
	 */
//	@RequestMapping(value = "systemDemo", method = RequestMethod.GET)
//	public String leaveYourMind(HttpServletRequest request , QueryCondition queryCondition){
//		return "blog/systemDemo";
//	}

}
