.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animDuration:I

.field public final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $splitAnimation:Landroidx/compose/animation/core/Animatable;

.field public L$0:Lkotlin/jvm/functions/Function0;

.field public L$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$animDuration:I

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$animDuration:I

    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v4, p0

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->label:I

    const/4 v7, 0x3

    iget-object v8, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v1, 0x1

    iget v12, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$animDuration:I

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v10, :cond_0

    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$0:Lkotlin/jvm/functions/Function0;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;

    iget-object v1, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$0:Lkotlin/jvm/functions/Function0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-boolean v1, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->switchingLayout:Z

    new-instance v13, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v13, v9, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    new-instance v14, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v14, v9, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V

    iget-boolean v2, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isFirstDraw:Z

    if-nez v2, :cond_4

    :try_start_2
    iget-object v2, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    new-instance v3, Ljava/lang/Float;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/lang/Float;-><init>(F)V

    sget-object v5, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    move-object v15, v2

    new-instance v2, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v2, v12, v0, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    iput-object v13, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$0:Lkotlin/jvm/functions/Function0;

    iput-object v14, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;

    iput v1, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->label:I

    move-object v1, v3

    const/4 v3, 0x0

    const/16 v5, 0xc

    move-object v0, v15

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v13

    move-object v0, v14

    goto :goto_0

    :catch_0
    move-object v1, v13

    move-object v0, v14

    :catch_1
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_0
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$1;

    invoke-direct {v2, v12, v1, v11}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$1;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v11, v11, v2, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-object v14, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v13}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    :goto_1
    iget-boolean v0, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isFirstDraw:Z

    if-nez v0, :cond_6

    :try_start_3
    iget-object v0, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    new-instance v1, Ljava/lang/Float;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    sget-object v2, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v3, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v3, v12, v12, v2}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    iput-object v14, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$0:Lkotlin/jvm/functions/Function0;

    iput-object v11, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->L$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;

    iput v10, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1;->label:I

    move-object v2, v3

    const/4 v3, 0x0

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    if-ne v0, v6, :cond_5

    :goto_2
    return-object v6

    :cond_5
    move-object v0, v14

    goto :goto_3

    :catch_2
    move-object v0, v14

    :catch_3
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_3
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$2;

    invoke-direct {v1, v12, v0, v11}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$2;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v11, v11, v1, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_4

    :cond_6
    invoke-interface {v14}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
