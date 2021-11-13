unit SQLConst;

interface
Type
  TSQLConst = class
    public

     const DELETE_VIDEO = 'DELETE FROM [Video] WHERE VideoId= :videoId';

     const SELECT_VIDEO_DETAILED =
     'SELECT [VideoId],[Name],[Date],[Url],[Image],[Description],[TecherId]'+
     ',Firstname ,Lastname, [LessonId],[Titel] FROM View_Video_Detailed';

      const  YOUTUBE_FRAM = '<!DOCTYPE html>'+
            '<html>'+
            '<head>'+
            '<meta http-equiv="X-UA-Compatible" content="IE=edge">'+
            '</head>'+
            '  <body>'+
            '   <iframe width="560" height="315" src="'+ '%1'
              +
            '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>'+
            '  </body>'+
            '</html>';


  end;
implementation

end.
