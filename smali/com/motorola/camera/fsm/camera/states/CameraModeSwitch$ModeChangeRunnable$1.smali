.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/device/CameraStateManager$CameraStatusSmListener;


# instance fields
.field public final synthetic val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic val$manager:Lcom/motorola/camera/device/CameraStateManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/device/CameraStateManager;Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$manager:Lcom/motorola/camera/device/CameraStateManager;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    return-void
.end method


# virtual methods
.method public final onStatus(Ljava/lang/String;Lcom/motorola/camera/device/CameraStateManager$CameraStatusHolder;)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$manager:Lcom/motorola/camera/device/CameraStateManager;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCamerasClosed()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/motorola/camera/device/CameraStateManager;->allCameraSessionsClosed()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    monitor-exit p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeChangeRunnable$1;->val$fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
