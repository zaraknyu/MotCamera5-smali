.class public abstract Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Ljava/lang/String;Ljava/util/SequencedCollection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3

    const-string v0, "message"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzpi;->listOfNonEmptyScopes(Ljava/util/ArrayList;)Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    move-result-object p1

    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    new-array v2, v2, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;-><init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    goto :goto_1

    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    :goto_1
    iget p0, p1, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->mySize:I

    if-gt p0, v1, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/LazyScopeAdapter;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    return-object p0
.end method

.method public static final drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 21

    move-object/from16 v1, p1

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/core/view/MenuHostHelper;

    move-result-object v0

    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v5, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    iget-boolean v0, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    invoke-virtual {v5}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clipDrawBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    iget-object v9, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v10}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v12, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    iget-object v13, v12, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v14, v13, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iput-object v11, v13, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget-object v11, v9, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v11, v6}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v11, v7}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    iput-object v1, v11, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-wide v6, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    invoke-virtual {v11, v6, v7}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    invoke-virtual {v11, v13}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v12, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/graphics/AndroidCanvas;

    iput-object v14, v0, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/RenderNode;->endRecording()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    :goto_0
    iget v0, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    :cond_3
    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v14

    if-nez v14, :cond_8

    iget-wide v9, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    const/16 v11, 0x20

    shr-long v12, v9, v11

    long-to-int v12, v12

    int-to-float v12, v12

    const-wide v16, 0xffffffffL

    and-long v9, v9, v16

    long-to-int v9, v9

    int-to-float v10, v9

    move-object v9, v8

    iget-wide v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    move-wide/from16 v19, v7

    shr-long v6, v19, v11

    long-to-int v6, v6

    int-to-float v6, v6

    add-float v11, v12, v6

    and-long v6, v19, v16

    long-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    iget v7, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    iget v8, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v7, v13

    if-ltz v13, :cond_5

    const/4 v13, 0x3

    if-ne v8, v13, :cond_5

    iget v13, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-object v8, v9

    move v9, v12

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v13, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    if-nez v13, :cond_6

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->Paint()Landroidx/compose/ui/graphics/AndroidPaint;

    move-result-object v13

    iput-object v13, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

    :cond_6
    invoke-virtual {v13, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->setAlpha(F)V

    invoke-virtual {v13, v8}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroidx/compose/ui/graphics/AndroidPaint;->setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V

    iget-object v7, v13, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Ljava/lang/Object;

    move-object v13, v7

    check-cast v13, Landroid/graphics/Paint;

    move-object v8, v9

    move v9, v12

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    :goto_3
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->matrix:Landroid/graphics/Matrix;

    if-nez v6, :cond_7

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->matrix:Landroid/graphics/Matrix;

    :cond_7
    invoke-virtual {v5, v6}, Landroid/graphics/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v8, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_8
    if-nez v14, :cond_9

    iget-boolean v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    if-eqz v4, :cond_9

    const/4 v15, 0x1

    goto :goto_4

    :cond_9
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_d

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Brush;

    move-result-object v4

    instance-of v6, v4, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Brush;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v4

    invoke-static {v2, v4}, Landroidx/compose/ui/graphics/Canvas;->clipRect-mtrdD-E$default(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_6

    :cond_a
    instance-of v6, v4, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v6, :cond_c

    iget-object v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v6, :cond_b

    iget-object v7, v6, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    goto :goto_5

    :cond_b
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/AndroidPath;

    move-result-object v6

    iput-object v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

    :goto_5
    check-cast v4, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v4, v4, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    invoke-static {v6, v4}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;)V

    invoke-interface {v2, v6}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_6

    :cond_c
    instance-of v6, v4, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v6, :cond_d

    check-cast v4, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v4, v4, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-interface {v2, v4}, Landroidx/compose/ui/graphics/Canvas;->clipPath-mtrdD-E(Landroidx/compose/ui/graphics/Path;)V

    :cond_d
    :goto_6
    if-eqz v3, :cond_13

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/material/ripple/StateLayer;

    iget-boolean v4, v3, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    if-nez v4, :cond_e

    const-string v4, "Only add dependencies during a tracking"

    invoke-static {v4}, Landroidx/compose/ui/graphics/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_e
    iget-object v4, v3, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_f

    invoke-virtual {v4, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    iget-object v4, v3, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v4, :cond_10

    sget v4, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v4, Landroidx/collection/MutableScatterSet;

    invoke-direct {v4}, Landroidx/collection/MutableScatterSet;-><init>()V

    iget-object v6, v3, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v3, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v3, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    goto :goto_7

    :cond_10
    iput-object v1, v3, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    :goto_7
    iget-object v4, v3, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v4, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/16 v18, 0x1

    xor-int/lit8 v7, v3, 0x1

    goto :goto_8

    :cond_11
    const/16 v18, 0x1

    iget-object v4, v3, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq v4, v1, :cond_12

    move/from16 v7, v18

    goto :goto_8

    :cond_12
    const/4 v7, 0x0

    iput-object v7, v3, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_13

    iget v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    :cond_13
    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    if-nez v3, :cond_14

    new-instance v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    :cond_14
    iget-object v4, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    iget-object v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v9, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v9

    iget-object v7, v4, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v7, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawParams:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    iget-object v11, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->density:Landroidx/compose/ui/unit/Density;

    iget-object v7, v7, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v12

    move/from16 p0, v14

    invoke-virtual {v4}, Landroidx/core/view/MenuHostHelper;->getSize-NH-jbRc()J

    move-result-wide v13

    move/from16 v16, v0

    iget-object v0, v4, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    move-object/from16 v17, v8

    move-object v8, v0

    check-cast v8, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v4, v5}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v4, v6}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v4, v2}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v4, v9, v10}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v1, v4, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v4, v11}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v4, v7}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v4, v12}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v4, v13, v14}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v8, v4, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    goto :goto_9

    :catchall_2
    move-exception v0

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-virtual {v4, v11}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v4, v7}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v4, v12}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v4, v13, v14}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    iput-object v8, v4, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    throw v0

    :cond_15
    move/from16 v16, v0

    move-object/from16 v17, v8

    move/from16 p0, v14

    invoke-static {v2}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :goto_9
    if-eqz v15, :cond_16

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_16
    if-eqz v16, :cond_17

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    :cond_17
    if-nez p0, :cond_18

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    :cond_18
    :goto_a
    return-void
.end method
