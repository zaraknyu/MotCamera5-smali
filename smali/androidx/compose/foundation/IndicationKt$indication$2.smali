.class public final Landroidx/compose/foundation/IndicationKt$indication$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $indication:Ljava/lang/Object;

.field public final synthetic $interactionSource:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/Transition;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$r8$classId:I

    .line 2
    check-cast p1, Lkotlin/jvm/internal/Lambda;

    iput-object p1, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/text/SpanStyle;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Landroidx/compose/ui/text/android/style/TypefaceSpan;

    iget-object p0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;

    iget-object v2, p1, Landroidx/compose/ui/text/SpanStyle;->fontFamily:Landroidx/compose/ui/text/font/SystemFontFamily;

    iget-object v3, p1, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v3, :cond_0

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_0
    iget-object v4, p1, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v4, :cond_1

    iget v4, v4, Landroidx/compose/ui/text/font/FontStyle;->value:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object p1, p1, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz p1, :cond_2

    iget p1, p1, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    goto :goto_1

    :cond_2
    const p1, 0xffff

    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt$populate$5;->$this_populate:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iget-object v5, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->fontFamilyResolver:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    check-cast v5, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    invoke-virtual {v5, v2, v3, v4, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/SystemFontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    move-result-object p1

    instance-of v2, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    const-string v3, "null cannot be cast to non-null type android.graphics.Typeface"

    if-nez v2, :cond_3

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    iget-object v4, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    invoke-direct {v2, p1, v4}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/compose/ui/text/font/TypefaceResult$Immutable;Landroidx/core/view/MenuHostHelper;)V

    iput-object v2, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->resolvedTypefaces:Landroidx/core/view/MenuHostHelper;

    iget-object p0, v2, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    goto :goto_2

    :cond_3
    iget-object p0, p1, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;->value:Ljava/lang/Object;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/Typeface;

    :goto_2
    const/4 p1, 0x0

    invoke-direct {v1, p1, p0}, Landroidx/compose/ui/text/android/style/TypefaceSpan;-><init>(ILjava/lang/Object;)V

    const/16 p0, 0x21

    invoke-interface {v0, v1, p2, p3, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    iget-object v0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v0, p1}, Lcom/google/android/gms/dynamite/zzb;->isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p0, v2, :cond_5

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    move-result-object p0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    const/4 v2, 0x0

    if-nez p0, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/dynamite/zzb;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    move-result v3

    int-to-float p0, p0

    div-float/2addr v3, p0

    :goto_4
    float-to-int p0, v3

    int-to-float p0, p0

    sub-float p0, v3, p0

    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->MinFlingVelocityDp:F

    invoke-interface {v6, v8}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    cmpg-float v6, v7, v6

    const/4 v7, 0x2

    if-gez v6, :cond_8

    goto :goto_5

    :cond_8
    cmpl-float p1, p1, v2

    if-lez p1, :cond_9

    move v4, v5

    goto :goto_5

    :cond_9
    move v4, v7

    :goto_5
    if-nez v4, :cond_d

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_a

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_a
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget-object p1, v0, Landroidx/compose/foundation/pager/PagerState;->density:Landroidx/compose/ui/unit/Density;

    sget v2, Landroidx/compose/foundation/pager/PagerStateKt;->DefaultPositionThreshold:F

    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getPageSize$foundation_release()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_b

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_b
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    move p2, p3

    goto :goto_7

    :cond_d
    if-ne v4, v5, :cond_e

    goto :goto_6

    :cond_e
    if-ne v4, v7, :cond_f

    goto :goto_7

    :cond_f
    move p2, v2

    :cond_10
    :goto_7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p3, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p3, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p3, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    check-cast p3, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object v2, p3, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;

    invoke-virtual {v2, p1}, Landroidx/compose/foundation/gestures/ScrollableKt$CanDragCalculation$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-boolean v2, p3, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    if-nez v2, :cond_12

    iget-object v2, p3, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v3, 0x0

    if-nez v2, :cond_11

    const v2, 0x7fffffff

    const/4 v4, 0x6

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, p3, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, p3, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    invoke-virtual {p3}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v4, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    invoke-direct {v4, p3, v3}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    invoke-static {v2, v3, v3, v4, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_12
    iget-object p0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    iget-wide p0, p2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p0

    iget-object p2, p3, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz p2, :cond_13

    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    invoke-direct {p3, p0, p1}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(J)V

    invoke-interface {p2, p3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureScope;->isLookingAhead()Z

    move-result p3

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    if-eqz p3, :cond_14

    iget-object p3, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/internal/Lambda;

    iget-object p0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_14

    const-wide/16 v3, 0x0

    goto :goto_8

    :cond_14
    iget p0, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v3, p0

    shl-long/2addr v3, v2

    int-to-long v5, p3

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    :goto_8
    shr-long v5, v3, v2

    long-to-int p0, v5

    and-long/2addr v0, v3

    long-to-int p3, v0

    new-instance v0, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p0, p3, p2, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const p1, -0x15193045

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$indication:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/Indication;

    iget-object p0, p0, Landroidx/compose/foundation/IndicationKt$indication$2;->$interactionSource:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-interface {p1, p0, p2}, Landroidx/compose/foundation/Indication;->rememberUpdatedInstance(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/IndicationInstance;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_15

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p3, p1, :cond_16

    :cond_15
    new-instance p3, Landroidx/compose/foundation/IndicationModifier;

    invoke-direct {p3, p0}, Landroidx/compose/foundation/IndicationModifier;-><init>(Landroidx/compose/foundation/IndicationInstance;)V

    invoke-virtual {p2, p3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    check-cast p3, Landroidx/compose/foundation/IndicationModifier;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
