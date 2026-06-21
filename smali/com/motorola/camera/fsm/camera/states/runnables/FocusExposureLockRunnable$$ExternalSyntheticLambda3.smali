.class public final synthetic Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Landroid/hardware/camera2/CaptureResult;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;Ljava/lang/Integer;ZZZLandroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$3:Z

    iput-boolean p5, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$4:Z

    iput-boolean p6, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$5:Z

    iput-object p7, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$6:Landroid/hardware/camera2/CaptureResult;

    iput-object p8, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$1:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    iget v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$3:Z

    iget-boolean v3, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$4:Z

    invoke-static {v0, v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->handleFocusState(Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;ZZ)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    iget-boolean v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$5:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$6:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFocalLength:F

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$$ExternalSyntheticLambda3;->f$7:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_1
    return-void
.end method
