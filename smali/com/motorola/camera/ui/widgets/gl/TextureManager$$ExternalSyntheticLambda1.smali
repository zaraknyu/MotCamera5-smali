.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(ILcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;J)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->$r8$classId:I

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$1:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IJI)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$1:I

    iput-wide p3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-wide v1, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$2:J

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;->f$1:I

    packed-switch v0, :pswitch_data_0

    check-cast v3, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    iget-object v0, v3, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->listener:Lcom/motorola/camera/PermissionCallback;

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/PermissionCallback;JI)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler;->mJobProcessHandler:Landroid/os/Handler;

    new-instance v4, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/SaveImageServiceHandler$TransferJobListener$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/PermissionCallback;JI)V

    invoke-virtual {p0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :pswitch_0
    check-cast v3, Lcom/motorola/camera/CameraKpi;

    iget-object v0, v3, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Lcom/motorola/camera/fsm/Fsm;

    iget-object v3, v3, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v3

    new-instance v4, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 p0, 0x3fa

    invoke-virtual {v0, v3, p0, v4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void

    :pswitch_1
    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput p0, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mOrientation:I

    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->onRotate(I)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRotate ori:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", dur:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", dur2:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TextureManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
