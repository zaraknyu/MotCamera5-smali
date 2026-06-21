.class public final Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;
.super Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;
.source "SourceFile"


# instance fields
.field public final mModelStartedMap:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public final onCaptureProgressed(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized resetState()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopAllModels()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized startModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;[Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(IZ)V

    iput-object p1, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    iput-object p2, v1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    filled-new-array {v1}, [Landroidx/sqlite/db/SimpleSQLiteQuery;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/motorola/camera/mcf/McfParameters;->loadModels([Landroidx/sqlite/db/SimpleSQLiteQuery;)V

    invoke-static {v0}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0

    new-instance p2, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {p2}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    new-instance v0, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v1, 0x3

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, p1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    filled-new-array {v0}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/motorola/camera/mcf/McfParameters;->configureModels([Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-static {p2}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    iget-object p2, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stopAllModels()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "McfMlStateMachine"

    const-string v1, "mcf not started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->GESTURE_MV1:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    sget-object v0, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized stopModel(Lcom/motorola/camera/shared/ai/model/McfMlModel;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    new-instance v2, Landroidx/media3/extractor/mkv/Sniffer;

    const/4 v3, 0x2

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4, p1}, Landroidx/media3/extractor/mkv/Sniffer;-><init>(IILjava/lang/Object;)V

    filled-new-array {v2}, [Landroidx/media3/extractor/mkv/Sniffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->configureModels([Landroidx/media3/extractor/mkv/Sniffer;)V

    invoke-static {v0}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    new-instance v0, Lcom/motorola/camera/mcf/McfParameters;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfParameters;-><init>()V

    filled-new-array {p1}, [Lcom/motorola/camera/shared/ai/model/McfMlModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/mcf/McfParameters;->unloadModel([Lcom/motorola/camera/shared/ai/model/McfMlModel;)V

    invoke-static {v0}, Lcom/google/zxing/Result;->mcfSetEvents(Lcom/motorola/camera/mcf/McfParameters;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;->mModelStartedMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
