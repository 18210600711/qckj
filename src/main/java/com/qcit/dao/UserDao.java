package com.qcit.dao;

import org.apache.ibatis.annotations.Param;

import com.qcit.model.Student;

public interface UserDao {
	/**
	 * ����student��id��ѯ���ݿ��student�е�ѧ��
	 * 
	 * @param id
	 * @return ����ѧ������
	 */
	public Student getStudentById(String id);

	/**
	 * �����ݿ����student������ѧ��
	 * 
	 * @param student
	 */
	public void setStudent(Student student);

	/**
	 * �޸�ѧ�����е�ѧ��������Ϣ
	 * 
	 * @param student
	 */
	public void updateStudentBasics(Student student);

	/**
	 * ɾ����Ӧid��ѧ����Ϣ
	 * 
	 * @param id
	 */
	public void deleteStudentById(String id);

	/**
	 * ͨ��id�޸�ѧ���û�����
	 * 
	 * @param id
	 * @param newpassword
	 */
	public void updateStudentPwdById(@Param("id")String id, @Param("newpassword")String newpassword);
	/**
	 * �����û����������ѯ�û�
	 * @param password
	 * @param username
	 * @return
	 */
	public Student getStudentByPwdAndUserName(@Param("username")String username,@Param("password")String password);
}
