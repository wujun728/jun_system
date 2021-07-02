# 智慧园区管理系统V2.0

#### 介绍
基于园区业务，深度挖掘流程与系统的关键结合点，发挥互联网的优势，系统主要实现园区的资产管理，企业服务及档案管理，园区的活动及商城的搭建。 
智慧园区是用信息技术为手段、智慧应用为支撑，全面整合园区内外的资源，使园区管理服务等更高效便捷，实现基础设施网络化、管理信息化、功能服务精准化和产业发展智能化，
全面提升园区信息化管理水平。打造城市代言，智慧城市缩影、打造产业基地，谋求跨越发展、传感网、物联网等战略性新兴技术的示范应用；向规模化、集群化、现代化升级、资源集中化，成本优势，规模优势，产业链协同、物流配套畅通。（请敬请期待,正在开发！！）

#### 软件架构
* 核心框架：Spring Boot 2.4.0
* 安全框架：JwtPermission 3.1.1
* 前端：Ant Design Vue 1.6.2
* 持久层框架：MyBatis-Plus 3.4.1
* 关系型数据库: Mysql 8.0.22
* 数据库连接池：Druid 1.2.3
* 缓存数据库: Redis 4.0.9
* 项目管理工具: Maven 3.3+
* 工具类：Hutool 5.5.1


### 体验地址

后台演示地址：http://demo.totinlink.com/

用户名：user1

密码：123456

扫码体验小程序：

<img src="https://images.gitee.com/uploads/images/2021/0517/153714_2d92cc7d_7716485.jpeg" width="200" height="200"/>


## 园区后台管理系统

1. 驾驶舱
    ⼯作台：多维数据图形报表的展示，配合资产管理模块最⼤化的了解（本⽉）账单、物业管
   理费、租⾦、⽔电费等，详细收款信息并形成前TOP10排⾏榜，柱形图等。
2. 租户管理
    租户管理：搭建多租户的管理模块，配合租户账号信息可开展分园区的配置
3. 园区管理
    园区列表：该功能主要完成园区基本信息配置，包括园区的总⾯积、园区的总房间、经纬度
   等基础的配置管理。
    楼宇管理：快速的登记当前园区的⼚房，场地，办公楼，公寓楼等的固定资产的统计，管理
   园区内的所有的楼宇、楼层的信息配置。
    房间管理：配合楼宇管理模块极致的房间管理，精确到每⼀栋楼、每⼀层、每⼀间，可对房
   间的收租⾯积、房间的租⾦、物业费、是否已经出租、房间闲置天数等信息详细登记管理。
4. ⼊驻管理
    ⼊园申请：显示⼩程序，申请的⼊园信息成为园区租户。
    ⼊驻申请：显示⼩程序，申请的⼊驻信息，成为企业客户。
5. 企业服务
    客户管理：企业客户基本信息的录⼊，企业客户信息与⼯商数据同步形成企业档案数据，查
   询企业客户信息，合作伙伴，⼊驻商家等信息。
    供应商管理：每次举办的活动的供应商情况。
    菜单管理：后台配置⾃定义⼩程序的服务管理显示功能，可通过系统的菜单管理实时控制
    banner管理：后台配置⾃定义⼩程序的服务管理显示功能，可通过系统的banner管理实时
   控制。
    服务管理：园区的活动举办管理，配合菜单管理和供应商管理使⽤，⼩程序的服务详情显示
   功能。
    订单管理：显示通过⼩程序，申请的服务⼈员信息。
6. 资产管理
    费项配置管理：⽀出的费项税点记录配置
    意向合同：负责登记对园区的房间有意向的客户登记配置管理。
    合同管理：管理登记合同的情况，是否在使⽤，是否已作废，是否到期等情况。
    合同审批：管理新添加的正式合同情况，通过审批流。
    合同变更：对正式合同的管理，变更、作废、退租等操作。
    退租管理：对退租的房间进⾏管理配置，根据退租信息，能否同意退租等操作。
    账单管理：正式合同的⽣成账单管理配置，合同有效期内的所有账单信息⽔电费，房租，物
   业管理费等显示。
    账单报表：对每个⽉⽣成的账单，已经确定收款的账单进⾏管理，导出⽂件等。
7. 政策信息
    政策管理：后台配置政策信息和政策信息的发布，对⼩程序的园区公告进⾏维护和，发布新
   闻资讯，园区最新消息，局部地区新闻等。
    政策banner：后台配置政策信息和政策信息的发布，通过上传图⽚和数据，会在⼩程序的园
   区公告的banner图展示出来
8. 党建园地
    党建管理：后台配置党建信息和党建信息的发布，可以控制⼩程序⾸⻚的党建园地功能，宣
   传党的信息。
    党建banner：后台配置党建信息和党建信息的发布，设置⼩程序的党建园地的banner图。
