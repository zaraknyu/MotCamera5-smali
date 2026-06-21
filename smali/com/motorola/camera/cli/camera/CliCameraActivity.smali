.class public Lcom/motorola/camera/cli/camera/CliCameraActivity;
.super Lcom/motorola/camera/SecureCamera;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/cli/camera/CliCameraActivity;",
        "Lcom/motorola/camera/SecureCamera;",
        "<init>",
        "()V",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/motorola/camera/SecureCamera;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/motorola/camera/SecureCamera;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {p0}, Lmotorola/core_services/cli/CLIManager;->getInstance(Landroid/content/Context;)Lmotorola/core_services/cli/CLIManager;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lmotorola/core_services/cli/CLIManager;->hasFeature(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CLIManager"

    const-string v0, "CLIManager doesn\'t implement hasFeature"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/motorola/camera/SecureCamera;->onDestroy()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    const-string v1, "MotoCameraUtil"

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    iget v3, v3, Landroid/app/TaskInfo;->taskId:I

    if-ne p0, v3, :cond_2

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p0, "Recent task list is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onLaunchStarted()Z
    .locals 1

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/Camera;->onStart()V

    invoke-static {p0}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {v0, p0}, Landroidx/activity/contextaware/ContextAwareHelper;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/motorola/camera/Camera;->isCliDisplay(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->shouldShowOnLockScreen(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/Camera;->onStop()V

    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {v0, p0}, Landroidx/activity/contextaware/ContextAwareHelper;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
