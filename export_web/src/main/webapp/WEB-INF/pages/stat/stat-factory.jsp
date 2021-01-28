<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../base.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="../../../plugins/jQuery/jquery-2.2.3.min.js"></script>
    <script src="../../../plugins/echarts/echarts.min.js"></script>
</head>
<body>
<div id="frameContent" class="content-wrapper" style="margin-left:0px;">
    <section class="content-header">
        <h1>
            统计分析
            <small>厂家销量统计</small>
        </h1>
    </section>
    <section class="content">
        <div class="box box-primary">
            <div id="main" style="width: 900px;height:500px;"></div>
        </div>
    </section>
</div>
</body>
<script type="text/javascript">

    $.get("/stat/findFactoryData.do",function(data){

        var titles = [];

        for (var i = 0; i < data.length; i++) {
            var obj = data[i];
            titles[i]=obj.name;
        }

        //初始化echarts实例(定义图形展示的位置)
        var myChart = echarts.init(document.getElementById('main'));

        /**
         * 2.指定图表的配置项和数据
         * 配置：从官网copy
         * 数据
         */
        var option = {
            title: {
                text: '某站点用户访问来源',
                subtext: '纯属虚构',
                left: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: titles
            },
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    data: data,
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        //3.使用配置生成图形
        myChart.setOption(option);
    })
</script>
</html>