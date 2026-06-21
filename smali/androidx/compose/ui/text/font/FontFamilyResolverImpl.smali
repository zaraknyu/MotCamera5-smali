.class public final Landroidx/compose/ui/text/font/FontFamilyResolverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/FontFamily$Resolver;


# instance fields
.field public final fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

.field public final platformFamilyTypefaceAdapter:Lcom/google/android/gms/tasks/zza;

.field public final platformFontLoader:Landroidx/transition/Transition$1;

.field public final platformResolveInterceptor:Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

.field public final typefaceRequestCache:Lcom/motorola/camera/CameraKpi;


# direct methods
.method public constructor <init>(Landroidx/transition/Transition$1;Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;)V
    .locals 5

    sget-object v0, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalTypefaceRequestCache:Lcom/motorola/camera/CameraKpi;

    new-instance v1, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    sget-object v2, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->GlobalTypefaceRequestCache:Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->DropExceptionHandler:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1;

    sget-object v3, Landroidx/compose/ui/text/platform/DispatcherKt;->FontCacheManagementDispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/coroutines/CoroutineContext$Element$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v3, Lkotlinx/coroutines/SupervisorJobImpl;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v2, v3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/google/android/gms/tasks/zza;

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Lcom/google/android/gms/tasks/zza;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/transition/Transition$1;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    iput-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->typefaceRequestCache:Lcom/motorola/camera/CameraKpi;

    iput-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iput-object v2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFamilyTypefaceAdapter:Lcom/google/android/gms/tasks/zza;

    new-instance p1, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final resolve(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->typefaceRequestCache:Lcom/motorola/camera/CameraKpi;

    new-instance v1, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p0, Lcom/google/mlkit/common/internal/zzc;

    monitor-enter p0

    :try_start_0
    iget-object v2, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/LruCache;

    invoke-virtual {v2, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->cacheable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/LruCache;

    invoke-virtual {v2, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    monitor-exit p0

    :try_start_2
    new-instance p0, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/4 v2, 0x7

    invoke-direct {p0, v2, v0, p1}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Lcom/google/mlkit/common/internal/zzc;

    monitor-enter v1

    :try_start_3
    iget-object v2, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/LruCache;

    invoke-virtual {v2, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->cacheable:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    return-object p0

    :goto_2
    monitor-exit v1

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not load font"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;
    .locals 6

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    iget-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;->fontWeightAdjustment:I

    if-eqz v1, :cond_1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    add-int/2addr p2, v1

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {p2, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    new-instance v1, Landroidx/compose/ui/text/font/FontWeight;

    invoke-direct {v1, p2}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    move-object v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p2

    :goto_1
    iget-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/transition/Transition$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move-result-object p0

    return-object p0
.end method
