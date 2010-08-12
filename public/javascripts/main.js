// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


    $(function(){

      function initDock(o,docID){
        var opt= o.get(0).options;
        var docEl=$("<span>").attr("id",o.attr("id")+"_dock").css({width:opt.dockedIconDim+5,display:"inline-block"});
        var icon= $("<img>").attr("src",opt.elementsPath+"icons/"+(o.attr("icon")?o.attr("icon"):"restore.png")).css({opacity:.4,width:opt.dockedIconDim,height:opt.dockedIconDim, cursor:"pointer"});
        icon.click(function(){o.mb_iconize()});
        docEl.append(icon);
        $("#"+docID).append(docEl);
        o.attr("dock",o.attr("id")+"_dock");
      }

      function iconize(o){
        $("#"+o.attr("dock")).find("img:first").hide();
      }
      function restore(o){
        $("#"+o.attr("dock")).find("img:first").show();
      }
      function close(o){
        $("#"+o.attr("dock")).find("img:first").hide();
        $("#open").fadeIn();
      }


      $(".containerPlus").buildContainers({
        containment:"document",
        elementsPath:"../elements/",
        dockedIconDim:45,
        onCreate:function(o){initDock(o,"dock")},
        onClose:function(o){close(o)},
        onRestore:function(o){restore(o)},
        onIconize:function(o){iconize(o)},
        effectDuration:300
      });
    });

