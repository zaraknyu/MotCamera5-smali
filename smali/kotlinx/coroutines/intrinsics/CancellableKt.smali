.class public abstract Lkotlinx/coroutines/intrinsics/CancellableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Density(Landroid/content/Context;)Landroidx/compose/ui/unit/DensityWithConverter;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    new-instance v1, Landroidx/compose/ui/unit/DensityWithConverter;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Landroidx/compose/ui/unit/fontscaling/FontScaleConverterFactory;->forScale(F)Landroidx/compose/ui/unit/fontscaling/FontScaleConverter;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/compose/ui/unit/LinearFontScaleConverter;

    invoke-direct {v2, v0}, Landroidx/compose/ui/unit/LinearFontScaleConverter;-><init>(F)V

    :cond_0
    invoke-direct {v1, p0, v0, v2}, Landroidx/compose/ui/unit/DensityWithConverter;-><init>(FFLandroidx/compose/ui/unit/fontscaling/FontScaleConverter;)V

    return-object v1
.end method

.method public static final startCoroutineCancellable(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/AbstractCoroutine;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/InlineList;->resumeCancellableWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    instance-of v0, p0, Lkotlinx/coroutines/DispatchException;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/DispatchException;

    iget-object p0, p0, Lkotlinx/coroutines/DispatchException;->cause:Ljava/lang/Throwable;

    :cond_0
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/AbstractCoroutine;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method
