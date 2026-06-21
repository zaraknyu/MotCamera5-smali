.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object p1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    const-class p1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->checkTrainingModuleState()V

    sget-object v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    iget-object v1, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->aiColorToneModuleInfo:Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    monitor-exit p1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;->mHasModuleInTraining:Z
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_2
    const-string v4, "AIPersonalColorToneManager"

    const-string v5, "Exception while check if hasModuleInTraining, return false"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p1

    :goto_1
    if-eqz v3, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v1, "go_to_customize_locked_page"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_2
    if-eqz v3, :cond_5

    const-string v1, "com.motorola.camera.ai.colortone.AdjustAndTrainActivity"

    goto :goto_3

    :cond_5
    const-string v1, "com.motorola.camera.ai.colortone.CustomizeActivity"

    :goto_3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.motorola.camera.ai.colortone"

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-direct {v1, p1, v2}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;I)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1$1;

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/ImagePreferenceSelectorComponent$launchAIColorTone$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_5
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
