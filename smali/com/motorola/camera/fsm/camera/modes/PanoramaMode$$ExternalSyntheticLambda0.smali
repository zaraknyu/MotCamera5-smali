.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    :try_start_1
    const-string p0, "PanoramaMode"

    const-string v0, "getImageAvailableListener ImageReader#acquireNextImage() is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v2, "CAPTURING"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    if-nez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/SecureDataHelper;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lcom/motorola/camera/SecureDataHelper;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object p0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    new-instance v0, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;-><init>(Lcom/motorola/camera/SecureDataHelper;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :catch_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v2, "WIDE_SELFIE_CAPTURE"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const-string v4, "getSmallCaptureImageAvailableListener"

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p0, p1, v3, v4}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getWideSelfieImageData(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/media/ImageReader;[Landroid/graphics/Rect;Ljava/lang/String;)Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_1
    return-void

    :pswitch_1
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v2, "WIDE_SELFIE_FACE_RECT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    const-string v2, "getCaptureImageAvailableListener"

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {p0, p1, v1, v2}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getWideSelfieImageData(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/media/ImageReader;[Landroid/graphics/Rect;Ljava/lang/String;)Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
