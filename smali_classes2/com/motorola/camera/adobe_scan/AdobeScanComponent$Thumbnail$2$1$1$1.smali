.class public final Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $duration:I

.field public final synthetic $rotation:Landroidx/compose/animation/core/Animatable;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;Lcom/motorola/camera/adobe_scan/AdobeScanComponent;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->$rotation:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iput p3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->$duration:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->$duration:I

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->$rotation:Landroidx/compose/animation/core/Animatable;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;-><init>(Landroidx/compose/animation/core/Animatable;Lcom/motorola/camera/adobe_scan/AdobeScanComponent;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->$rotation:Landroidx/compose/animation/core/Animatable;

    iget-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->this$0:Lcom/motorola/camera/adobe_scan/AdobeScanComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p1

    move v3, v2

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    iget p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->$duration:I

    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v6, v4, v5}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object p1

    iput v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1$1;->label:I

    const/4 v4, 0x0

    const/16 v6, 0xc

    move-object v5, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v0, :cond_2

    return-object v0

    :catch_0
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
