.class public final Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$IsFocusTrackingGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final mTracking:Z

.field public final mTrackingMode:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$IsFocusTrackingGuardRunnable;->mTracking:Z

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$IsFocusTrackingGuardRunnable;->mTrackingMode:I

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/motorola/camera/utility/ZoomHelper;->sIsLight:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getZoomValue(Lcom/motorola/camera/settings/CameraType;)F

    move-result v0

    invoke-static {v0, p1}, Lcom/motorola/camera/utility/ZoomHelper;->shouldEnableAutoFocusTracking(FLcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$IsFocusTrackingGuardRunnable;->mTrackingMode:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/states/AutoFocusTrackingStates$IsFocusTrackingGuardRunnable;->mTracking:Z

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    :goto_1
    return p2
.end method