9. 招商中⼼
    线索管理：招商信息线索跟踪和根据客户线索的等配置。
    线索分派：显示已经激活的线索，分派⼈员跟进招商情况，安排员⼯进⾏跟进线索的进展程
   度。
    线索跟进：当前园区的所有线索，所有招商的跟进情况和跟进时间等配置。
   我的线索：只有分派给指定⼈员的线索查看配置
10. 社群活动 
        活动管理：将线下活动信息提前发布，组织企业员⼯进⾏互动，助⼒园区企业品牌影响⼒，
    设置⼩程序的活动对接后台的社群活动配置。
11. 报修服务
        ⼯单管理：接收⼩程序提供的申请信息，收集移动端的报修⼯单信息，及时处理报修情况，
    跟踪报修进度等配置、
12. 投诉建议 
        投诉管理：接收⼩程序提供的申请信息。收集移动端的投诉建议信息，及园区内所存在的问
    题情况，分派⼈员跟进处理配置。
13. 系统管理
        ⽤户管理：园区系统采⽤多租户设计⽤户数据结构。
        ⻆⾊管理：⽤户根据园区所在⻆⾊进⾏权限的分配。
        菜单管理：界⾯菜单功能的管理。
        部⻔管理：⽤户需要关联的园区部⻔数据管理。
        字典管理：园区常⽤的业务数据字典管理。
        参数设置：整个系统的参数配置信息。
        通知公告：园区滚动消息的通知公告设置。
14. 系统监控
        在线⽤户：显示当前系统所有在线的⽤户。
        操作⽇志：登记所有账号的操作记录。
        登录⽇志：记录登录的所有地址、IP等信息。
15. 个⼈账户
        个⼈中⼼：个⼈信息的显示。
        个⼈设置：个⼈信息的设置和修改。


## 园区微信小程序

1.  用户登录：短信验证码注册和登录。
2.  园区首页：功能菜单导航，包括有企业服务、园区报修、园区公告、党建园地，租办公室，投诉建议等功能导航，banner图展示园区企业的热门产品和企业信息。
3.  企业服务：提供党建服务、政策研读、申报辅导、工商注册、挂牌督导、金融服务等协助园区为企业提供一站式企业服务。
4.  园区活动：园区活动信息的展示，方便企业员工报名参与登记。
5.  办公租赁：园区空间的出租信息展示，展示空间的位置，容积，平面，租金等信息。
6.  园区报修：园区的物业报修，快捷填写报修信息并短信通知相关维修人员进行跟进。
7.  党建园地：展示最新政策信息，方便企业实时查询，为企业发展创造更多可能。
8.  园区公告：展示发布的最新园区公告信息。
9.  我的信息：我的活动，公司信息，账号设置，我的服务，我的报修，收货地址等入口和设置。



## 演示图

*PC端后台管理
<table>
    <tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162214_f335894e_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162858_9f322544_2336929.png"/></td>
    </tr>
    <tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162316_d0dcfe0f_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162256_97c1dedf_2336929.png"/></td>
    </tr>
    <tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162343_93e9cbdb_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162428_27f74f46_2336929.png"/></td>
    </tr>
	<tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162402_4e62c143_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162508_9cde4862_2336929.png"/></td>
    </tr>	 
    <tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162548_40a9af42_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162842_e83f88c3_2336929.png"/></td>
    </tr>
	<tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162635_f1b78d30_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162651_c45fe3b1_2336929.png"/></td>
    </tr>
	<tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162723_d1df3303_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162741_79dfc0d6_2336929.png"/></td>
    </tr>
    <tr>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162805_73e62f60_2336929.png"/></td>
        <td><img src="https://images.gitee.com/uploads/images/2021/0220/162820_7f703795_2336929.png"/></td>
    </tr>
</table>


*微信小程序端
<br/>


<div>
<img src="https://images.gitee.com/uploads/images/2021/0220/164801_5702864e_2336929.jpeg" width="200" height="433" alt="首页"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://images.gitee.com/uploads/images/2021/0220/164837_1d81f8d7_2336929.jpeg" width="200" height="433" alt="活动"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://images.gitee.com/uploads/images/2021/0220/164954_e96df9d9_2336929.jpeg" width="200" height="433"  alt="报修"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://images.gitee.com/uploads/images/2021/0220/165031_cc0e4efc_2336929.jpeg" width="200" height="433"  alt="服务"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://images.gitee.com/uploads/images/2021/0220/165049_8a226d2b_2336929.jpeg" width="200" height="433"  alt="公告"/>
</div>

## 联系方式（技术支持）

<br/>
<div align=center>
<img src="https://oscimg.oschina.net/oscnet/up-cbdf74c55a5c88a3806217539e8d022a7fc.png" width="250" height="250" alt="微信联系方式"/>
</div>
  