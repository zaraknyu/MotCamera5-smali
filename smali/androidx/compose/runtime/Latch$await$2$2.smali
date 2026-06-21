.class public final Landroidx/compose/runtime/Latch$await$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $co:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/text/TextLinkScope;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;)V
    .locals 0

    const/16 p1, 0x15

    iput p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$r8$classId:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x20

    const-wide v6, 0xffffffffL

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    :goto_0
    iput-object p1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;

    iget-object v4, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->layerBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;

    iget-object v4, p0, Landroidx/compose/ui/graphics/BlockGraphicsLayerModifier;->layerBlock:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/collection/MutableScatterSet;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/Recomposer;

    iget-object v1, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    monitor-enter v1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    :try_start_0
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v9

    :goto_2
    if-eqz p1, :cond_5

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_4
    move-object p0, v9

    :cond_5
    :goto_3
    iput-object p0, v0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    iget-object p0, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v9, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_4
    monitor-exit v1

    throw p0

    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/BroadcastFrameClock;

    iget-object v1, p1, Landroidx/compose/runtime/BroadcastFrameClock;->lock:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/BroadcastFrameClock$FrameAwaiter;

    monitor-enter v1

    :try_start_1
    iget-object v0, p1, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p1, Landroidx/compose/runtime/BroadcastFrameClock;->awaiters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Landroidx/compose/runtime/BroadcastFrameClock;->hasAwaitersUnlocked:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {p0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_6
    :goto_5
    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_6
    monitor-exit v1

    throw p0

    :pswitch_5
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v10

    :goto_7
    if-ge v2, v1, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v7, v5, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    invoke-static {p1, v6, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_8
    if-ge v10, v0, :cond_9

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v5, v1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_9

    :cond_8
    move-wide v5, v3

    :goto_9
    invoke-static {p1, v2, v5, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, v0, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v3, :cond_a

    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    if-eqz v3, :cond_a

    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_a

    :cond_a
    move-object v3, v9

    :goto_a
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    move-object v3, v9

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz v0, :cond_b

    invoke-static {p0, v0}, Landroidx/compose/foundation/text/TextLinkScope;->calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object p0

    if-nez p0, :cond_d

    goto :goto_b

    :cond_d
    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget p0, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    invoke-virtual {v0, p0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v3

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    sub-int/2addr v1, v11

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v8

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    if-ne p0, v0, :cond_e

    iget p0, v8, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v0, v4, Landroidx/compose/ui/geometry/Rect;->left:F

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_e
    iget p0, v4, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v12, p0

    shl-long/2addr v0, v5

    and-long/2addr v12, v6

    or-long/2addr v0, v12

    const-wide v12, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v0, v12

    iget-object p0, v3, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    if-nez p0, :cond_f

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    iput-object p0, v3, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    goto :goto_c

    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    :goto_c
    iget-object p0, v3, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    shr-long v4, v0, v5

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr v0, v6

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object p0, v3, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    iget-object v0, v3, Landroidx/compose/ui/graphics/AndroidPath;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_d
    if-eqz v3, :cond_10

    new-instance v9, Lcom/google/android/gms/tasks/zza;

    const/16 p0, 0x8

    invoke-direct {v9, p0, v3}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    :cond_10
    if-eqz v9, :cond_11

    invoke-virtual {p1, v9}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    invoke-virtual {p1, v11}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    :cond_11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p1, Landroidx/compose/foundation/text/TextAnnotatorScope;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    iget-object v0, v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v2, p0, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    goto :goto_e

    :cond_12
    move-object v3, v9

    :goto_e
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v4

    and-int/2addr v4, v11

    if-eqz v4, :cond_13

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v4}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    goto :goto_f

    :cond_13
    move-object v4, v9

    :goto_f
    if-eqz v3, :cond_14

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v4

    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v3

    and-int/2addr v3, v8

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v3, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    goto :goto_10

    :cond_15
    move-object v3, v9

    :goto_10
    if-eqz v4, :cond_16

    invoke-virtual {v4, v3}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v3

    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_17

    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation;

    invoke-virtual {v2}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v9, v0, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v3, v9}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v9

    :cond_18
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Landroidx/compose/foundation/text/TextAnnotatorScope;->initialText:Landroidx/compose/ui/text/AnnotatedString;

    new-instance v2, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    const/16 v3, 0xa

    invoke-direct {v2, v0, p0, v9, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_11
    if-ge v10, v1, :cond_19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    iget-object v5, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v6, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    iget v7, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    invoke-direct {v4, v6, v7, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_19
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    iput-object p0, p1, Landroidx/compose/foundation/text/TextAnnotatorScope;->styledText:Landroidx/compose/ui/text/AnnotatedString;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    iget-object p0, p0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;->shouldMeasureLinks:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0}, Landroidx/compose/foundation/text/BasicTextKt;->access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_12
    if-ge v10, v0, :cond_1b

    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v5, v1, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    goto :goto_13

    :cond_1a
    move-wide v5, v3

    :goto_13
    invoke-static {p1, v2, v5, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_1b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v0, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    if-eqz p1, :cond_1d

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object p1, p1, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    iget-object p1, p1, Landroidx/compose/ui/text/MultiParagraph;->paragraphInfoList:Ljava/util/ArrayList;

    and-long v2, v0, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {p1, v3}, Lkotlin/text/RegexKt;->findParagraphByY(Ljava/util/ArrayList;F)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/ParagraphInfo;

    iget v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->endIndex:I

    iget v4, p1, Landroidx/compose/ui/text/ParagraphInfo;->startIndex:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_1c

    goto :goto_14

    :cond_1c
    iget-object v3, p1, Landroidx/compose/ui/text/ParagraphInfo;->paragraph:Landroidx/compose/ui/text/AndroidParagraph;

    shr-long/2addr v0, v5

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget p1, p1, Landroidx/compose/ui/text/ParagraphInfo;->top:F

    sub-float/2addr v1, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v8, p1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    shl-long/2addr v8, v5

    and-long/2addr v0, v6

    or-long/2addr v0, v8

    iget-object p1, v3, Landroidx/compose/ui/text/AndroidParagraph;->layout:Landroidx/compose/ui/text/android/TextLayout;

    and-long v2, v0, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p1, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    iget v6, p1, Landroidx/compose/ui/text/android/TextLayout;->topPadding:I

    sub-int/2addr v2, v6

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    shr-long/2addr v0, v5

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object v1, p1, Landroidx/compose/ui/text/android/TextLayout;->layout:Landroid/text/Layout;

    const/4 v3, -0x1

    int-to-float v3, v3

    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/android/TextLayout;->getHorizontalPadding(I)F

    move-result p1

    mul-float/2addr p1, v3

    add-float/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    add-int/2addr v4, p1

    :goto_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    new-instance v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;

    iget-object v1, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v8, v1}, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;-><init>(ILjava/util/ArrayList;)V

    iput-boolean v11, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v10, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iget-object v0, p1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->previouslyComposedKeys:Landroidx/collection/MutableScatterSet;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterSet;->minusAssign(Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    check-cast p1, Ljava/util/Map;

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iget-object v1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)V

    return-object v0

    :pswitch_d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    iget-object v0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->spanLayoutProvider:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    invoke-virtual {v0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(I)I

    move-result v5

    invoke-virtual {p1, v10, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v1

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;

    const/4 v4, 0x0

    iget v6, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getAndMeasure-m8Kt_7k(JIIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineConfiguration(I)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object p1

    iget v0, p1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v10

    :goto_15
    if-ge v10, v2, :cond_1e

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    iget-wide v4, v4, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    long-to-int v4, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;->childConstraints-JhjzzOo$foundation_release(II)J

    move-result-wide v6

    new-instance v8, Landroidx/compose/ui/unit/Constraints;

    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/unit/Constraints;-><init>(J)V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v11

    add-int/2addr v3, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1e
    return-object v1

    :pswitch_f
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    iget-object v0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->insetsListener:Landroidx/compose/foundation/layout/InsetsListener;

    iget v1, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    if-nez v1, :cond_20

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    :cond_1f
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/media3/decoder/Buffer;)V

    :cond_20
    iget v0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    add-int/2addr v0, v11

    iput v0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_10
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    iget v0, p1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    iput v2, p1, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-wide v1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, p1, :cond_21

    invoke-static {v11, v1, v2}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(IJ)J

    move-result-wide p0

    goto :goto_16

    :cond_21
    invoke-static {v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(IJ)J

    move-result-wide p0

    :goto_16
    invoke-virtual {v0, v11, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(IJ)J

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/zzad;

    iget-object p1, p1, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/collection/MutableVector;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/interaction/Interaction;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/graphics/Brush;

    const/4 v4, 0x0

    const/16 v5, 0x3c

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v1, p1, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Landroidx/compose/ui/graphics/Brush;

    const/4 v4, 0x0

    const/16 v5, 0x3c

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iget-object v0, p1, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_17
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_18
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition;

    iget-object v0, p1, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, v8, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_19
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Landroidx/compose/animation/core/Transition$animateTo$1$1$1;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/Transition;

    invoke-direct {v1, p0, v9}, Landroidx/compose/animation/core/Transition$animateTo$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v9, v0, v1, v11}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    new-instance p0, Landroidx/compose/animation/core/Transition$animateTo$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_1a
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/animation/core/InfiniteTransition;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteTransition;->_animations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteTransition;->refreshChildNeeded$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, v11, p1, p0}, Landroidx/compose/foundation/text/TextLinkScope$StyleAnnotation$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_1b
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/animation/ContentTransform;

    iget-object p0, p0, Landroidx/compose/animation/ContentTransform;->targetContentZIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v1, v10

    shl-long v3, v1, v5

    and-long/2addr v1, v6

    or-long/2addr v1, v3

    invoke-static {p1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v3, v0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0, v9}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/Latch;

    iget-object v1, p1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    monitor-enter v1

    :try_start_2
    iget-object p1, p1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
