<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/plugins/echarts/echarts.min.js"></script>
</head>
<body>
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    //初始化echarts实例(定义图形展示的位置)
    var myChart = echarts.init(document.getElementById('main'));


    /**
     * 2.指定图表的配置项和数据
     * 配置：从官网copy
     * 数据
     */
    var option = {
        title: {
            text: '测试Echarts'
        },
        tooltip: {},
        legend: {
            data:['销量123']
        },
        xAxis: {
            data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
        },
        yAxis: {},
        series: [{
            name: '销量123',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20]
        }]
    };

    //3.使用配置生成图形
    myChart.setOption(option);
</script>
</body>
</html>
