'use strict';

module.exports = appInfo => {
  const config = exports = {};

  // 随机修改任意一个值即可
  config.keys = appInfo.name + '_1547540555445_3889';
  // 签名密匙妥善保管，不可泄露，务必修改
  config.secretkey = 'yioMe';
  /** 
   * ZFBh5唤醒支付暂不可用！
   * 需要用户手动输入支付金额！！
   * 保存不带金额的zfb收款码，使用二维码解析工具把解析出来的内容填入下方！！！
   * */ 
  config.alipayImgCode="https://qr.alipay.com/fkx13684uxcmpyhn2tp0lcx";
  config.payMax = { // 设置随机立减金额，单位为0.01
    wx: 10, // 表示会在订单金额的基础上最多减免 0.01 * 10,减免的金额必须有对应的收款二维码，否则无法下单!
    alipay: 20, // ZFB可以任意设置减免金额，需要用户手动输入金额!
  };
  // 设置 修改 订单有效期
  config.orderValidity = 5; // 默认是5分钟 整数
  // 设置 修改 登录用户名和密码，为了节省一张数据表，默认写在配置里
  config.userInfo = {
    username: 'admin', // 账号
    password: 'admin', // 密码
  };
  // 中间件，请勿修改
  config.middleware = [];
  // 修改 mysql信息
  config.sequelize = {
    dialect: 'mysql', // 数据库类型，不要修改
    host: '127.0.0.1', // 数据库地址
    port: 3306,
    username: 'root', // 数据库账号
    password: 'root', // 数据库密码
    database: 'egg', // 数据库名
    timezone: '+08:00',
  };
  // 百度orc 申请地址 http://ai.baidu.com/tech/ocr 务必修改，无需付费，看下图
  // 领取免费的使用额度 https://attach.52pojie.cn/forum/202106/12/125217mu74g3g1364c3g7y.png
  config.baidu = {
    // 设置APPID/AK/SK
    APP_ID: 'xx',
    API_KEY: 'xxx',
    SECRET_KEY: 'xxxx',
  };
  // 验证器，请勿修改
  config.valdate = {

  };
  // 安全防护，请勿修改
  config.security = {
    csrf: {
      enable: false,
    },
  };
  // 使用Nginx转发必须启用
  config.proxy = true;
  // 上传模式请勿修改
  config.multipart = {
    mode: 'stream',
  };
  // 访问前缀，按需修改
  config.static = {
    prefix: '/',
  };
  return config;
};
