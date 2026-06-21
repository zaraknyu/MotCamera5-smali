.class public final Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;
.source "SourceFile"


# instance fields
.field public final mInitFirstFrame:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;->mInitFirstFrame:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;->mInitFirstFrame:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrame:Z

    .line 3
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p2, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->mFirstFrame:Z

    const/4 v2, 0x0

    const-string v3, "CAPTURE_NUM"

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-static {}, Lcom/motorola/camera/IqConfigManager;->getInstance()Lcom/motorola/camera/IqConfigManager;

    move-result-object v1

    iget v1, v1, Lcom/motorola/camera/IqConfigManager;->mLastLuxIdx:F

    .line 7
    const-string v2, "CUR_LUX_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/runnables/CaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/fsm/camera/StateKey;

    check-cast p2, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$LpSingleCaptureRequestRunnable;->run(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)V

    return-void
.end method
