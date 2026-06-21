.class public final Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_awaitWithin:Ljava/lang/Object;

.field public final synthetic $worker:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast v0, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/text/StringsKt___StringsKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/StandaloneCoroutine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelCoroutine;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier;

    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/CameraKpi;

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/google/mlkit/common/internal/zzc;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/font/TypefaceRequest;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->cacheable:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/LruCache;

    invoke-virtual {v0, p0, p1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p1, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/collection/LruCache;

    invoke-virtual {p1, p0}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v1

    throw p0

    :pswitch_3
    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    iget-object v0, p1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/font/TypefaceRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    iget-object p1, p1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFamilyTypefaceAdapter:Lcom/google/android/gms/tasks/zza;

    iget-object p1, p1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->fontStyle:I

    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceRequest;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/text/font/DefaultFontFamily;

    :goto_2
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v2, p0, p1}, Lcom/google/mlkit/common/internal/zzb;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_3

    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    iget-object v0, v0, Landroidx/compose/ui/text/font/GenericFontFamily;->name:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/mlkit/common/internal/zzb;->createAndroidTypefaceApi28-RetOiIg(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_3
    new-instance v2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    invoke-direct {v2, p0}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Landroid/graphics/Typeface;)V

    :cond_3
    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not load font"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/WrappedComposition;

    iget-boolean v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->disposed:Z

    if-nez v1, :cond_6

    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object v0, p0, Landroidx/compose/ui/platform/WrappedComposition;->lastContent:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/Lifecycle;

    if-nez v1, :cond_5

    iput-object p1, p0, Landroidx/compose/ui/platform/WrappedComposition;->addedToLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_4

    :cond_5
    check-cast p1, Landroidx/lifecycle/LifecycleRegistry;

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_6

    iget-object p1, p0, Landroidx/compose/ui/platform/WrappedComposition;->original:Landroidx/compose/runtime/CompositionImpl;

    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/jvm/functions/Function2;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v0, 0x1

    const v2, -0x773f589e

    invoke-direct {p0, v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/CompositionImpl;->composeInitial(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/platform/AndroidUiFrameClock;

    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidUiFrameClock;->choreographer:Ljava/lang/Object;

    check-cast p1, Landroid/view/Choreographer;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidUiFrameClock$withFrameNanos$2$callback$1;

    iget-object v0, p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p1, p1, Landroidx/compose/ui/platform/AndroidUiDispatcher;->toRunOnFrame:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_7
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainResourceIdCache$callbacks$1$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Landroidx/work/impl/WorkerStoppedException;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$worker:Ljava/lang/Object;

    check-cast v0, Landroidx/work/ListenableWorker;

    check-cast p1, Landroidx/work/impl/WorkerStoppedException;

    iget p1, p1, Landroidx/work/impl/WorkerStoppedException;->reason:I

    iget-object v1, v0, Landroidx/work/ListenableWorker;->mStopReason:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, -0x100

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->onStopped()V

    :cond_7
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->$this_awaitWithin:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
