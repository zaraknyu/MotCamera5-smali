.class public final Landroidx/compose/material3/SurfaceKt$Surface$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $absoluteElevation:F

.field public final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic $color:J

.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $enabled:Z

.field public final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field public final synthetic $onClick:Lkotlin/jvm/functions/Function0;

.field public final synthetic $shadowElevation:F

.field public final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLkotlin/jvm/functions/Function0;FLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p3, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$color:J

    iput p5, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$absoluteElevation:F

    iput-object p6, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$border:Landroidx/compose/foundation/BorderStroke;

    iput-object p7, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iput-boolean p8, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$enabled:Z

    iput-object p9, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$shadowElevation:F

    iput-object p11, p0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/material3/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentSize:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v2, Landroidx/compose/material3/MinimumInteractiveModifier;->INSTANCE:Landroidx/compose/material3/MinimumInteractiveModifier;

    iget-object v3, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/ColorScheme;

    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalTonalElevationEnabled:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-wide v5, v3, Landroidx/compose/material3/ColorScheme;->surface:J

    iget-wide v7, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$color:J

    invoke-static {v7, v8, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    int-to-float v4, v10

    iget v7, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$absoluteElevation:F

    invoke-static {v7, v4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v4, v11

    add-float/2addr v7, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x40900000    # 4.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    add-float/2addr v4, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v4, v7

    iget-wide v7, v3, Landroidx/compose/material3/ColorScheme;->surfaceTint:J

    invoke-static {v4, v7, v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Brush;->compositeOver--OWjLjI(JJ)J

    move-result-wide v5

    goto :goto_1

    :cond_3
    move-wide v5, v7

    :goto_1
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    iget v4, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$shadowElevation:F

    check-cast v3, Landroidx/compose/ui/unit/Density;

    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v16

    const/4 v3, 0x0

    cmpl-float v4, v16, v3

    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iget-object v7, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    if-lez v4, :cond_4

    const/16 v19, 0x0

    const v20, 0x1e7df

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v7

    invoke-static/range {v12 .. v20}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v12

    :goto_2
    invoke-interface {v2, v4}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v4, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$border:Landroidx/compose/foundation/BorderStroke;

    if-eqz v4, :cond_5

    iget v8, v4, Landroidx/compose/foundation/BorderStroke;->width:F

    iget-object v4, v4, Landroidx/compose/foundation/BorderStroke;->brush:Landroidx/compose/ui/graphics/Brush;

    new-instance v12, Landroidx/compose/foundation/BorderModifierNodeElement;

    invoke-direct {v12, v8, v4, v7}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)V

    :cond_5
    invoke-interface {v2, v12}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v5, v6, v7}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v7}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/4 v2, 0x7

    invoke-static {v3, v1, v10, v2}, Landroidx/compose/material3/RippleKt;->rippleOrFallbackImplementation-9IZ8Weo(FLandroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/Indication;

    move-result-object v14

    iget-object v2, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$onClick:Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x18

    iget-object v13, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    iget-boolean v15, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$enabled:Z

    const/16 v16, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v4, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v7, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v7, :cond_6

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v3, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v5, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_7

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_7
    invoke-static {v4, v1, v4, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_8
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Landroidx/compose/material3/SurfaceKt$Surface$2;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
