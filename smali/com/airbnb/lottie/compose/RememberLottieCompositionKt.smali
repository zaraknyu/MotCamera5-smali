.class public abstract Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final access$lottieComposition(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;

    iget v3, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;

    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    iget-object v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    iget-object v7, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    iget-object v8, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    iget-object v8, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    iget-object v10, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v0, v4

    move-object v4, v8

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 v4, p5

    invoke-static {v0, v1, v4}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->lottieTask(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    iput-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    move-object/from16 v10, p3

    iput-object v10, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    move-object/from16 v11, p4

    iput-object v11, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    iput v8, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    new-instance v12, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzln;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v13

    invoke-direct {v12, v8, v13}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance v13, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    invoke-virtual {v1, v13}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    new-instance v13, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;

    invoke-direct {v13, v12, v8}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$await$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;I)V

    invoke-virtual {v1, v13}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    invoke-virtual {v12}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v15, v10

    move-object v10, v0

    move-object v0, v15

    :goto_1
    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    iput-object v10, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    iput-object v11, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    iput-object v1, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    iput v7, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    iget-object v7, v1, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move-object v4, v5

    goto :goto_2

    :cond_7
    sget-object v7, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v7, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v8, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$loadImagesFromAssets$2;

    invoke-direct {v8, v1, v10, v4, v9}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$loadImagesFromAssets$2;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v8, v2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    :goto_2
    if-ne v4, v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v7, v0

    move-object v0, v1

    move-object v8, v10

    move-object v4, v11

    :goto_3
    iput-object v0, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$1:Ljava/lang/String;

    iput-object v9, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$2:Ljava/lang/String;

    iput-object v9, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->L$3:Ljava/lang/Object;

    iput v6, v2, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$lottieComposition$1;->label:I

    iget-object v1, v0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v6, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$loadFontsFromAssets$2;

    const/4 v9, 0x0

    move-object/from16 p1, v0

    move-object/from16 p4, v4

    move-object/from16 p0, v6

    move-object/from16 p3, v7

    move-object/from16 p2, v8

    move-object/from16 p5, v9

    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$loadFontsFromAssets$2;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, p0

    invoke-static {v1, v4, v2}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    move-object v5, v1

    :cond_a
    :goto_4
    if-ne v5, v3, :cond_b

    :goto_5
    return-object v3

    :cond_b
    return-object v0
.end method

.method public static final lottieTask(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 1

    instance-of v0, p1, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    if-eqz v0, :cond_1

    const-string v0, "__LottieInternalDefaultCacheKey__"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;->resId:I

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0

    :cond_0
    iget p1, p1, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;->resId:I

    invoke-static {p0, p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;Ljava/lang/String;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final rememberLottieComposition(Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/ComposerImpl;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;
    .locals 9

    const v0, -0x4a6a3202

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    new-instance v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const v0, 0x52c617e1

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    and-int/lit8 v0, p2, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v4, 0x4

    const/4 v7, 0x0

    if-le v0, v4, :cond_0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    and-int/lit8 v5, p2, 0x6

    if-ne v5, v4, :cond_2

    :cond_1
    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v5, :cond_3

    if-ne v6, v8, :cond_4

    :cond_3
    new-instance v5, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    invoke-direct {v5}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;-><init>()V

    invoke-static {v5}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    move-object v5, v6

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, 0x52c61904

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    if-le v0, v4, :cond_5

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    and-int/lit8 p2, p2, 0x6

    if-ne p2, v4, :cond_6

    goto :goto_1

    :cond_6
    move v1, v7

    :cond_7
    :goto_1
    const-string p2, "__LottieInternalDefaultCacheKey__"

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_8

    if-ne v1, v8, :cond_9

    :cond_8
    invoke-static {v3, p0, p2}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->lottieTask(Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Lcom/airbnb/lottie/LottieTask;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt$rememberLottieComposition$3;-><init>(Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;Landroid/content/Context;Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, p2, v1, p1}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    invoke-virtual {p1, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
