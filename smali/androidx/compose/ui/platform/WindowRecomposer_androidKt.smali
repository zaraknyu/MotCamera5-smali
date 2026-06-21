.class public abstract Landroidx/compose/ui/platform/WindowRecomposer_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final animationScale:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->animationScale:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final access$getAnimationScaleFlowFor(Landroid/content/Context;)Lkotlinx/coroutines/flow/StateFlow;
    .locals 9

    sget-object v1, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->animationScale:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "animator_duration_scale"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v0, -0x1

    const/4 v2, 0x6

    const/4 v5, 0x0

    invoke-static {v0, v2, v5}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    const/4 v2, 0x1

    invoke-direct {v5, v6, v0, v2}, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    new-instance v2, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;

    const/4 v8, 0x0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;Lkotlinx/coroutines/channels/BufferedChannel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v3, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v2, v3}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lkotlinx/coroutines/internal/ContextScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    new-instance v2, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "animator_duration_scale"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/SafeFlow;Lkotlinx/coroutines/internal/ContextScope;Lkotlinx/coroutines/flow/StartedWhileSubscribed;Ljava/lang/Float;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public static final getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;
    .locals 1

    const v0, 0x7f0a0067

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/runtime/CompositionContext;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/CompositionContext;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
