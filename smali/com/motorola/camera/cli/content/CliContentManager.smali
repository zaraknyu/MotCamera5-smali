.class public final Lcom/motorola/camera/cli/content/CliContentManager;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
.implements Lcom/motorola/camera/cli/CliEventListener;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field public final alwaysShowPreview$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

.field public final animationSettingChangeListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

.field public final changeBrightness$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

.field public final cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

.field public final contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/motorola/camera/Controller;

.field public final dualPreviewListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

.field public final faceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

.field public final fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final isCliDisplay:Z

.field public final mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

.field public final perfectMeStateListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

.field public final showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

.field public final timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

.field public videoRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lcom/motorola/camera/cli/content/CliContentManager;

    const-string/jumbo v2, "showContentAllowed"

    const-string v3, "getShowContentAllowed()Z"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1Impl;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v3, "alwaysShowPreview"

    const-string v5, "getAlwaysShowPreview()Z"

    invoke-static {v1, v3, v5, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v3

    const-string v5, "changeBrightness"

    const-string v6, "getChangeBrightness()Z"

    invoke-static {v1, v5, v6, v4, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v4

    filled-new-array {v0, v3, v4}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Camera;Lcom/motorola/camera/Controller;ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fsmContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    iput-boolean p3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    iput-object p4, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->alwaysShowPreview$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->changeBrightness$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput p3, p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iput-boolean p3, p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    iput-boolean p3, p2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    const/4 p3, 0x2

    invoke-direct {p2, p3, p0}, Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->faceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    new-instance p2, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->perfectMeStateListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    new-instance p2, Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {p2, p1, p0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;-><init>(Landroid/content/Context;Lcom/motorola/camera/cli/content/CliContentManager;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    new-instance p1, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    new-instance p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    return-void
.end method


# virtual methods
.method public final changeAnimationContentStatus()V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-eqz v2, :cond_0

    iget v3, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v4, 0x40c00000    # 6.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    iget v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->luxValue:F

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_1
    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    return-void
.end method

.method public final changeDualPreviewContentStatus()V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPerfectMeInCaptureState()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMART_CLI:Z

    const/4 v4, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->alwaysShowPreview$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v5, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v5, v5, v3

    invoke-virtual {v1, p0, v5}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-virtual {p0, v3}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture(Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoEnabledModes()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->videoRecording:Z

    if-nez v1, :cond_9

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->resume()V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    invoke-virtual {p0, v4}, Lcom/motorola/camera/cli/content/CliContentManager;->showContent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0

    throw p0

    :cond_a
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closePreviewContent()V

    :goto_5
    invoke-virtual {p0, v2}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture(Z)V

    return-void
.end method

.method public final closeCameraCartoonContent()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.motorola.camera5.EXTRA_CONTENT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final closePreviewContent()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v1, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.motorola.camera5.EXTRA_CONTENT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final finishContentActivity()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3, v2}, Landroidx/room/coroutines/ConnectionPoolImpl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cli/content/CliContentViewModel;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z

    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    iput-boolean v2, v1, Lcom/motorola/camera/cli/content/CliContentManager$Status;->faceDetected:Z

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->fsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v1, v1, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->timeoutRunnable:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final finishPresentationHolder()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->getUiContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 1

    new-instance p0, Lcom/motorola/camera/PermissionCallback;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/motorola/camera/PermissionCallback;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_INIT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PermissionCallback;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/motorola/camera/PermissionCallback;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArraySet;

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getUiContext()Landroid/content/Context;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->controller:Lcom/motorola/camera/Controller;

    iget-object p0, p0, Lcom/motorola/camera/Controller;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getUiContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onRotationChanged(II)V
    .locals 2

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.motorola.camera5.EXTRA_ORIENTATION"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final showContent(I)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->showContentAllowed$delegate:Lcom/motorola/camera/cli/content/CliContentManager$special$$inlined$observable$1;

    sget-object v1, Lcom/motorola/camera/cli/content/CliContentManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/properties/ObservableProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.EXTRA_CONTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isPreviewVisible:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 3

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->getUiContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return-void

    :cond_1
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SINGLE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->contentStatus:Lcom/motorola/camera/cli/content/CliContentManager$Status;

    iget-boolean v2, v2, Lcom/motorola/camera/cli/content/CliContentManager$Status;->isAnimationVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v2, :cond_d

    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_STOP_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    return-void

    :cond_5
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_DV_TUTORIAL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_RESUMING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoRecording(Lcom/motorola/camera/fsm/camera/FsmContext;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/google/zxing/Result;->isEntering(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_8
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    return-void

    :cond_9
    :goto_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    return-void

    :cond_a
    :goto_1
    iget-object p1, p1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/cli/content/CliContentManager;->updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->changeDualPreviewContentStatus()V

    return-void

    :cond_b
    :goto_2
    iput-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->videoRecording:Z

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    return-void

    :cond_c
    :goto_3
    iput-boolean v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->videoRecording:Z

    invoke-virtual {p0, v2}, Lcom/motorola/camera/cli/content/CliContentManager;->updateVideoState(I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cli/content/CliContentManager;->updateAutoGestureCapture(Z)V

    :cond_d
    return-void
.end method

.method public final updateAutoGestureCapture(Z)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAirGestureVideoSupported()Z

    move-result v0

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isGestureVideoSupportedModes()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isDisableExternalDisplayVideoSize()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p1, p0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AIR_GESTURE_VIDEO:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera/settings/Setting;->setValueFromPersist(Ljava/lang/Object;Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->videoRecording:Z

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackFacing()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v2, 0x2

    :cond_4
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MCF_AUTO_CAPTURE_GESTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final updateListeners(Lcom/motorola/camera/fsm/camera/FsmContext;Z)V
    .locals 7

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->FACE_DETECT:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->ENV_INFO:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object p1

    sget-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMART_CLI:Z

    iget-boolean v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->isCliDisplay:Z

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenAnimationEnabled(Z)Z

    move-result v3

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenPreviewEnabled(Z)Z

    move-result v2

    iget-object v4, p0, Lcom/motorola/camera/cli/content/CliContentManager;->perfectMeStateListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    iget-object v5, p0, Lcom/motorola/camera/cli/content/CliContentManager;->mEnvListener:Lcom/motorola/camera/IqConfigManager$$ExternalSyntheticLambda0;

    iget-object v6, p0, Lcom/motorola/camera/cli/content/CliContentManager;->faceDetectionListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda2;

    if-eqz p2, :cond_2

    if-nez v3, :cond_0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    if-eqz v3, :cond_1

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v4}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PERFECT_ME_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, v4}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    if-eqz p2, :cond_3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closeCameraCartoonContent()V

    :cond_4
    if-eqz p2, :cond_6

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->closePreviewContent()V

    return-void
.end method

.method public final updateVideoState(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.motorola.camera5.EXTRA_ACTION"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.EXTRA_CONTENT"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.motorola.camera5.VIDEO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
