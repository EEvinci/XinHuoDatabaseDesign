| VERSION | CONTENT | AUTHOR                                       | DATE       | REMARK                                             |
| ------- | ------- | -------------------------------------------- | ---------- | -------------------------------------------------- |
| V1.0    | Born    | 李琛、陈家鹏、许琮御、尹世超、沈赢杰、司德昊 | 2022/10/26 | 基本表确定, 待设定主键和外键, 一些表待设置属性     |
| V2.0    | Update  | 李琛                                         | 2022/11/17 | 基本表属性完善，个别表属性调整，新增考卷答卷相关表 |



[TOC]

# DATABASE DESIGN

## exam_test_sheet 考试考卷

空白卷—用以管理员管理往年试卷

以title考试名查询往年考卷

| Field        | FieldName | Type     | Bind | Remark                                           |
| ------------ | --------- | -------- | ---- | ------------------------------------------------ |
| id           | id        | varchar  | PK   |                                                  |
| 考试名       | title     | varchar  |      |                                                  |
| 考试对象     | type      | varchar  |      | **入党积极分子<br />发展对象**<br />**党校考试** |
| 考试时间     | date      | date     |      |                                                  |
| 考卷内容     | content   | longtext |      |                                                  |
| 是否结束考试 | hasDone   | tinyint  |      |                                                  |



## exam_answer_sheet 学生考试答卷

| Field    | FieldName     | Type     | Bind | Remark                                                   |
| -------- | ------------- | -------- | ---- | -------------------------------------------------------- |
| id       | id            | varchar  | PK   |                                                          |
| 考试名   | title         | varchar  |      |                                                          |
| 学生学号 | studentNumber | varchar  |      |                                                          |
| 答卷内容 | content       | longtext |      |                                                          |
| 分数     | score         | varchar  |      |                                                          |
| 答卷类型 | type          | varchar  |      | **入党积极分子考试<br />发展对象考试**<br />**党校考试** |
| 考试日期 | date          | datetime |      |                                                          |



## article 文章

| Field    | FieldName    | Type    | Bind | Remark                                                       |
| -------- | ------------ | ------- | ---- | ------------------------------------------------------------ |
| id       | id           | varchar | PK   |                                                              |
| 标题     | title        | varchar |      |                                                              |
| 时间     | time         | varchar |      |                                                              |
| 作者     | writer       | varchar |      |                                                              |
| 内容     | content      | varchar |      |                                                              |
| 文章类型 | type         | varchar |      | **学子获奖<br/>城院动态<br/>主题活动<br/>头条<br/>融媒思政<br/>党史人物信息<br/>党员风采<br/>党史故事<br/>活动广场** |
| 图片链接 | images       | varchar |      |                                                              |
| 所属组织 | organization | varchar |      |                                                              |
| 学生姓名 | stuName      | varchar |      |                                                              |
| 学生班级 | stuClass     | varchar |      |                                                              |



## fill_in_question 填空题

| Field    | FieldName  | Type    | Bind | Remark |
| -------- | ---------- | ------- | ---- | ------ |
| id       | id         | varchar | PK   |        |
| 题干     | content    | text    |      |        |
| 正确答案 | trueAnswer | varchar |      |        |



## gift_score_record 积分记录

| Field        | FieldName | Type    | Bind | Remark |
| ------------ | --------- | ------- | ---- | ------ |
| id           | id        | varchar | PK   |        |
| 学生学号     | stuNumber | varchar |      |        |
| 获取积分行为 | action    | varchar |      |        |
| 时间         | time      | date    |      |        |
| 积分值       | value     | int     |      |        |



## great_man 伟人

| Field    | FieldName   | Type     | Bind | Remark |
| -------- | ----------- | -------- | ---- | ------ |
| id       | id          | varchar  | PK   |        |
| 姓名     | name        | varchar  |      |        |
| 伟人肖像 | image       | varchar  |      |        |
| 伟人事迹 | description | longtext |      |        |



## item_exchange 物品兑换

| Field          | FieldName | Type    | Bind | Remark |
| -------------- | --------- | ------- | ---- | ------ |
| id             | id        | varchar | PK   |        |
| 物品名         | name      | varchar |      |        |
| 兑换所需积分值 | value     | varchar |      |        |
| 物品图片链接   | image     | varchar |      |        |



## judge_question 判断题

| Field    | FieldName  | Type    | Bind | Remark |
| -------- | ---------- | ------- | ---- | ------ |
| id       | id         | varchar | PK   |        |
| 题干     | content    | varchar |      |        |
| 正确答案 | trueAnswer | varchar |      |        |
| 是否作答 | checked    | tinyint |      |        |
| 选项     | options    | varchar |      |        |



## learning_time 学习时长

| Field      | FieldName | Type    | Bind | Remark |
| ---------- | --------- | ------- | ---- | ------ |
| id         | id        | varchar | PK   |        |
| 学生学号   | stuNumber | varchar |      |        |
| 日期       | date      | date    |      |        |
| 学习总时长 | timeCount | time    |      |        |



## message_notification 消息提醒

| Field        | FieldName | Type     | Bind | Remark |
| ------------ | --------- | -------- | ---- | ------ |
| id           | id        | varchar  | PK   |        |
| 消息提醒内容 | content   | varchar  |      |        |
| 提醒时间     | time      | datetime |      |        |
| 学生学号     | stuNumber | varchar  |      |        |

