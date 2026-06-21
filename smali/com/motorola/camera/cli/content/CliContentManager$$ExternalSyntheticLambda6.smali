.class public final synthetic Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cli/content/CliContentManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cli/content/CliContentManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_PREVIEW_ENABLE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v2, p0, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-virtual {p0}, Lcom/motorola/camera/cli/content/CliContentManager;->finishContentActivity()V

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda6;->f$0:Lcom/motorola/camera/cli/content/CliContentManager;

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->cliPresentationHolder:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-boolean v1, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-nez v1, :cond_5

    new-instance v1, Lcom/motorola/camera/cli/content/CliContentViewModel;

    invoke-direct {v1}, Lcom/motorola/camera/cli/content/CliContentViewModel;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.motorola.camera5.CLI_CONTENT_ACTION_RECEIVER"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v4, v5, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    :cond_6
    iget-object v1, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cli/content/CliContentViewModel;

    if-eqz v1, :cond_7

    new-instance v2, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v2, v0}, Lcom/google/android/gms/tasks/zzb;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/google/android/gms/tasks/zzb;

    :cond_7
    :goto_2
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentManager;->animationSettingChangeListener:Lcom/motorola/camera/cli/content/CliContentManager$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->DUAL_PREVIEW_ENABLE:Lcom/motorola/camera/Notifier$TYPE;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentManager;->dualPreviewListener:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
