<%@ page language="java" import="cpcn.payment.tools.util.GUID" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="/cpcn" prefix="cpcn" %>--%>
<%
    String divID = GUID.getTxNo();
%>

<div class="main ui-abs" id="<%=divID%>">
    <div class="searchbar">
        <form name="queryFrm" id="queryFrm_<%=divID%>">
            <table class="search">
                <tr>
                    <td>
                        <div class="search_div">
                            <label>开始时间：</label>
                            <span>
                                <input name="startTime" type="text" class="ui-date" onclick="Jc.date.setCalender(this)" />
                            </span>
                        </div>
                    </td>
                    <td>
                        <div class="search_div">
                            <label>结束时间：</label>
                            <span>
                                <input name="endTime" type="text" class="ui-date" onclick="Jc.date.setCalender(this) "/>
                            </span>
                        </div>
                    </td>
                    <td>
                        <div class="search_div">
                        </div>
                    </td>
                    <td>
                        <div class="search_div">
                        </div>
                    </td>
                    <td width="200px">
                        <input type="button" class="search_btn"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="databar"></div>
</div>

<script type="text/javascript">
    Jc().datagrid($('.databar',$('#<%=divID%>')),{
        formID : 'queryFrm_<%=divID%>',
        url : 'batchrecord.do?op=query',
        dataType : 'json',

        colModel : [
            {
                display:'系统流水',
                name:'systemNo',
                width:'15',
                align:'left'
            },
            {
                display:'汇总时间',
                name:'systemTime',
                width:'5',
                align:'left'
            },
            {
                display:'通道',
                name:'channelBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'商户',
                name:'institutionBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'交易类型',
                name:'txTypeBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'支付常规',
                name:'bankOrderBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'短信',
                name:'smsSendLogBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'验证',
                name:'verifyBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'代收',
                name:'fundInBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'快捷',
                name:'bankOrder4QuickPaymentBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'出金',
                name:'fundOutBIStatus',
                width:'8',
                align:'left'
            },
            {
                display:'扫码',
                name:'bankOrder4ScanPayBIStatus',
                width:'8',
                align:'left'
            }
        ],
        checkbox:false,
        btnModel:[
            {
                icon:'export',
                name:'导总表',
                show:function(){
                    return checkOperationRight('6116000100040001');
                },
                action:exportExcel
            },
            {
                icon:'export',
                name:'导分表',
                show:function(){
                    return checkOperationRight('6116000100040001');
                },
                action:exportExcelOfDetail
            }
        ],
        refresh : $('.search_btn', '#<%=divID%>'),
        datagridWidth : '1708px'
    });

    function exportExcel(obj){
        //location.href = "batchrecord.do?op=export&systemTime=" + obj.systemTime;
        // 创建Form
        var form = $('<form></form>');
        form.attr('action', 'batchrecord.do?op=export');
        form.attr('method', 'post');
        var input = $('<input  name="systemTime" type="hidden" />');
        input.attr('value', obj.systemTime);
        form.append(input);
        form.appendTo("body");
        //form.css("display","none");
        form.submit();

    }

    function exportExcelOfDetail(obj){
        //location.href = "batchrecord.do?op=export&systemTime=" + obj.systemTime;
        // 创建Form
        var form = $('<form></form>');
        form.attr('action', 'batchrecord.do?op=exportDetail');
        form.attr('method', 'post');
        var input = $('<input  name="systemTime" type="hidden" />');
        input.attr('value', obj.systemTime);
        form.append(input);
        form.appendTo("body");
        //form.css("display","none");
        form.submit();

    }


    Jc().combobox($('select',$('.searchbar',$('#<%=divID%>')) ),{
        selectAsSource:true
    });


</script>