​	

## multiple_option_question 多选题

| Field    | FieldName  | Type    | Bind | Remark |
| -------- | ---------- | ------- | ---- | ------ |
| id       | id         | varchar | PK   |        |
| 题干     | question   | text    |      |        |
| 正确答案 | trueAnswer | varchar |      |        |
| 选项     | options    | text    |      |        |
| 是否作答 | checked    | varchar |      |        |



## organization_meeting_record 组织会议记录

| Field    | FieldName    | Type     | Bind | Remark                     |
| -------- | ------------ | -------- | ---- | -------------------------- |
| id       | id           | varchar  | PK   |                            |
| 会议类型 | type         | varchar  |      | **党代表会<br />党小组会** |
| 参会人数 | participants | int      |      |                            |
| 应到人数 | participants | int      |      |                            |
| 会议时间 | time         | date     |      |                            |
| 会议主题 | title        | varchar  |      |                            |
| 会议内容 | content      | longtext |      |                            |



## organization_news 组织新闻

| Field    | FieldName | Type     | Bind | Remark |
| -------- | --------- | -------- | ---- | ------ |
| id       | id        | varchar  | PK   |        |
| 发布时间 | time      | datetime |      |        |
| 新闻主题 | title     | varchar  |      |        |
| 作者     | author    | varchar  |      |        |
| 新闻内容 | content   | longtext |      |        |



## organization_info 组织信息

| Field      | FieldName | Type    | Bind | Remark |
| ---------- | --------- | ------- | ---- | ------ |
| id         | id        | varchar | PK   |        |
| 组织名称   | name      | varchar |      |        |
| 组织总人数 | total     | int     |      |        |



## practice_answer_sheet 学生练习答卷

| Field    | FieldName     | Type     | Bind | Remark                                 |
| -------- | ------------- | -------- | ---- | -------------------------------------- |
| id       | id            | varchar  | PK   |                                        |
| 考试名   | title         | varchar  |      |                                        |
| 学生学号 | studentNumber | varchar  |      |                                        |
| 答卷内容 | content       | longtext |      |                                        |
| 分数     | score         | varchar  |      |                                        |
| 答卷类型 | type          | varchar1 |      | **每日答题<br/>每周答题<br/>专项答题** |
| 答题时间 | date          | datetime |      |                                        |



## pratice_test_sheet 练习卷

| Field    | FieldName | Type     | Bind | Remark |
| -------- | --------- | -------- | ---- | ------ |
| id       | id        | varchar  | PK   |        |
| 卷名     | title     | varchar  |      |        |
| 类型     | type      | varchar  |      |        |
| 练习内容 | content   | longtext |      |        |
| 答题时间 | data      | datetime |      |        |



## sign_in_record 签到记录表

| Field    | FieldName | Type    | Bind | Remark |
| -------- | --------- | ------- | ---- | ------ |
| id       | id        | varchar | PK   |        |
| 学生学号 | stuNumber | varchar |      |        |
| 签到日期 | date      | date    |      |        |



## single_option_question 单选题

| Field    | FieldName  | Type    | Bind | Remark                              |
| -------- | ---------- | ------- | ---- | ----------------------------------- |
| id       | id         | varchar | PK   |                                     |
| 是否作答 | checked    | tinyint |      | 题目未做checked=0 题目已做checked=1 |
| 题干     | question   | text    |      |                                     |
| 正确答案 | trueAnswer | varchar |      |                                     |
| 选项     | options    | text    |      |                                     |



## student 学生

| Field    | FieldName    | Type    | Bind | Remark                         |
| -------- | ------------ | ------- | ---- | ------------------------------ |
| 姓名     | name         | varchar |      |                                |
| 学号     | number       | varchar | PK   |                                |
| 积分值   | giftScore    | varchar |      |                                |
| 所属组织 | organization | varchar |      |                                |
| 电话号码 | phoneNumber  | varchar |      |                                |
| 身份     | identity     | varchar |      | **入党积极分子<br />发展对象** |



## swear_record 宣誓记录

| Field    | FieldName  | Type    | Bind | Remark |
| -------- | ---------- | ------- | ---- | ------ |
| id       | id         | varchar | PK   |        |
| 学生学号 | stuNumber  | varchar |      |        |
| 宣誓次数 | swearCount | int     |      |        |



## temporary_visitor 游客

| Field    | FieldName   | Type    | Bind | Remark |
| -------- | ----------- | ------- | ---- | ------ |
| id       | id          | varchar | PK   |        |
| 电话号码 | phoneNumber | varchar |      |        |



## to_do 待办事项

| Field        | FieldName     | Type    | Bind | Remark |
| ------------ | ------------- | ------- | ---- | ------ |
| id           | id            | varchar | PK   |        |
| 学生学号     | studentNumber | varchar |      |        |
| 待办事项内容 | content       | varchar |      |        |



## today_in_history 历史上的今天

| Field | FieldName | Type     | Bind | Remark                                |
| ----- | --------- | -------- | ---- | ------------------------------------- |
| id    | id        | varchar  | PK   |                                       |
| 日期  | date      | varchar  |      | 因为数据格式原因，采用varchar进行存储 |
| 内容  | content   | longtext |      |                                       |

