.class public final Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    return-void
.end method


# virtual methods
.method public final onArcsoftDRSD(Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;)V
    .locals 1

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    iget p1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;->motionLevel:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final onDeducedRawSceneMode()V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->areAllOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onJGDRSD(Lcom/motorola/camera/mcf/McfCallbackJGDrsd;)V
    .locals 1

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    iget p1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;->motionLevel:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMotionLevel:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method

.method public final onMoonDetect(Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;)V
    .locals 1

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;

    iget-boolean v0, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsEnabled:Z

    sput-boolean v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzji;->moonAsEnabled:Z

    iget-boolean p1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftMoonDetect$MoonAsDetectResult;->moonAsDetected:Z

    sput-boolean p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzji;->moonAsDetected:Z

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMoonDetected:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMoonDetected:Z

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_0

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_0
    return-void
.end method
