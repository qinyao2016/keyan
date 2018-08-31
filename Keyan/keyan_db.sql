-- phpMyAdmin SQL Dump
-- version 3.0.1.1
-- http://www.phpmyadmin.net
--
-- �������汾: 5.1.29
-- PHP �汾: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- --------------------------------------------------------

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a'); 

CREATE TABLE IF NOT EXISTS `t_userInfo` (
  `user_name` varchar(30)  NOT NULL COMMENT 'user_name',
  `password` varchar(30)  NOT NULL COMMENT '��¼����',
  `name` varchar(20)  NOT NULL COMMENT '����',
  `gender` varchar(4)  NOT NULL COMMENT '�Ա�',
  `birthDate` varchar(20)  NULL COMMENT '��������',
  `userPhoto` varchar(60)  NOT NULL COMMENT '�û���Ƭ',
  `telephone` varchar(20)  NOT NULL COMMENT '��ϵ�绰',
  `email` varchar(50)  NOT NULL COMMENT '����',
  `address` varchar(80)  NULL COMMENT '��ͥ��ַ',
  `regTime` varchar(20)  NULL COMMENT 'ע��ʱ��',
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_manager` (
  `managerUserName` varchar(20)  NOT NULL COMMENT 'managerUserName',
  `password` varchar(20)  NOT NULL COMMENT '��¼����',
  `name` varchar(20)  NOT NULL COMMENT '����',
  `sex` varchar(4)  NOT NULL COMMENT '�Ա�',
  `telephone` varchar(20)  NOT NULL COMMENT '��ϵ�绰',
  PRIMARY KEY (`managerUserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `t_projectType` (
  `projectTypeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀ����id',
  `projectTypeName` varchar(20)  NOT NULL COMMENT '��Ŀ��������',
  PRIMARY KEY (`projectTypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_project` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT COMMENT '��Ŀid',
  `projectTypeObj` int(11) NOT NULL COMMENT '��Ŀ����',
  `projectName` varchar(20)  NOT NULL COMMENT '��Ŀ����',
  `projectPhoto` varchar(60)  NOT NULL COMMENT '��Ŀ��ͼ',
  `mainPerson` varchar(20)  NOT NULL COMMENT '������',
  `comeFrom` varchar(20)  NULL COMMENT '��Ŀ��Դ',
  `kydh` varchar(20)  NOT NULL COMMENT '���д���',
  `startDate` varchar(20)  NULL COMMENT '��ʼ����',
  `endDate` varchar(20)  NULL COMMENT '��������',
  `kyMoney` float NOT NULL COMMENT '�����ʽ�',
  `projectDesc` varchar(5000)  NOT NULL COMMENT '��Ŀ����',
  `userObj` varchar(30)  NOT NULL COMMENT '�ύ�û�',
  `shzt` varchar(20)  NOT NULL COMMENT '���״̬',
  `shr` varchar(20)  NULL COMMENT '�����',
  `shsj` varchar(20)  NULL COMMENT '���ʱ��',
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_thesis` (
  `thesisId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `xkml` varchar(20)  NOT NULL COMMENT 'ѧ������',
  `name` varchar(20)  NOT NULL COMMENT '��������',
  `lwfm` varchar(60)  NOT NULL COMMENT '���ķ���ͼ',
  `author` varchar(20)  NOT NULL COMMENT '����',
  `teacher` varchar(20)  NOT NULL COMMENT 'ָ����ʦ',
  `publishDate` varchar(20)  NULL COMMENT '��������',
  `thesisDesc` varchar(5000)  NOT NULL COMMENT '���Ľ���',
  `thesisFile` varchar(60)  NOT NULL COMMENT '�����ļ�',
  `xgyj` varchar(500)  NULL COMMENT '�޸����',
  `userObj` varchar(30)  NOT NULL COMMENT '�ύ�û�',
  PRIMARY KEY (`thesisId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `t_notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `title` varchar(80)  NOT NULL COMMENT '����',
  `content` varchar(5000)  NOT NULL COMMENT '��������',
  `publishDate` varchar(20)  NULL COMMENT '����ʱ��',
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

ALTER TABLE t_project ADD CONSTRAINT FOREIGN KEY (projectTypeObj) REFERENCES t_projectType(projectTypeId);
ALTER TABLE t_project ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);
ALTER TABLE t_thesis ADD CONSTRAINT FOREIGN KEY (userObj) REFERENCES t_userInfo(user_name);


