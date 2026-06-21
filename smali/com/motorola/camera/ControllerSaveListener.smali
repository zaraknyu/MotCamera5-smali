.class public final Lcom/motorola/camera/ControllerSaveListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;
.implements Lcom/motorola/camera/jms/BgJobManager$BgJobManagerListener;


# instance fields
.field public final mEventListener:Lcom/motorola/camera/EventListener;

.field public mUpdateFreeBytesSkipCount:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ControllerSaveListener;->mEventListener:Lcom/motorola/camera/EventListener;

    return-void
.end method


# virtual methods
.method public final onJobTransferred(IZ)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ControllerSaveListener;->updateFreeBytes(Lcom/motorola/camera/CameraData;)V

    return-void
.end method

.method public final onQueueEmpty()V
    .locals 0

    return-void
.end method

.method public final onReviewSaveComplete(Landroid/net/Uri;)V
    .locals 1

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAVING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ControllerSaveListener;->mEventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ControllerSaveListener;->updateFreeBytes(Lcom/motorola/camera/CameraData;)V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v2, 0x7f120137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f1200d3

    invoke-direct {v0, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->CENTER:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mIgnoreVisibilityRules:Z

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    return-void
.end method

.method public final updateFreeBytes(Lcom/motorola/camera/CameraData;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->mediaVolumes:Ljava/util/Set;

    const-string v1, "mediaVolumes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/storage/MediaVolume;

    invoke-static {v3}, Lcom/motorola/camera/storage/MediaVolumesHolder;->getFreeBytes(Lcom/motorola/camera/storage/MediaVolume;)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x40000000

    cmp-long v0, v1, v3

    const/4 v5, 0x0

    if-gez v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    const-wide v6, 0xbd000000L

    cmp-long v0, v1, v6

    if-gez v0, :cond_2

    const-wide/16 v6, 0xa

    sub-long/2addr v1, v3

    mul-long/2addr v1, v6

    const-wide/32 v3, 0x7d000000

    div-long/2addr v1, v3

    long-to-int v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    :goto_1
    iget v1, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    if-ge v1, v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget p1, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    return-void

    :cond_4
    iput v5, p0, Lcom/motorola/camera/ControllerSaveListener;->mUpdateFreeBytesSkipCount:I

    sget-object p0, Lcom/motorola/camera/storage/MediaVolumesHolder;->workerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/motorola/camera/storage/MediaVolumesHolder$registerClient$$inlined$runOnWorker$1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
