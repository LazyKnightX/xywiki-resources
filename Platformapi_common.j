//统一获取数据的接口

//获取integer数据
native function RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer

//获取boolean数据
native function RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean

//获取string数据
native function RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string

//获取real数据
native function RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real

////////////////////////////////////////////////////////////////////////////////////////
// Data Type
// 取值范围从1开始
////////////////////////////////////////////////////////////////////////////////////////
// MissionComplete,               //用作完成某个任务，发奖励
function DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
    call RequestExtraIntegerData(1, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// GetActivityData,               //提供给地图的接口，用作取服务器上的活动数据
function DzAPI_Map_GetActivityData takes nothing returns string
    return RequestExtraStringData(2, null, null, null, false, 0, 0, 0)
endfunction

// GetMapLevel,                   //提供给地图的接口，用与取地图等级
function DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
    return RequestExtraIntegerData(3, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// SaveServerValue,               //保存服务器存档
function DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
    return RequestExtraBooleanData(4, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// GetServerValue,                //读取服务器存档
function DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
    return RequestExtraStringData(5, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// GetServerValueErrorCode,       //读取加载服务器存档时的错误码
function DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
    return RequestExtraIntegerData(6, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// SetStat,                       //统计-提交地图数据
function DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
    call RequestExtraIntegerData(7, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// SetLadderStat,                 //天梯-统计数据
function DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
    call RequestExtraIntegerData(8, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// SetLadderPlayerStat,           //天梯-统计数据
function DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
    call RequestExtraIntegerData(9, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// IsRPGLobby,                    //检查是否大厅地图
function DzAPI_Map_IsRPGLobby takes nothing returns boolean
    return RequestExtraBooleanData(10, null, null, null, false, 0, 0, 0)
endfunction

// GetGameStartTime,              //取游戏开始时间
function DzAPI_Map_GetGameStartTime takes nothing returns integer
    return RequestExtraIntegerData(11, null, null, null, false, 0, 0, 0)
endfunction

// IsRPGLadder,                   //判断当前是否rpg天梯
function DzAPI_Map_IsRPGLadder takes nothing returns boolean
    return RequestExtraBooleanData(12, null, null, null, false, 0, 0, 0)
endfunction

// GetMatchType,                  //获取匹配类型
function DzAPI_Map_GetMatchType takes nothing returns integer
    return RequestExtraIntegerData(13, null, null, null, false, 0, 0, 0)
endfunction

// GetLadderLevel,                //提供给地图的接口，用与取天梯等级
function DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
    return RequestExtraIntegerData(14, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// IsRedVIP,                      //提供给地图的接口，用与判断是否红V
function DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
    return RequestExtraBooleanData(15, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// IsBlueVIP,                     //提供给地图的接口，用与判断是否蓝V
function DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
    return RequestExtraBooleanData(16, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// GetLadderRank,                 //提供给地图的接口，用与取天梯排名
function DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
    return RequestExtraIntegerData(17, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// GetMapLevelRank,               //提供给地图的接口，用与取地图等级排名
function DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
    return RequestExtraIntegerData(18, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// GetGuildName,                  //获取公会名称
function DzAPI_Map_GetGuildName takes player whichPlayer returns string
    return RequestExtraStringData(19, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// GetGuildRole,                  //获取公会职责 Member=10 Admin=20 Leader=30
function DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
    return RequestExtraIntegerData(20, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// GetMapConfig,                  //获取地图配置
function DzAPI_Map_GetMapConfig takes string key returns string
    return RequestExtraStringData(21, null, key, null, false, 0, 0, 0)
endfunction

// HasMallItem,                   //判断是否拥有商品
function DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
    return RequestExtraBooleanData(22, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// ChangeInGameStoreItemCount,    //修改游戏内商店物品数量
function DzAPI_Map_ChangeStoreItemCount takes integer team, string itemId, integer count returns nothing
    call RequestExtraIntegerData(23, null, itemId, null, false, team, count, 0)
endfunction

// ChangeInGameStoreItemCoolDown, //修改游戏内商店物品CD
function DzAPI_Map_ChangeStoreItemCoolDown takes integer team, string itemId, integer seconds returns nothing
    call RequestExtraIntegerData(24, null, itemId, null, false, team, seconds, 0)
endfunction

// ToggleInGameStore,             //开启/关闭内置商店
function DzAPI_Map_ToggleStore takes player whichPlayer, boolean show returns nothing
    call RequestExtraIntegerData(25, whichPlayer, null, null, show, 0, 0, 0)
endfunction

// GetServerArchiveEquip,         //读取服务器装备数据
function DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer
    return RequestExtraIntegerData(26, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// GetServerArchiveDrop,          //读取服务器掉落数据
function DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
    return RequestExtraStringData(27, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// OrpgTrigger,                   //触发boss击杀
function DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
    call RequestExtraIntegerData(28, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// GetUserID,                     //获取玩家ID
function DzAPI_Map_GetUserID takes player whichPlayer returns integer
    return RequestExtraIntegerData(29, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// GetPlatformVIP,                //获取平台vip
function DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer
    return RequestExtraIntegerData(30, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// SavePublicArchive,             //保存服务器存档组
function DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
    return RequestExtraBooleanData(31, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// GetPublicArchive,              //读取服务器存档组
function DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
    return RequestExtraStringData(32, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// UseConsumablesItem,            //使用消耗类商品
function DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
    call RequestExtraIntegerData(33, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// Statistics,                    //杭研DA统计
function DzAPI_Map_Statistics takes player whichPlayer, string category, string label returns nothing
    call RequestExtraIntegerData(34, whichPlayer, key, label, false, 0, 0, 0)
endfunction

// SystemArchive,                 //系统存档
function DzAPI_Map_SystemArchive takes player whichPlayer, string key returns string
    return RequestExtraStringData(35, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// GlobalArchive,                 //读取公共存档
function DzAPI_Map_GlobalArchive takes string key returns nothing
    return RequestExtraStringData(36, null, key, null, false, 0, 0, 0)
endfunction

// SaveGlobalArchive,             //保存公共存档
function DzAPI_Map_SaveGlobalArchive takes player whichPlayer, string key, string value returns boolean
    return RequestExtraBooleanData(37, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// ServerArchive,                 //读取服务器存档（区分大小写）
function DzAPI_Map_ServerArchive takes player whichPlayer, string key returns nothing
    return RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// SaveServerArchive,             //保存服务器存档（区分大小写）
function DzAPI_Map_SaveServerArchive takes player whichPlayer, string key, string value returns nothing
    return RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
endfunction

// IsRPGQuickMatch,               //RPG快速匹配
function DzAPI_Map_IsRPGQuickMatch takes nothing returns boolean
    return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0)
endfunction

// GetMallItemCount,              //获取商城道具数量
function DzAPI_Map_GetMallItemCount takes player whichPlayer, string key returns integer
    return RequestExtraIntegerData(41, whichPlayer, key, null, false, 0, 0, 0)
endfunction

// ConsumeMallItem,               //使用商城道具
function DzAPI_Map_ConsumeMallItem takes player whichPlayer, string key, integer count returns boolean
    return RequestExtraBooleanData(42, whichPlayer, key, null, false, count, 0, 0)
endfunction

// EnablePlatformSettings,        //启用平台功能 option = 1 锁定镜头距离，option = 2 显示血、蓝条
function DzAPI_Map_EnablePlatformSettings takes player whichPlayer, integer option, boolean enable returns boolean
    return RequestExtraBooleanData(43, whichPlayer, null, null, enable, option, 0, 0)
endfunction

// IsBuyReforged,                 //是否购买了重制版
function DzAPI_Map_IsBuyReforged takes player whichPlayer returns boolean
    return RequestExtraBooleanData(44, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// PlayedGames,                   //游戏局数
function DzAPI_Map_PlayedGames takes player whichPlayer returns boolean
    return RequestExtraIntegerData(45, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// CommentCount,                  //玩家的评论次数
function DzAPI_Map_CommentCount takes player whichPlayer returns boolean
    return RequestExtraIntegerData(46, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// FriendCount,                   //玩家的好友数量
function DzAPI_Map_FriendCount takes player whichPlayer returns boolean
    return RequestExtraIntegerData(47, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// IsConnoisseur,                 //是否鉴赏家
function DzAPI_Map_IsConnoisseur takes player whichPlayer returns boolean
    return RequestExtraBooleanData(48, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// IsBattleNetAccount,            //是否战网账号
function DzAPI_Map_IsBattleNetAccount takes player whichPlayer returns boolean
    return RequestExtraBooleanData(49, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// IsAuthor,                      //是否本图作者
function DzAPI_Map_IsAuthor takes player whichPlayer returns boolean
    return RequestExtraBooleanData(50, whichPlayer, null, null, false, 0, 0, 0)
endfunction

// CommentTotalCount,             //地图评论数
function DzAPI_Map_CommentTotalCount takes nothing returns boolean
    return RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0)
endfunction


////////////////////////////////////////////////////////////////////////////////////////
