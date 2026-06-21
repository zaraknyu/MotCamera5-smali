.class public abstract Landroidx/compose/foundation/ImageKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 4

    const v0, -0x3799f46e

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Landroidx/compose/ui/draw/BlurKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/OffsetKt;->Spacer(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Landroidx/compose/foundation/CanvasKt$Canvas$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, p0, p1}, Landroidx/compose/foundation/CanvasKt$Canvas$1;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V
    .locals 17

    move-object/from16 v2, p1

    move-object/from16 v0, p6

    move/from16 v7, p7

    const v1, 0x441d0e20

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v7, 0x6

    move-object/from16 v9, p0

    if-nez v1, :cond_1

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_1
    move v1, v7

    :goto_1
    and-int/lit8 v3, v7, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit8 v3, p8, 0x4

    if-eqz v3, :cond_5

    or-int/lit16 v1, v1, 0x180

    :cond_4
    move-object/from16 v5, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v5, v7, 0x180

    if-nez v5, :cond_4

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_3

    :cond_6
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v1, v6

    :goto_4
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_8

    or-int/lit16 v1, v1, 0xc00

    :cond_7
    move-object/from16 v8, p3

    goto :goto_6

    :cond_8
    and-int/lit16 v8, v7, 0xc00

    if-nez v8, :cond_7

    move-object/from16 v8, p3

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x800

    goto :goto_5

    :cond_9
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v1, v10

    :goto_6
    and-int/lit8 v10, p8, 0x10

    if-eqz v10, :cond_b

    or-int/lit16 v1, v1, 0x6000

    :cond_a
    move-object/from16 v11, p4

    goto :goto_8

    :cond_b
    and-int/lit16 v11, v7, 0x6000

    if-nez v11, :cond_a

    move-object/from16 v11, p4

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v12, 0x4000

    goto :goto_7

    :cond_c
    const/16 v12, 0x2000

    :goto_7
    or-int/2addr v1, v12

    :goto_8
    and-int/lit8 v12, p8, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_e

    or-int/2addr v1, v13

    :cond_d
    move/from16 v13, p5

    goto :goto_a

    :cond_e
    and-int/2addr v13, v7

    if-nez v13, :cond_d

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v14

    if-eqz v14, :cond_f

    const/high16 v14, 0x20000

    goto :goto_9

    :cond_f
    const/high16 v14, 0x10000

    :goto_9
    or-int/2addr v1, v14

    :goto_a
    and-int/lit8 v14, p8, 0x40

    const/high16 v15, 0x180000

    if-eqz v14, :cond_10

    or-int/2addr v1, v15

    goto :goto_c

    :cond_10
    and-int v14, v7, v15

    if-nez v14, :cond_12

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const/high16 v14, 0x100000

    goto :goto_b

    :cond_11
    const/high16 v14, 0x80000

    :goto_b
    or-int/2addr v1, v14

    :cond_12
    :goto_c
    const v14, 0x92493

    and-int/2addr v14, v1

    const v15, 0x92492

    const/4 v4, 0x0

    const/4 v13, 0x1

    if-eq v14, v15, :cond_13

    move v14, v13

    goto :goto_d

    :cond_13
    move v14, v4

    :goto_d
    and-int/lit8 v15, v1, 0x1

    invoke-virtual {v0, v15, v14}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v14

    if-eqz v14, :cond_1f

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v3, :cond_14

    move-object v5, v14

    :cond_14
    if-eqz v6, :cond_15

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    move/from16 v16, v10

    move-object v10, v3

    move/from16 v3, v16

    goto :goto_e

    :cond_15
    move v3, v10

    move-object v10, v8

    :goto_e
    if-eqz v3, :cond_16

    sget-object v3, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    move-object v11, v3

    :cond_16
    if-eqz v12, :cond_17

    const/high16 v3, 0x3f800000    # 1.0f

    move v12, v3

    goto :goto_f

    :cond_17
    move/from16 v12, p5

    :goto_f
    if-eqz v2, :cond_1b

    const v3, 0x3e03a063

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v1, 0x70

    const/16 v3, 0x20

    if-ne v1, v3, :cond_18

    move v1, v13

    goto :goto_10

    :cond_18
    move v1, v4

    :goto_10
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_19

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v1, :cond_1a

    :cond_19
    new-instance v3, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;

    const/4 v1, 0x1

    invoke-direct {v3, v2, v1}, Landroidx/compose/material3/IconKt$Icon$semantics$1$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1a
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_11

    :cond_1b
    const v1, 0x3e060ca1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_11
    invoke-interface {v5, v14}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/draw/BlurKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    const/4 v14, 0x2

    move v1, v13

    const/4 v13, 0x0

    invoke-static/range {v8 .. v14}, Landroidx/compose/ui/draw/BlurKt;->paint$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget v4, v0, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {v0, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_1c

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_12
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    sget-object v9, Landroidx/compose/foundation/ImageKt$Image$1;->INSTANCE:Landroidx/compose/foundation/ImageKt$Image$1;

    invoke-static {v0, v9, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v6, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, v0, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_1d

    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    :cond_1d
    invoke-static {v4, v0, v4, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_1e
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v4, v10

    move v6, v12

    :goto_13
    move-object v3, v5

    move-object v5, v11

    goto :goto_14

    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move/from16 v6, p5

    move-object v4, v8

    goto :goto_13

    :goto_14
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_20

    new-instance v0, Landroidx/compose/foundation/ImageKt$Image$2;

    move-object/from16 v1, p0

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/ImageKt$Image$2;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FII)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_20
    return-void
.end method

.method public static final Image-5h-nEew(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 9

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p4, :cond_0

    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, p4, :cond_1

    :cond_0
    iget-object p4, p0, Landroidx/compose/ui/graphics/AndroidImageBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v4, p4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    new-instance p4, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    invoke-direct {p4, p0, v0, v1}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/AndroidImageBitmap;J)V

    const/4 p0, 0x1

    iput p0, p4, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    invoke-virtual {p2, p4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, p4

    :cond_1
    check-cast v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    const p0, 0x3ffff0

    and-int v7, p3, p0

    const/4 v8, 0x0

    const/4 v1, 0x0

    sget-object v4, Landroidx/compose/ui/layout/ContentScale$Companion;->Fit:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;FLandroidx/compose/runtime/ComposerImpl;II)V

    return-void
.end method

.method public static absorbToRelaxIfNeeded(Landroid/widget/EdgeEffect;FFLandroidx/compose/ui/unit/Density;)F
    .locals 8

    sget v0, Landroidx/compose/foundation/EdgeEffectCompat_androidKt;->PlatformFlingScrollFriction:F

    const v0, 0x43c10b3d

    invoke-interface {p3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p3

    mul-float/2addr p3, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p3, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p3, v0

    float-to-double v0, p3

    const p3, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, p3

    float-to-double v2, v2

    sget p3, Landroidx/compose/foundation/EdgeEffectCompat_androidKt;->PlatformFlingScrollFriction:F

    float-to-double v4, p3

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Landroidx/compose/foundation/EdgeEffectCompat_androidKt;->DecelerationRate:D

    sget-wide v6, Landroidx/compose/foundation/EdgeEffectCompat_androidKt;->DecelMinusOne:D

    div-double/2addr v2, v6

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float p3, v0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v1, v0

    :goto_0
    mul-float/2addr v1, p2

    cmpg-float p2, p3, v1

    if-gtz p2, :cond_0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    return p1

    :cond_0
    return v0
.end method

.method public static final background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/BackgroundElement;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/BackgroundElement;-><init>(JLandroidx/compose/ui/graphics/Shape;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const v1, 0x7fffffff

    if-ne p2, v0, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Vertically scrollable component was measured with an infinity maximum height constraints, which is disallowed. One of the common reasons is nesting layouts like LazyColumn and Column(Modifier.verticalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyColumn scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container."

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p0

    if-eq p0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    const-string p0, "Horizontally scrollable component was measured with an infinity maximum width constraints, which is disallowed. One of the common reasons is nesting layouts like LazyRow and Row(Modifier.horizontalScroll()). If you want to add a header before the list of items please add a header as a separate item() before the main items() inside the LazyRow scope. There could be other reasons for this to happen: your ComposeView was added into a LinearLayout with some weight, you applied Modifier.wrapContentSize(unbounded = true) or wrote a custom layout. Please try to remove the source of infinite constraints in the hierarchy above the scrolling container."

    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    return-void
.end method

.method public static final clickable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 8

    instance-of v0, p2, Landroidx/compose/foundation/IndicationNodeFactory;

    if-eqz v0, :cond_0

    move-object v3, p2

    check-cast v3, Landroidx/compose/foundation/IndicationNodeFactory;

    new-instance v1, Landroidx/compose/foundation/ClickableElement;

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    if-nez p2, :cond_1

    new-instance v2, Landroidx/compose/foundation/ClickableElement;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {v3, p2}, Landroidx/compose/foundation/IndicationKt;->indication(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    new-instance v2, Landroidx/compose/foundation/ClickableElement;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/ClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/IndicationNodeFactory;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/compose/foundation/ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;

    invoke-direct {p1, p2, v5, v6, v7}, Landroidx/compose/foundation/ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1;-><init>(Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, p1}, Landroidx/compose/ui/Modifier_jvmKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;
    .locals 6

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    move p1, v0

    :cond_0
    new-instance p3, Landroidx/compose/foundation/ClickableKt$clickable$2;

    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/ClickableKt$clickable$2;-><init>(ZLkotlin/jvm/functions/Function0;)V

    invoke-static {p0, p3}, Landroidx/compose/ui/Modifier_jvmKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static combinedClickable-auXiCPI$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/CombinedClickableElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/CombinedClickableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/HoverableElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/HoverableElement;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final isEnter-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-static {p0}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v0

    sget p0, Landroidx/compose/ui/input/key/Key;->$r8$clinit:I

    sget-wide v2, Landroidx/compose/ui/input/key/Key;->DirectionCenter:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    sget-wide v3, Landroidx/compose/ui/input/key/Key;->Enter:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    sget-wide v3, Landroidx/compose/ui/input/key/Key;->NumPadEnter:J

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result p0

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-wide v2, Landroidx/compose/ui/input/key/Key;->Spacebar:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    move-result v2

    :goto_2
    return v2
.end method

.method public static final isSystemInDarkTheme(Landroidx/compose/runtime/ComposerImpl;)Z
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;
    .locals 9

    sget v0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-ne p2, v0, :cond_0

    sget-object v0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE$2:Landroidx/compose/foundation/NoIndicationInstance;

    invoke-static {v1, v0}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE$1:Landroidx/compose/foundation/NoIndicationInstance;

    invoke-static {v1, v0}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    new-instance v0, Landroidx/compose/foundation/ScrollingContainerElement;

    move-object v5, p1

    move-object v4, p2

    move v7, p3

    move-object v3, p4

    move-object v6, p5

    move v8, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/ScrollingContainerElement;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final shrink-Kibmq7A(FJ)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v1, p0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p1, p0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    return-wide p0
.end method
