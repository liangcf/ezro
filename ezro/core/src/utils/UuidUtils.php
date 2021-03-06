<?php
namespace ezro\core\src\utils;

/**
 * GUID工具类
 * @author Jason
 *
 */
class UuidUtils {

	/**
	 * sha265算法的安全值，用于计算字符串的摘要
	 * @var unknown
	 */
	private static $_secret4sha265 = '@sha265_secret_guid_xx#';

	
	/**
	 * 32位GUID生成方法，算法为md5
	 * 自定义guid生成规则: uniqid(prefix + mt_rand , true)
	 *   碰撞测试：用for循环获取了100万个guid，没有出现重复情况  @20150412
	 * $prefix 前缀混淆串，能有效增加GUID的唯一性。一般传入当前记录的唯一归属ID、所属类型等
	 *
	 * @param string $prefix
	 * @return string
	 */
	public static function create_uuid_md5($prefix=null)
	{
		// mt_rand() 马特赛特旋转演算法，可以快速产生高质量的伪随机数，修正了古老随机数产生算法的很多缺陷
		return strtolower(md5(uniqid($prefix . mt_rand(), true)));
	}
	
	/**
	 * 64位GUID生成方法，算法为sha256
	 * 自定义guid生成规则: uniqid(prefix + mt_rand , true)
	 *   碰撞测试：用for循环获取了100万个guid，没有出现重复情况  @20150412
	 * $prefix 前缀混淆串，能有效增加GUID的唯一性。一般传入当前记录的唯一归属ID、所属类型等
	 * 
	 * @param string $prefix
	 * @return string
	 */
	public static function create_guid_sha256($prefix=null)
	{
		// mt_rand() 马特赛特旋转演算法，可以快速产生高质量的伪随机数，修正了古老随机数产生算法的很多缺陷
		return strtolower(hash_hmac("sha256",uniqid($prefix . mt_rand(), true), self::$_secret4sha265));
	}

	/**
	 * 创建随机数
	 * @param null $prefix
	 * @return string
	 */
	public static function uuid($prefix=null)
	{
		// mt_rand() 马特赛特旋转演算法，可以快速产生高质量的伪随机数，修正了古老随机数产生算法的很多缺陷
		return strtolower(md5(uniqid($prefix.md5(mt_rand()),true)));
//		return strtolower(md5(uniqid($prefix . mt_rand(), true)));
	}

	public static function create_uuid($prefix=null)
	{
		return self::uuid($prefix);
	}
	
}
