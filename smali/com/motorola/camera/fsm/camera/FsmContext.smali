.class public final Lcom/motorola/camera/fsm/camera/FsmContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBundles:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mCameraFsm:Landroidx/room/concurrent/FileLock;

.field public final mHandler:Landroid/os/Handler;

.field public final mIdentifier:Ljava/lang/Integer;

.field public mLastError:Ljava/lang/Object;

.field public mModeSetupMap:Landroid/util/SparseArray;

.field public mSubStateMachineMap:Ljava/util/LinkedHashMap;

.field public mSurfaceManager:Lcom/motorola/camera/SecureDataHelper;

.field public mVideoSessionData:Landroidx/media3/extractor/text/pgs/PgsParser;


# direct methods
.method public constructor <init>(Landroidx/room/concurrent/FileLock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FsmContext"

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mIdentifier:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public final clearModesBuilders()V
    .locals 3

    sget-boolean v0, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FsmContext"

    const-string v1, "clearModesBuilders"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mRequestBuilders:Lcom/motorola/camera/fsm/RequestBuilders;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestBuilders;->mBuilders:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, v1, Lcom/motorola/camera/fsm/RequestBuilders;->mAddAllHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final closeAllModeSessionSurfaces()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mSessionSurfacesClosed:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p0}, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->onCloseSessionSurfaces(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mBundles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public final getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
    .locals 1

    .line 7
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getModeSetup(I)Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x25

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x2e

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->initModeSetup(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    return-object p0
.end method

.method public final initModeSetup(I)V
    .locals 4

    const/16 v0, 0x22

    const/16 v1, 0xd

    const/4 v2, 0x1

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_e

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/ProPhotoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_4
    const/16 v0, 0x31

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/ProCameraMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_5
    const/16 v0, 0x25

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_6
    const/16 v0, 0x24

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_7
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_8

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PortraitVideoMode;

    invoke-direct {p1}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_8
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_9
    const/16 v0, 0x32

    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_a
    const/16 v0, 0x29

    const/16 v1, 0x26

    if-eq p1, v1, :cond_d

    if-ne p1, v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x34

    if-ne p1, v0, :cond_c

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/motorola/camera/fsm/camera/modes/MirrorMode;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x27

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x28

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x1f

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x1d

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x23

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x33

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v2, 0x35

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v2, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/modes/DualCaptureMode;-><init>()V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/motorola/camera/fsm/camera/modes/VideoMode;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/modes/VideoMode;-><init>()V

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mModeSetupMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final isCliDisplay()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "IS_CLI_DISPLAY"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/FsmContext;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p1}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "FsmContext{}"

    return-object p0
.end method
