.class public abstract Lcom/motorola/camera/ui/compose/composable/HintMessageKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final HintMessage(Ljava/lang/String;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/ComposerImpl;II)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string/jumbo v2, "text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f3024d6

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p4, v2

    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x30

    move-object/from16 v4, p1

    goto :goto_2

    :cond_1
    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    :goto_2
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_3

    or-int/lit16 v2, v2, 0x180

    move/from16 v6, p2

    goto :goto_4

    :cond_3
    move/from16 v6, p2

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(F)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v2, v7

    :goto_4
    and-int/lit16 v7, v2, 0x93

    const/16 v8, 0x92

    if-ne v7, v8, :cond_6

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v2, v4

    move v3, v6

    goto/16 :goto_b

    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_6

    :cond_7
    move-object v3, v4

    :goto_6
    if-eqz v5, :cond_8

    const/4 v4, 0x0

    goto :goto_7

    :cond_8
    move v4, v6

    :goto_7
    sget-object v5, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->White:J

    iget-wide v8, v5, Lcom/motorola/camera/ui/compose/Dimensions;->toastTextSize:J

    const-string v10, "<this>"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v10, 0x42b40000    # 90.0f

    cmpg-float v10, v4, v10

    if-nez v10, :cond_9

    goto :goto_8

    :cond_9
    const/high16 v10, 0x43870000    # 270.0f

    cmpg-float v10, v4, v10

    if-nez v10, :cond_a

    :goto_8
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/BlurKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v11, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v10, v11}, Landroidx/compose/ui/layout/ScaleFactorKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    goto :goto_9

    :cond_a
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/BlurKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    :goto_9
    const v11, 0x7f07057a

    invoke-static {v11, v1}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v11

    invoke-static {v11}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v11

    invoke-static {v10, v11}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v11, 0x7f0603f8

    invoke-static {v11, v1}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v11

    sget-object v13, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v10, v11, v12, v13}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    iget v11, v5, Lcom/motorola/camera/ui/compose/Dimensions;->toastPaddingHorizontal:F

    iget v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->toastPaddingVertical:F

    invoke-static {v10, v11, v5}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v5

    and-int/lit8 v2, v2, 0xe

    or-int/lit16 v2, v2, 0x180

    const/16 v19, 0x0

    const v20, 0x1fff0

    move/from16 v18, v2

    move-wide/from16 v23, v6

    move-object v7, v3

    move-wide/from16 v2, v23

    const/4 v6, 0x0

    move v10, v4

    move-object v1, v5

    move-wide v4, v8

    move-object v9, v7

    const-wide/16 v7, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move v13, v10

    move-object v12, v11

    const-wide/16 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v22, v17

    move-object/from16 v17, p3

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    goto :goto_a

    :cond_b
    move-object/from16 v21, v3

    move/from16 v22, v4

    :goto_a
    move-object/from16 v2, v21

    move/from16 v3, v22

    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v0, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;

    move-object/from16 v1, p0

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/compose/composable/HintMessageKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;FII)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method
