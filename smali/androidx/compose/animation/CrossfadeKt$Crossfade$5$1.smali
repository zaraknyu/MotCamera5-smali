.class public final Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $animationSpec:Ljava/lang/Object;

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $r8$classId:I

.field public final synthetic $stateForContent:Ljava/lang/Object;

.field public final synthetic $this_Crossfade:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TweenSpec;Ljava/lang/Object;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$this_Crossfade:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$animationSpec:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$stateForContent:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p5, 0x1

    iput p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$this_Crossfade:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$animationSpec:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$stateForContent:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$r8$classId:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    iget-object v4, v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$stateForContent:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$animationSpec:Ljava/lang/Object;

    iget-object v6, v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$this_Crossfade:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-object v7, v6

    check-cast v7, Landroidx/compose/material3/ColorScheme;

    move-object v8, v5

    check-cast v8, Landroidx/compose/material3/Shapes;

    move-object v9, v4

    check-cast v9, Landroidx/compose/material3/Typography;

    iget-object v10, v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v12

    invoke-static/range {v7 .. v12}, Landroidx/compose/material3/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/Shapes;Landroidx/compose/material3/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    return-object v2

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    and-int/lit8 v10, v7, 0x3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    move v10, v3

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    and-int/2addr v7, v3

    invoke-virtual {v1, v7, v10}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v13, v6

    check-cast v13, Landroidx/compose/animation/core/Transition;

    move-object/from16 v16, v5

    check-cast v16, Landroidx/compose/animation/core/TweenSpec;

    sget-object v5, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    move-result-object v5

    const v6, -0x1a25b2ec

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v5, v13, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v7, v10

    :cond_2
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v13}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    const v5, 0x1a218d63

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v18, 0x0

    move-object/from16 v17, v1

    invoke-static/range {v13 .. v18}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    move-result-object v1

    move-object/from16 v5, v17

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_3

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v6, :cond_4

    :cond_3
    new-instance v7, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v6, 0x3

    invoke-direct {v7, v6, v1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v7, Lkotlin/jvm/functions/Function1;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v1, v7}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v6, v8}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget v7, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v5, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_5

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v6, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v8, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_6

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-static {v7, v5, v7, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_7
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v1, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v0, Landroidx/compose/animation/CrossfadeKt$Crossfade$5$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v0, v4, v5, v9}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_8
    move-object v5, v1

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
