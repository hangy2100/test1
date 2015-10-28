    <%@ page language="java" contentType="text/html; charset=utf-8"%>  
    <%  
    String path = request.getContextPath();  
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
    %>  
    <!DOCTYPE HTML>  
    <html>  
          <head>  
            <base href="<%=basePath%>">  
            <title>Upload</title>  
     <!--装载文件-->  

            <link href="css/uploadify.css" rel="stylesheet" type="text/css" />  
			<script src="jquery-1.9.1.js" type="text/javascript"></script>
			<script src="jquery.uploadify.js" type="text/javascript"></script>
       <!--ready事件-->  
    <script type="text/javascript">  
            $(document).ready(function() {  
                $("#uploadify").uploadify({  
                    'buttonClass':'uploadify-button',
                    'cancelImg'      : 'images/cancel.png',  
                    'folder'         : 'uploads',//您想将文件保存到的路径  
                    'queueID'        : 'fileQueue',//与下面的id对应  
                    'queueSizeLimit'  :1,  //可以上传几个文件
                    'fileTypeDesc'    :'rar文件,zip文件,7z文件',
                	'fileTypeExts' : '*.rar; *.zip; *.7z', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc  
                   	'auto'           : false,  
                    'multi'          : true,  
                    'UploadLimit' : 3,  
                    'buttonText'     : '上传',
                    'method': 'post',
                    'swf'      : 'uploadify.swf',
					'uploader' : 'http://localhost:8080/test1/servlet/Upfile'//跳转路径
                });  
            });  
     </script>   
             </head>  
        <body>  
            <div id="fileQueue"></div> 
			<form action="servlet/Upfile" method="post" enctype="multipart/form-data">
            <input type="file" name="uploadify" id="uploadify" />  
            </form>
            <p>  
            </>
			<a href="javascript:$('#uploadify').uploadify('upload','*')">Upload Files</a>
			<a href="javascript:$('#uploadify').uploadify('cancel','*');">取消上传</a>
            </p> 

        </body>  
    </html>  