.class public final Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAfStateListener:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$2;

.field public final mFlags:Lcom/motorola/camera/utility/Flags;

.field public mFocalLength:F

.field public mIsComplete:Z

.field public mLastAeFrameNum:J

.field public mLastAeState:I

.field public mLastAfState:I

.field public mOneShotPartialReceived:Z

.field public mOneShotReceived:Z

.field public mTimeoutRunnable:Lcom/motorola/camera/mcf/Mcf$8;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/utility/Flags;

    const-class v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/Flags;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAfState:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mLastAeFrameNum:J

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotPartialReceived:Z

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mOneShotReceived:Z

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    return-void
.end method
