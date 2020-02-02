// 需求分析
// 1.需要账号密码
// 2.需要登陆频率

// 1.需要账号密码
uname='libzhuanxian'
upass='let1234'
//  2.需要登陆频率(每几秒登陆一次)
freq = 1

// 登陆配置
toast( "Name:"+uname +"准备登陆")
host='202.204.48.82'
ip_addr=$(curl -s cippv6.ustb.edu.cn/get_ip.php)
ip_addr=${ip_addr#*\'}
ip_addr=${ip_addr%\'*}

while true; do
    #curl一次
    res=$(curl www.baidu.com -s)
    // 获取日期时间
    a=$(date +%Y-%m-%d-%H:%M:%S)

    // 判断是否联网：没有就登陆图书馆账号
    if [ "$res" == "" ]; then
        echo "$a 网络未连接!"
        echo "准备登陆图书馆账号"

        // 重点:curl登陆
        res=$(curl -sd "DDDDD=$uname&upass=$upass&0MKKey=123456789&v6ip=$ip_addr" $host)
        if [ "$res" == "" ]; then
            echo "图书馆账号登陆失败：请赶紧联系806相关同志！"
        else
            echo "图书馆账号应该登陆成功了呢~"
        fi

    else
        echo "$a 网络连接正常~"
    fi

    // 每次休息指定秒数
    sleep $((freq))
done
