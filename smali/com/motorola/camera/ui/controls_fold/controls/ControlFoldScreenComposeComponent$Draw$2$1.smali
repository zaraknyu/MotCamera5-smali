.class public final Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animDuration:I

.field public final synthetic $splitAnimation:Landroidx/compose/animation/core/Animatable;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->this$0:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    iput p3, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$animDuration:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$animDuration:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->this$0:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;-><init>(Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;Landroidx/compose/animation/core/Animatable;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->label:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$animDuration:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->this$0:Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget p1, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->$r8$clinit:I

    iget-boolean p1, v6, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isFirstDraw:Z

    if-nez p1, :cond_3

    new-instance v8, Ljava/lang/Float;

    const/4 p1, 0x0

    invoke-direct {v8, p1}, Ljava/lang/Float;-><init>(F)V

    sget-object p1, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v9, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v9, v3, v2, p1}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    iput v5, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->label:I

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    const/4 v10, 0x0

    const/16 v12, 0xc

    move-object v11, p0

    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_3
    :goto_0
    move-object v11, p0

    :cond_4
    iget-object p0, v6, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result p0

    iget-object p1, v6, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v1, p0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean p0, v6, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isFirstDraw:Z

    if-nez p0, :cond_5

    new-instance v8, Ljava/lang/Float;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-direct {v8, p0}, Ljava/lang/Float;-><init>(F)V

    sget-object p0, Landroidx/compose/animation/core/EasingFunctionsKt;->EaseInOut:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v9, Landroidx/compose/animation/core/TweenSpec;

    invoke-direct {v9, v3, v3, p0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    iput v4, v11, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->label:I

    iget-object v7, v11, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$Draw$2$1;->$splitAnimation:Landroidx/compose/animation/core/Animatable;

    const/4 v10, 0x0

    const/16 v12, 0xc

    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    sget p0, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->$r8$clinit:I

    iput-boolean v2, v6, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->isFirstDraw:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
