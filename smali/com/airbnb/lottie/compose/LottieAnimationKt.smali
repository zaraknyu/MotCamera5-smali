.class public abstract Lcom/airbnb/lottie/compose/LottieAnimationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    const/4 v1, 0x1

    .line 1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x4f5919ed

    .line 2
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const v2, 0x28bfd0f4

    .line 3
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 4
    sget-object v4, Lcom/airbnb/lottie/compose/LottieCancellationBehavior;->Immediately:Lcom/airbnb/lottie/compose/LottieCancellationBehavior;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_8

    const v3, 0x78ab5fda

    .line 6
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    const v3, -0x245f086a

    .line 7
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 8
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 9
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v7, :cond_0

    .line 10
    new-instance v3, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    invoke-direct {v3}, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;-><init>()V

    .line 11
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 12
    :cond_0
    check-cast v3, Lcom/airbnb/lottie/compose/LottieAnimatableImpl;

    const/4 v8, 0x0

    .line 13
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, -0xac3d7f4

    .line 14
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 15
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_1

    .line 16
    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    .line 17
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 18
    :cond_1
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 19
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, -0xac3d772

    .line 20
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 21
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 22
    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 23
    sget-object v9, Lcom/airbnb/lottie/utils/Utils;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 24
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "animator_duration_scale"

    invoke-static {v6, v9, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    div-float/2addr v2, v6

    .line 25
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 26
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const v9, 0x7fffffff

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    filled-new-array {p0, v1, v10, v6, v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 28
    new-instance v0, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;

    const/4 v6, 0x0

    move-object v1, v3

    move v3, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt$animateLottieCompositionAsState$3;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatableImpl;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/compose/LottieCancellationBehavior;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 29
    iget-object v2, p2, Landroidx/compose/runtime/ComposerImpl;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 30
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    const/4 v3, 0x5

    .line 31
    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 32
    array-length v4, v3

    move v5, v8

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v9, v3, v5

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v6, :cond_3

    if-ne v3, v7, :cond_4

    .line 34
    :cond_3
    new-instance v3, Landroidx/compose/runtime/LaunchedEffectImpl;

    invoke-direct {v3, v2, v0}, Landroidx/compose/runtime/LaunchedEffectImpl;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    .line 35
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_4
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, 0xb094889

    .line 37
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 38
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_5

    if-ne v2, v7, :cond_6

    .line 39
    :cond_5
    new-instance v2, Landroidx/work/Worker$startWork$1;

    const/4 v0, 0x7

    invoke-direct {v2, v0, v1}, Landroidx/work/Worker$startWork$1;-><init>(ILjava/lang/Object;)V

    .line 40
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 41
    :cond_6
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 42
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0x40000008    # 2.000002f

    const v5, 0x8000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v3, 0xe

    invoke-direct {v2, p3, v3, p0, p1}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void

    .line 45
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speed must be a finite number. It is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final LottieAnimation(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 10

    const-string/jumbo v0, "progress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x16d2bdc6

    .line 46
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    const v0, 0xb0932b9

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 47
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 48
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, v3, :cond_0

    .line 49
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    .line 50
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 51
    :cond_0
    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    const/4 v8, 0x0

    .line 52
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v4, 0xb0932e8

    .line 53
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 54
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 55
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    :cond_1
    check-cast v4, Landroid/graphics/Matrix;

    .line 58
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0xb093338

    .line 59
    invoke-virtual {p3, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    .line 60
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 61
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2

    if-ne v6, v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    .line 62
    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v6

    .line 63
    invoke-virtual {p3, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    :cond_3
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 65
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0xb09336c

    .line 66
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-eqz p0, :cond_5

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-nez v3, :cond_4

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v2, v4

    .line 69
    iget-object v1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    .line 70
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 71
    invoke-virtual {p3, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    move-object v5, v3

    check-cast v5, Landroid/content/Context;

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 74
    const-string v9, "<this>"

    invoke-static {p2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v9, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;

    invoke-direct {v9, v3, v6}, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;-><init>(II)V

    invoke-interface {p2, v9}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    move-object v3, v0

    .line 76
    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$2;-><init>(Landroid/graphics/Rect;Landroid/graphics/Matrix;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V

    invoke-static {v9, v0, p3, v8}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;-><init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;III)V

    .line 77
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_5
    :goto_0
    shr-int/lit8 v0, p4, 0x6

    and-int/lit8 v0, v0, 0xe

    .line 78
    invoke-static {p2, p3, v0}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    .line 79
    invoke-virtual {p3, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    .line 80
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/compose/LottieAnimationKt$LottieAnimation$1;-><init>(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;III)V

    .line 81
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
