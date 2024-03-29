package com.jfeat.am.module.appointment.services.domain.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jfeat.am.module.appointment.services.persistence.model.AppointmentType;

import java.util.List;

public interface AppointmentTypeService {



    Integer createAppointmentType(AppointmentType entity);

    AppointmentType showAppointmentType(Long id);


    Integer updateAppointmentType(Long id,AppointmentType entity);


    Integer deleteAppointmentType(Long id);


    List<AppointmentType> appointmentType(Page<AppointmentType> page, String name,Integer status);


    List<AppointmentType> findAppointmentType(Long storeId);
}
