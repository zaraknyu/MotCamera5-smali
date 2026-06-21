.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;->$r8$classId:I

    const/16 v0, 0xa

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/Thread;

    const-string v1, "active_photo_process"

    invoke-direct {p0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/CaptureBarGalleryComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "CaptureBarGalleryComponent"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "SettingSoundPlayer"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Ljava/lang/Thread;

    const-string/jumbo v1, "thumbnail_engine"

    invoke-direct {p0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MediaStoreClient"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "Image_Style_Processing"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/lang/Thread;

    const-string v1, "active_photo_muxer"

    invoke-direct {p0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0

    :pswitch_6
    new-instance p0, Ljava/lang/Thread;

    const-string v1, "active_photo_engine"

    invoke-direct {p0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    return-object p0

    :pswitch_7
    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$qVaB1iiShvUlvMp0uUq6Jae22u0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MLKitBarcodeDetector"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_9
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MemKiller"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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
