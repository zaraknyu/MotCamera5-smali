.class public final Le/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:J

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/ui/graphics/AndroidImageBitmap;

.field public final synthetic e:Landroidx/compose/animation/core/Animatable;

.field public final synthetic f:J

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(FJFLandroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/animation/core/Animatable;JLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/J;->a:F

    iput-wide p2, p0, Le/J;->b:J

    iput p4, p0, Le/J;->c:F

    iput-object p5, p0, Le/J;->d:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iput-object p6, p0, Le/J;->e:Landroidx/compose/animation/core/Animatable;

    iput-wide p7, p0, Le/J;->f:J

    iput-object p9, p0, Le/J;->g:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Le/J;->h:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "$this$BoxWithConstraints"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v9, v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->constraints:J

    iget-object v11, v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;->density:Landroidx/compose/ui/unit/Density;

    and-int/lit8 v3, v2, 0x6

    const/4 v13, 0x2

    if-nez v3, :cond_1

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v13

    :goto_0
    or-int/2addr v2, v1

    :cond_1
    and-int/lit8 v1, v2, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_f

    :cond_3
    :goto_1
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-interface {v11, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    goto :goto_2

    :cond_4
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_2
    int-to-float v15, v13

    iget v2, v0, Le/J;->a:F

    mul-float v3, v2, v15

    sub-float/2addr v1, v3

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    invoke-interface {v11, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v4

    goto :goto_3

    :cond_5
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_3
    sub-float/2addr v4, v3

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Density;

    const v5, 0x7d925b20

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v5

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    const/16 v16, 0x20

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v5, :cond_7

    if-ne v6, v8, :cond_6

    goto :goto_4

    :cond_6
    move/from16 p2, v15

    goto :goto_5

    :cond_7
    :goto_4
    invoke-interface {v3, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    move/from16 p2, v15

    int-to-long v14, v1

    shl-long v3, v4, v16

    const-wide v5, 0xffffffffL

    and-long/2addr v5, v14

    or-long/2addr v3, v5

    new-instance v6, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v6, v3, v4}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_5
    check-cast v6, Landroidx/compose/ui/geometry/Size;

    iget-wide v3, v6, Landroidx/compose/ui/geometry/Size;->packedValue:J

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v5, 0x7d9277f6

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v3, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v5

    iget-wide v14, v0, Le/J;->b:J

    invoke-virtual {v7, v14, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(J)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_8

    if-ne v6, v8, :cond_9

    :cond_8
    invoke-static {v3, v4, v14, v15}, La/l;->a(JJ)Le/W0;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v4, v6

    check-cast v4, Le/W0;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->matchParentSize()Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x7d929b38

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    iget v14, v0, Le/J;->c:F

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v5

    or-int/2addr v3, v5

    iget-object v5, v0, Le/J;->d:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_a

    if-ne v6, v8, :cond_b

    :cond_a
    new-instance v6, Le/J$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v14, v5}, Le/J$$ExternalSyntheticLambda0;-><init>(Le/W0;FLandroidx/compose/ui/graphics/AndroidImageBitmap;)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v6, v7, v1}, Landroidx/compose/foundation/ImageKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    const v2, 0x7d92cf4d

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v15, v0, Le/J;->h:Landroidx/compose/runtime/MutableState;

    if-nez v2, :cond_d

    if-ne v3, v8, :cond_c

    goto :goto_6

    :cond_c
    const/16 p3, 0x4

    goto :goto_7

    :cond_d
    :goto_6
    new-instance v3, Le/D;

    new-instance v2, Le/B;

    new-instance v5, Le/J$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    const/16 p3, 0x4

    iget-object v12, v0, Le/J;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {v5, v6, v12, v15}, Le/J$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, v5}, Le/B;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v3, v4, v2}, Le/D;-><init>(Le/W0;Le/B;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_7
    move-object v6, v3

    check-cast v6, Le/D;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x7d930639

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v0, Le/J;->e:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_e

    if-ne v5, v8, :cond_f

    :cond_e
    new-instance v5, Le/J$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Le/J$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v12, v5}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v5, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v7, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 v18, v4

    iget-boolean v4, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v4, :cond_10

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_10
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_8
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v3, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v13, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v3, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_11

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_12
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/t;

    move-object v1, v8

    const/4 v8, 0x0

    iget v3, v0, Le/J;->a:F

    iget v5, v0, Le/J;->c:F

    move-object/from16 v4, v18

    invoke-static/range {v2 .. v8}, La/l;->a(Le/t;FLe/W0;FLe/D;Landroidx/compose/runtime/ComposerImpl;I)V

    move-object v13, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v2, v13, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v8, :cond_13

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    const/16 v4, 0x12c

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v6}, Landroidx/compose/animation/core/ArcSplineKt;->tween$default(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    const/16 v6, 0xc30

    move-object v5, v7

    const/16 v7, 0x14

    move-object v8, v2

    move v2, v3

    move-object v3, v4

    const-string v4, "Crop Magnifier fade in"

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object v19

    move-object v7, v5

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_24

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/t;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    const/4 v4, -0x3

    if-eq v3, v4, :cond_18

    const/4 v4, -0x2

    if-eq v3, v4, :cond_16

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19

    const/4 v5, 0x2

    if-eq v3, v5, :cond_17

    const/4 v5, 0x3

    if-eq v3, v5, :cond_15

    iget-wide v2, v2, Le/t;->a:J

    goto :goto_a

    :cond_14
    const/4 v4, 0x1

    :cond_15
    iget-wide v2, v2, Le/t;->d:J

    goto :goto_a

    :cond_16
    const/4 v4, 0x1

    :cond_17
    iget-wide v2, v2, Le/t;->c:J

    goto :goto_a

    :cond_18
    const/4 v4, 0x1

    :cond_19
    iget-wide v2, v2, Le/t;->b:J

    :goto_a
    iget-object v5, v13, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    iget-wide v5, v5, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    const v5, -0x2a795ae7

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-wide v5, Le/t;->i:J

    move-wide/from16 v20, v9

    invoke-static {v2, v3, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, La/l;->a(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v5

    const v8, -0x6ae7b332

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_1b

    shr-long v8, v5, v16

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v4, 0x0

    :goto_b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1b
    check-cast v8, Landroidx/compose/runtime/MutableState;

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1c

    shr-long v9, v5, v16

    long-to-int v4, v9

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const v9, 0x3f0ccccd    # 0.55f

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1c

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1c
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1d

    shr-long v4, v5, v16

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    float-to-double v4, v4

    const-wide v9, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v4, v4, v9

    if-gez v4, :cond_1d

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_1d
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v5, 0x28

    int-to-float v10, v5

    if-eqz v4, :cond_1e

    move v14, v10

    goto :goto_e

    :cond_1e
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-interface {v11, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v14

    goto :goto_d

    :cond_1f
    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_d
    mul-float v15, v10, p2

    sub-float/2addr v14, v15

    sub-float/2addr v14, v10

    :goto_e
    sget-object v4, Landroidx/compose/animation/core/AnimateAsStateKt;->dpDefaultSpring:Landroidx/compose/animation/core/SpringSpec;

    move-wide v5, v2

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v2, v14}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->DpToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/16 v8, 0x6000

    const/16 v9, 0x8

    move-wide v14, v5

    const/4 v5, 0x0

    const-string v6, "Crop Magnifier horizontal position"

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateValueAsState(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Float;Ljava/lang/String;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/runtime/State;

    move-result-object v2

    const v3, 0x7d93b9ce

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_20

    if-ne v4, v1, :cond_21

    :cond_20
    new-instance v4, Le/J$$ExternalSyntheticLambda3;

    invoke-direct {v4, v10, v2}, Le/J$$ExternalSyntheticLambda3;-><init>(FLandroidx/compose/runtime/State;)V

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_21
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v12, v4}, Landroidx/compose/foundation/layout/OffsetKt;->absoluteOffset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/BlurKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v2, 0x7d93da57

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_23

    :cond_22
    new-instance v3, Le/J$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v3, v1, v13}, Le/J$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_23
    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v13, 0x6000

    iget-object v2, v0, Le/J;->d:Landroidx/compose/ui/graphics/AndroidImageBitmap;

    iget v5, v0, Le/J;->c:F

    const/4 v8, 0x0

    iget-wide v0, v0, Le/J;->f:J

    move-object v12, v7

    move v7, v10

    move-wide v3, v14

    move-wide v9, v0

    invoke-static/range {v2 .. v13}, La/l;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;JFLandroidx/compose/ui/Modifier;FFJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V

    :cond_24
    :goto_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
