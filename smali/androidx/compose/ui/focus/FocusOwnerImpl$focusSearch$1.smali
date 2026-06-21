.class public final Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $onFound:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $source:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/internal/Lambda;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/DefaultFlingBehavior;)V
    .locals 0

    const/4 p4, 0x5

    iput p4, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    instance-of v4, v3, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    invoke-static {v1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/node/TraversableNode;

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeView;->getDragAndDropManager()Landroidx/compose/ui/draganddrop/DragAndDropManager;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;

    iget-object v3, v3, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    invoke-virtual {v3, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/tasks/zzs;

    invoke-static {v3}, Landroidx/compose/ui/draganddrop/DragAndDrop_androidKt;->getPositionInRoot(Lcom/google/android/gms/tasks/zzs;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/draganddrop/DragAndDropNodeKt;->access$contains-Uv8p0NA(Landroidx/compose/ui/draganddrop/DragAndDropNode;J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->CancelTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    :goto_1
    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    iget-object v3, v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->registries:Landroidx/collection/MutableScatterMap;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->savedStates:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v1, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was used multiple times "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_6

    iget-object v4, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    iget v5, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    iget v6, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    instance-of v4, v4, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v4, :cond_6

    iget v4, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    if-ne v6, v4, :cond_6

    iget v4, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    if-ne v5, v4, :cond_6

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    if-nez v0, :cond_5

    new-instance v7, Landroidx/compose/ui/text/SpanStyle;

    const/16 v25, 0x0

    const v26, 0xffff

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v7 .. v26}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/SystemFontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    move-object v0, v7

    :cond_5
    invoke-direct {v4, v6, v5, v0}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    move-object v4, v1

    :goto_2
    invoke-virtual {v2, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-object v4

    :pswitch_3
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/layout/PaddingNode;

    iget-boolean v4, v0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    if-eqz v4, :cond_7

    iget v4, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    invoke-interface {v3, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_3

    :cond_7
    iget v4, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    invoke-interface {v3, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/foundation/layout/OffsetPxNode;

    iget-object v4, v1, Landroidx/compose/foundation/layout/OffsetPxNode;->offset:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v4, v0, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    iget-boolean v0, v1, Landroidx/compose/foundation/layout/OffsetPxNode;->rtlAware:Z

    const-wide v6, 0xffffffffL

    const/16 v1, 0x20

    if-eqz v0, :cond_8

    shr-long v0, v4, v1

    long-to-int v0, v0

    and-long/2addr v4, v6

    long-to-int v1, v4

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_4

    :cond_8
    shr-long v0, v4, v1

    long-to-int v0, v0

    and-long/2addr v4, v6

    long-to-int v5, v4

    const/4 v6, 0x0

    const/16 v7, 0xc

    move v4, v0

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/layout/OffsetNode;

    iget-boolean v4, v0, Landroidx/compose/foundation/layout/OffsetNode;->rtlAware:Z

    if-eqz v4, :cond_9

    iget v4, v0, Landroidx/compose/foundation/layout/OffsetNode;->x:F

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget v0, v0, Landroidx/compose/foundation/layout/OffsetNode;->y:F

    invoke-interface {v3, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_5

    :cond_9
    iget v4, v0, Landroidx/compose/foundation/layout/OffsetNode;->x:F

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    iget v0, v0, Landroidx/compose/foundation/layout/OffsetNode;->y:F

    invoke-interface {v3, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v0

    invoke-static {v2, v1, v4, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-static {v2, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    move-result v1

    invoke-static {v1, v1}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-AH228Gc(J)J

    move-result-wide v3

    iget-object v1, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    iget-object v5, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v6, v8, v5}, Lkotlin/collections/ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v7, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    iget-object v1, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    iget-object v5, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->samples:[Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    array-length v6, v5

    invoke-static {v7, v6, v8, v5}, Lkotlin/collections/ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v7, v1, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->index:I

    const-wide/16 v5, 0x0

    iput-wide v5, v2, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->lastMoveEventTimeStamp:J

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v0, :cond_c

    new-instance v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    move v2, v5

    goto :goto_6

    :cond_a
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v2

    :goto_6
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v5

    :goto_7
    invoke-static {v2, v5}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(J)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v2, v1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    iget v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v2, v4

    iget-object v4, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;

    invoke-virtual {v4, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic$doFlingAnimation$2$reverseScope$1;->scrollBy(F)F

    move-result v4

    iget-object v5, v1, Landroidx/compose/animation/core/AnimationScope;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iput v5, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v3, v1, Landroidx/compose/animation/core/AnimationScope;->typeConverter:Landroidx/compose/animation/core/TwoWayConverterImpl;

    iget-object v3, v3, Landroidx/compose/animation/core/TwoWayConverterImpl;->convertFromVector:Lkotlin/jvm/functions/Function1;

    iget-object v5, v1, Landroidx/compose/animation/core/AnimationScope;->velocityVector:Landroidx/compose/animation/core/AnimationVector;

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iput v3, v0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_d

    invoke-virtual {v1}, Landroidx/compose/animation/core/AnimationScope;->cancelAnimation()V

    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/ContentInViewNode;

    iget-boolean v3, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    if-eqz v3, :cond_e

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    const/high16 v3, -0x40800000    # -1.0f

    :goto_8
    mul-float v4, v3, v1

    iget-object v2, v2, Landroidx/compose/foundation/gestures/ContentInViewNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v5, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v6

    iget-object v4, v5, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->outerStateScope:Landroidx/compose/foundation/gestures/ScrollScope;

    const/4 v8, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->access$performScroll-3eAAhYA(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scroll animation cancelled because scroll was not consumed ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlinx/coroutines/JobKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/EnterExitState;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/animation/EnterTransitionImpl;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/ExitTransitionImpl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_13

    const/4 v5, 0x1

    if-eq v1, v5, :cond_12

    const/4 v0, 0x2

    if-ne v1, v0, :cond_11

    iget-object v0, v3, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v0, :cond_10

    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_9

    :cond_10
    iget-object v0, v2, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v0, :cond_15

    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_9

    :cond_11
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_12
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/graphics/TransformOrigin;

    goto :goto_9

    :cond_13
    iget-object v0, v2, Landroidx/compose/animation/EnterTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v0, :cond_14

    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    goto :goto_9

    :cond_14
    iget-object v0, v3, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v0, :cond_15

    iget-wide v0, v0, Landroidx/compose/animation/Scale;->transformOrigin:J

    new-instance v4, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    :cond_15
    :goto_9
    if-eqz v4, :cond_16

    iget-wide v0, v4, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    goto :goto_a

    :cond_16
    sget-wide v0, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    :goto_a
    new-instance v2, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    return-object v2

    :pswitch_a
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/runtime/State;

    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/runtime/State;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_17

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_b

    :cond_17
    move v3, v4

    :goto_b
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    if-eqz v2, :cond_18

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_c

    :cond_18
    move v3, v4

    :goto_c
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    if-eqz v2, :cond_19

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    :cond_19
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/TransformOrigin;

    iget-wide v2, v0, Landroidx/compose/ui/graphics/TransformOrigin;->packedValue:J

    goto :goto_d

    :cond_1a
    sget-wide v2, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    :goto_d
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    new-instance v3, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    const/4 v4, 0x0

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    invoke-direct {v3, v1, v0, v2, v4}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v3

    :pswitch_c
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$source:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v0, 0x0

    goto :goto_e

    :cond_1b
    iget-object v2, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object v2, v2, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->$onFound:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Lambda;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Focus search landed at the root."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
