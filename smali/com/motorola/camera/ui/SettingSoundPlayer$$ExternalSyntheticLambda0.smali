.class public final synthetic Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

.field public final synthetic f$1:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v1, Lcom/google/common/base/Splitter;->limit:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :cond_1
    sget-object v4, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    iget-object v5, v4, Lcom/google/common/base/Splitter;->trimmer:Ljava/lang/Object;

    check-cast v5, [Landroid/media/SoundPool;

    aget-object v6, v5, v2

    iget-object v4, v4, Lcom/google/common/base/Splitter;->strategy:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumMap;

    invoke-virtual {v4, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0x64

    invoke-virtual/range {v6 .. v12}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v5, 0x46

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :goto_0
    if-lez v4, :cond_3

    sget-object v5, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    if-ne p0, v5, :cond_3

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v5, v5, Lcom/motorola/camera/CameraApp;->mIsActivityOnResume:Z

    if-nez v5, :cond_3

    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    :cond_3
    const-string v5, "SettingSoundPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "play:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;->onComplete()V

    :cond_5
    monitor-exit v1

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;->onComplete()V

    :cond_7
    monitor-exit v1

    :goto_2
    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    sget-object v1, Lcom/google/common/base/Splitter;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/google/common/base/Splitter;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p0, v3}, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
