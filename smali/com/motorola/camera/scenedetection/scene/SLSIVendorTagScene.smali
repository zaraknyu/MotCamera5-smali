.class public final Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;
.super Lcom/motorola/camera/scenedetection/scene/VendorTagScene;
.source "SourceFile"


# instance fields
.field public final value:[Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJI)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p5, 0x0

    :goto_0
    move v5, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x1

    goto :goto_0

    .line 1
    :goto_1
    sget-object v6, Lcom/motorola/camera/scenedetection/scene/FocusMode;->AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IJZLcom/motorola/camera/scenedetection/scene/FocusMode;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    .line 3
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V

    const/4 p1, 0x7

    .line 4
    new-array p2, p1, [J

    const/4 p5, 0x0

    const-wide/16 v0, 0x0

    aput-wide v0, p2, p5

    const/4 p6, 0x1

    aput-wide p3, p2, p6

    const-wide/16 p3, 0x3e7

    const/4 p6, 0x2

    aput-wide p3, p2, p6

    const/4 p3, 0x3

    aput-wide v0, p2, p3

    const/4 p3, 0x4

    aput-wide v0, p2, p3

    const/4 p3, 0x5

    aput-wide v0, p2, p3

    const/4 p3, 0x6

    aput-wide v0, p2, p3

    .line 5
    new-array p3, p1, [Ljava/lang/Long;

    :goto_0
    if-ge p5, p1, :cond_0

    .line 6
    aget-wide v0, p2, p5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object p3, p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;->value:[Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V
    .locals 2

    .line 3
    iget-object v0, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "mBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SLSI_SCENE_MODE_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;->value:[Ljava/lang/Long;

    .line 6
    invoke-virtual {v0, v1, p1, p0}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/scenedetection/scene/SLSIVendorTagScene;->applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
    .locals 4

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->getStreamingRequests()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/RequestWrapper;

    iget-object v1, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "mBuilder"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    sget-object v1, Lcom/motorola/camera/settings/CustomKeyHelper;->CONTROL_SLSI_SCENE_MODE_INFO_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mCameraId:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/fsm/RequestWrapper;->mBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
