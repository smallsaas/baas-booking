package com.jfeat.am.module.appointment.services.domain.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jfeat.am.module.appointment.services.domain.model.AppointmentRecord;
import com.jfeat.am.module.appointment.services.persistence.model.Appointment;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * Created by Code Generator on 2018-06-29
 */
public interface QueryAppointmentDao extends BaseMapper<AppointmentRecord> {
    List<AppointmentRecord> findAppointmentPage(Page<AppointmentRecord> page,
                                                @Param("record") AppointmentRecord record,
                                                @Param("orderBy") String orderBy,
                                                @Param("type") String type,
                                                @Param("search") String search,
                                                @Param("startTime") Date startTime,
                                                @Param("endTime") Date endTime);

    List<Appointment> myAppointment(Page<Appointment> page,
                                    @Param("memberId")Long memberId,
                                    @Param("status")String status);

    Long userIdToVipId(@Param("userId")Long userId);
}