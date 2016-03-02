package cn.kee.core.dao;

import java.util.Date;
import java.util.List;

import cn.kee.core.entity.bo.CalendarBo;

public interface CalendarDao {
	
	public List<CalendarBo> getCalendar(Date startTime, Date endTime) throws Exception;
	
	public int quickAdd(CalendarBo calendar) throws Exception;
	
	public boolean quickUpdate(CalendarBo calendar) throws Exception;
	
	public boolean quickDel(int calendarId) throws Exception;

}
