YUI.add("aui-form-builder-field-file-upload",function(e,t){var n=e.Lang,r=e.Escape,i="form-builder-field",s="form-builder-file-upload-field",o="id",u="label",t="name",a="node",f="predefinedValue",l=" ",c="template",h=e.getClassName,p=h(i),d=h(i,a),v='<input id="{id}" class="'+[d].join(l)+'" name="{name}" type="file" value="{value}" />',m=e.Component.create({NAME:s,ATTRS:{template:{valueFn:function(){return v}}},CSS_PREFIX:p,EXTENDS:e.FormBuilderField,prototype:{getHTML:function(){var e=this;return n.sub(e.get(c),{id:r.html(e.get(o)),label:r.html(e.get(u)),name:r.html(e.get(t)),value:r.html(e.get(f))})}}});e.FormBuilderFileUploadField=m,e.FormBuilder.types.fileupload=e.FormBuilderFileUploadField},"2.0.0",{requires:["aui-form-builder-field-base"]});
