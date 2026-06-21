.class public final Landroidx/compose/material/ripple/StateLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/barcode/internal/zzm;


# instance fields
.field public animatedAlpha:Ljava/lang/Object;

.field public bounded:Z

.field public currentInteraction:Ljava/lang/Object;

.field public interactions:Ljava/lang/Object;

.field public rippleAlpha:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    check-cast p2, Lkotlin/jvm/internal/Lambda;

    iput-object p2, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public drawStateLayer-mxwnekA(Landroidx/compose/ui/node/LayoutNodeDrawScope;FJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v3, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    move-wide/from16 v4, p3

    invoke-static {v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    iget-boolean v0, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    if-eqz v0, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v10

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v11

    iget-object v13, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v14

    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    iget-object v0, v13, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    iget-object v0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->$this_asDrawTransform:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v7 .. v12}, Landroidx/compose/ui/graphics/Canvas;->clipRect-N_I0leg(FFFFI)V

    const/4 v7, 0x0

    const/16 v8, 0x7c

    move-wide v1, v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v3, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v13, v14, v15}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v13, v14, v15}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    throw v0

    :cond_0
    move-wide v1, v3

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v3, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    :cond_1
    return-void
.end method

.method public handleInteraction$material_ripple_release(Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    instance-of v1, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v2, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    iget-object v2, v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    iget-object v2, v2, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v2, :cond_4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    instance-of v2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    iget-object v2, v2, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v2, p1, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    if-eqz v2, :cond_10

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    iget-object v2, v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    iget-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/interaction/Interaction;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    iget-object v5, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Lambda;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material/ripple/RippleAlpha;

    if-eqz v1, :cond_6

    iget p1, v5, Landroidx/compose/material/ripple/RippleAlpha;->hoveredAlpha:F

    goto :goto_1

    :cond_6
    instance-of v1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v1, :cond_7

    iget p1, v5, Landroidx/compose/material/ripple/RippleAlpha;->focusedAlpha:F

    goto :goto_1

    :cond_7
    instance-of p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_8

    iget p1, v5, Landroidx/compose/material/ripple/RippleAlpha;->draggedAlpha:F

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    sget-object v1, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    instance-of v5, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    instance-of v5, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    const/16 v6, 0x2d

    if-eqz v5, :cond_a

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6, v3, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    goto :goto_2

    :cond_a
    instance-of v5, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz v5, :cond_b

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v6, v3, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    :cond_b
    :goto_2
    new-instance v3, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;

    invoke-direct {v3, p0, p1, v1, v4}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v4, v4, v3, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    goto :goto_4

    :cond_c
    iget-object p1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    sget-object v1, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    instance-of v5, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    if-eqz v5, :cond_d

    goto :goto_3

    :cond_d
    instance-of v5, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    instance-of p1, p1, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    if-eqz p1, :cond_f

    new-instance v1, Landroidx/compose/animation/core/TweenSpec;

    const/16 p1, 0x96

    sget-object v5, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v3, v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    :cond_f
    :goto_3
    new-instance p1, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;

    invoke-direct {p1, p0, v1, v4}, Landroidx/compose/material/ripple/StateLayer$handleInteraction$2;-><init>(Landroidx/compose/material/ripple/StateLayer;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v4, v4, p1, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :goto_4
    iput-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    :cond_10
    return-void
.end method

.method public populateTabsFromPagerAdapter()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    iget-object v5, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;

    iget-object v5, v5, Lcom/motorola/camera/ui/controls_2020/settings/preferences/DebugUiPreference$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-object v5, v4, Lcom/google/android/material/tabs/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    iget-object v5, v4, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$TabView;->update()V

    :cond_1
    invoke-virtual {v0, v4, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq p0, v1, :cond_3

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_3
    return-void
.end method

.method public process-BIzXfog(Lcom/tinder/StateMachine;Landroidx/compose/ui/platform/AndroidComposeView;Z)I
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/platform/LayerMatrixCache;

    iget-object v2, v1, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/node/HitTestResult;

    iget-boolean v3, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    iget-object v5, v1, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/tasks/zzs;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/tasks/zzs;->produce(Lcom/tinder/StateMachine;Landroidx/compose/ui/platform/AndroidComposeView;)Lcom/google/android/gms/tasks/zzr;

    move-result-object v5

    iget-object v6, v5, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    check-cast v6, Landroidx/collection/LongSparseArray;

    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_3

    invoke-virtual {v6, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-nez v10, :cond_2

    iget-boolean v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    :goto_1
    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v3

    :goto_2
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v8

    move v9, v4

    :goto_3
    if-ge v9, v8, :cond_6

    invoke-virtual {v6, v9}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v7, :cond_4

    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    iget-object v11, v1, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/node/LayoutNode;

    iget-wide v13, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    iget-object v11, v1, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    move-object v15, v11

    check-cast v15, Landroidx/compose/ui/node/HitTestResult;

    iget v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    const/16 v17, 0x1

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroidx/compose/ui/node/LayoutNode;->hitTest-6fMxITs$ui_release(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    iget-object v11, v2, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    invoke-virtual {v11}, Landroidx/collection/MutableObjectList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    iget-wide v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-static {v10}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v10

    invoke-virtual {v0, v11, v12, v2, v10}, Landroidx/compose/ui/platform/LayerMatrixCache;->addHitPath-QJqDSyo(JLjava/util/List;Z)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/HitTestResult;->clear()V

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move/from16 v2, p3

    invoke-virtual {v0, v5, v2}, Landroidx/compose/ui/platform/LayerMatrixCache;->dispatchChanges(Lcom/google/android/gms/tasks/zzr;Z)Z

    move-result v0

    iget-boolean v2, v5, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v2, :cond_8

    :cond_7
    move v2, v4

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    move v5, v4

    :goto_4
    if-ge v5, v2, :cond_7

    invoke-virtual {v6, v5}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v7, v3}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_9

    move v2, v3

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :goto_5
    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    iput-boolean v4, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    return v0

    :goto_6
    iput-boolean v4, v1, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    throw v0
.end method

.method public zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/ArrayList;
    .locals 8

    const-string v0, "Unsupported image format: "

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material/ripple/StateLayer;->zzc()Z

    :cond_0
    iget-object p0, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    if-eqz p0, :cond_6

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;

    iget v4, p1, Lcom/google/mlkit/vision/common/InputImage;->zzd:I

    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->zze:I

    iget v2, p1, Lcom/google/mlkit/vision/common/InputImage;->zzf:I

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->convertToMVRotation(I)I

    move-result v7

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;-><init>(JIIII)V

    :try_start_0
    iget v2, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v2, v3, :cond_4

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const v3, 0x32315659

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhs;->convertToNv21Buffer(Lcom/google/mlkit/vision/common/InputImage;)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object p1

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/base/zaa;->zzb(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzg:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    throw v7

    :cond_3
    iget-object p1, p1, Lcom/google/mlkit/vision/common/InputImage;->zzb:Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object p1

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, p1, v5}, Lcom/google/android/gms/internal/base/zaa;->zzb(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, v7}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/base/zaa;->zzb(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    :goto_1
    if-ge v6, v0, :cond_5

    aget-object v1, p1, v6

    new-instance v2, Lcom/google/mlkit/vision/barcode/common/Barcode;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-direct {v3, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Matrices;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/google/mlkit/vision/barcode/common/Barcode;-><init>(Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Failed to detect with legacy barcode detector"

    invoke-direct {p1, v0, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_6
    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string p1, "Error initializing the legacy barcode scanner."

    const/16 v0, 0xe

    invoke-direct {p0, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public zzb()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/base/zaa;->zzc(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LegacyBarcodeScanner"

    const-string v2, "Failed to release legacy barcode detector."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public zzc()Z
    .locals 6

    iget-object v0, p0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iget-object v1, p0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/zzf;

    const-string v3, "com.google.android.gms.vision.dynamite"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v2

    const-string v3, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzal;->$r8$clinit:I

    const-string v3, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;

    if-eqz v5, :cond_2

    move-object v2, v4

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzak;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v3, v5}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object v2, v4

    :goto_0
    new-instance v3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v3, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzak;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzak;->zzd(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    move-result-object v2

    iput-object v2, p0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "LegacyBarcodeScanner"

    const-string v3, "Request optional module download."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "barcode"

    sget-object v3, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzad;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzak;->zza(I[Ljava/lang/Object;)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_common/zzal;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/mlkit_common/zzal;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/util/List;)V

    iput-boolean v3, p0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zzB:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {v0, p0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;)V

    new-instance p0, Lcom/google/mlkit/common/MlKitException;

    const-string v0, "Waiting for the barcode module to be downloaded. Please wait."

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    :goto_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    invoke-static {v0, p0}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to load deprecated vision dynamite module."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const-string v1, "Failed to create legacy barcode detector."

    invoke-direct {v0, v1, p0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
