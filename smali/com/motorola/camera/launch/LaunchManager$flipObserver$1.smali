.class public final Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SuggestionsAdapter;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onChange(Z)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    .line 2
    :pswitch_1
    check-cast v1, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 3
    iget-boolean p0, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 5
    iget-object p0, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {p0}, Landroid/database/Cursor;->requery()Z

    move-result p0

    iput-boolean p0, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    :cond_0
    return-void

    .line 6
    :pswitch_2
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 7
    const-string p1, "getInstance(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result p0

    .line 8
    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    .line 9
    check-cast v1, Lcom/motorola/camera/launch/LaunchManager;

    .line 10
    iget p1, v1, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    if-eq p0, p1, :cond_f

    .line 11
    iget-object p1, v1, Lcom/motorola/camera/launch/LaunchManager;->callback:Lcom/motorola/camera/Camera;

    if-eqz p1, :cond_e

    .line 12
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 13
    iget-boolean v0, v0, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 14
    iput-boolean v3, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v2

    goto/16 :goto_4

    .line 16
    :cond_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    iput-boolean v3, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    .line 18
    invoke-virtual {p1, p1}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne p0, v2, :cond_a

    .line 19
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 20
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 21
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v4

    .line 22
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$AppTask;

    .line 23
    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    iget-object v6, v6, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v6, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 26
    invoke-virtual {v5}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_0

    .line 27
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_3

    :cond_6
    if-ne p0, v2, :cond_7

    .line 28
    iput-boolean v2, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    goto :goto_3

    :cond_7
    if-nez p0, :cond_a

    .line 29
    :try_start_0
    invoke-static {p1}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmotorola/core_services/cli/CLIManager;->queryCliTransition(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v3

    .line 31
    :goto_1
    iput-boolean v0, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 32
    :catch_0
    const-string v0, "MotoCamera"

    const-string v4, "CLIManager doesn\'t support queryCliTransition, using legacy"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cli_continuity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p1, v0, v3}, Lcom/motorola/camera/reflect/MotorolaSettingsSecure;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v3

    .line 36
    :goto_2
    iput-boolean v0, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    :cond_a
    :goto_3
    move v0, v3

    .line 37
    :goto_4
    iget-object v4, p1, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    if-eqz v4, :cond_e

    iget-boolean v4, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-nez v4, :cond_b

    if-eqz v0, :cond_e

    .line 38
    :cond_b
    iput-boolean v2, p1, Lcom/motorola/camera/Camera;->mKeepSessionSettingOnExit:Z

    .line 39
    const-string v4, "FINISH_APP"

    .line 40
    invoke-static {v4, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v0, :cond_c

    .line 41
    const-string v0, "RECREATE_ACTIVITY"

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    :cond_c
    iget-boolean v0, p1, Lcom/motorola/camera/Camera;->mDoLaunch:Z

    if-eqz v0, :cond_d

    const-string v0, "SKIP_FSM_REINIT"

    invoke-virtual {v4, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    :cond_d
    iget-object p1, p1, Lcom/motorola/camera/Camera;->mController:Lcom/motorola/camera/Controller;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 44
    invoke-direct {v0, v2, v4, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    .line 45
    iget-object p1, p1, Lcom/motorola/camera/Controller;->mCameraFsm:Landroidx/room/concurrent/FileLock;

    .line 46
    invoke-virtual {p1, v0}, Landroidx/room/concurrent/FileLock;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    .line 47
    :cond_e
    iput p0, v1, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
