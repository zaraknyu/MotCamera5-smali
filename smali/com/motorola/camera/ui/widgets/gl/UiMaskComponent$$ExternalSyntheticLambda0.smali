.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinnerBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(Z)I

    move-result v3

    const-string v4, "DOCUMENT_ORIENTATION"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-boolean v3, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v3, "EXTRA_DOCUMENT_ORIGINAL_URI"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->cacheURI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EXTRA_DOCUMENT_CACHE_FILE_URI"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->dismissWindow()V

    return-void

    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinnerBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
