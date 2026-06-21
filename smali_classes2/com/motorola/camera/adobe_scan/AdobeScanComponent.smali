.class public final Lcom/motorola/camera/adobe_scan/AdobeScanComponent;
.super Lcom/motorola/camera/ui/compose/component/ComposeComponent;
.source "SourceFile"


# instance fields
.field public final viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;-><init>(Landroid/content/Context;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-direct {p1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;-><init>(Lcom/motorola/camera/ui/UIManager;)V

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    return-void
.end method


# virtual methods
.method public final BoundaryHintMessage(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    const v0, -0x5d4c8ed1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v0, v0, 0x13

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v8, p2

    goto/16 :goto_7

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->previewRect$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v1, v3

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isSplitScreen()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    const v3, -0x501c1057

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    int-to-float v3, v3

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    div-float/2addr v3, v2

    const v2, 0x7f070578

    invoke-static {v2, p2}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v2

    add-float/2addr v3, v2

    sub-float/2addr v3, v1

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_6
    const v1, -0x5018fa91

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x7f070575

    invoke-static {v1, p2}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v3

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isCapturing$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, -0x5016ea7a

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x7f120024

    invoke-static {v0, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    move-object v5, v0

    goto :goto_6

    :cond_7
    const v0, -0x5015a785

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x7f120038

    invoke-static {v0, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :goto_6
    int-to-float v0, v4

    cmpg-float v1, v3, v0

    if-gez v1, :cond_8

    move v3, v0

    :cond_8
    invoke-static {p1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    int-to-float v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p2

    invoke-static/range {v5 .. v10}, Lcom/motorola/camera/ui/compose/composable/HintMessageKt;->HintMessage(Ljava/lang/String;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final Draw(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x1fa718e

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v5, v3, 0x3

    const/4 v6, 0x0

    if-ne v5, v4, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_2
    :goto_1
    sget-object v4, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getThumbnail()Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    move-result-object v4

    iget-object v5, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f07006f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->size:I

    sget-object v4, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/material3/ColorScheme;

    sget-object v5, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    new-instance v7, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Black:J

    iget-wide v10, v4, Landroidx/compose/material3/ColorScheme;->primary:J

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->White:J

    sget-wide v18, Landroidx/compose/ui/graphics/Color;->Transparent:J

    move-wide v12, v13

    move-wide v14, v10

    move-wide/from16 v16, v10

    invoke-direct/range {v7 .. v19}, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;-><init>(JJJJJJ)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lh/H;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    move-wide v9, v8

    new-instance v8, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;

    iget-wide v4, v4, Landroidx/compose/material3/ColorScheme;->primary:J

    move-wide v15, v4

    move-wide/from16 v19, v18

    move-wide/from16 v17, v4

    move-wide v13, v12

    move-wide v11, v4

    invoke-direct/range {v8 .. v20}, Lcom/adobe/scan/sdk/ScanUIManager$ThemeColors;-><init>(JJJJJJ)V

    sget-object v4, Lh/H;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v4, Lh/H;->r:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f12001e

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->s:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->i:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->j:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120025

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->k:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120026

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->n:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120035

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->o:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120039

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->p:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->B:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120040

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->q:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120049

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->t:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->u:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->l:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f120023

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    sget-object v4, Lh/H;->m:Lh/t;

    iget-object v4, v4, Lh/t;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    const v5, 0x7f12003a

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    and-int/lit8 v3, v3, 0xe

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->ScanUi(ILandroidx/compose/runtime/ComposerImpl;)V

    :goto_2
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public final PreviewArea(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    const-string v2, "modifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, -0x73d0f4f0

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v8, 0x6

    if-nez v2, :cond_1

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v8

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    and-int/lit8 v3, v8, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    move v9, v2

    and-int/lit8 v2, v9, 0x13

    const/16 v3, 0x12

    const/4 v10, 0x0

    if-ne v2, v3, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move v2, v10

    goto/16 :goto_a

    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    iget-object v11, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object v3, v11, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->previewRect$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v4, v11, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->previewRect$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    div-float v12, v3, v2

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    div-float v13, v3, v2

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v12}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v13}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v7, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_6

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v4, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v14, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v14, :cond_7

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v6}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v2

    const v14, 0x45ab4a63

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v14, Lh/H;->a:Lh/H;

    new-instance v15, Lh/x;

    invoke-direct {v15, v10, v2}, Lh/x;-><init>(ILjava/lang/Object;)V

    const/16 v2, 0x36

    const v10, 0x1e476b3c

    invoke-static {v10, v15, v7}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    invoke-virtual {v14, v10, v7, v2}, Lh/H;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x2d33b15

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v11, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->canShowBoundaryHint$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v11, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isToastVisible$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    sget-object v15, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v2

    const/16 v10, 0x5a

    if-eq v2, v10, :cond_b

    const/16 v10, 0x10e

    if-eq v2, v10, :cond_a

    goto :goto_6

    :cond_a
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    goto :goto_6

    :cond_b
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    :goto_6
    invoke-virtual {v15, v14, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    and-int/lit8 v3, v9, 0x70

    invoke-virtual {v0, v2, v7, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->BoundaryHintMessage(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v15, v3, v9}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v9, v10, v7, v2}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    iget v2, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v7, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_d

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_7
    invoke-static {v7, v9, v13}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7, v14, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v4, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_e

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2, v6}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_f
    invoke-static {v7, v3, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x24430c0f

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-boolean v2, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    const v2, -0x2443065b

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v11, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v4, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    invoke-direct {v4, v2}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    const/4 v2, 0x0

    invoke-static {v4, v3, v7, v2}, La/l;->StorageFull(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_8

    :cond_11
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v4, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    invoke-direct {v4, v10}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    invoke-static {v4, v3, v7, v2}, La/l;->PoweredByAdobeScan(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_9
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_12

    new-instance v4, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v1, v8, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;Landroidx/compose/ui/Modifier;II)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public final ScanUi(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, -0x4328207f

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v5, v3, 0x3

    const/4 v6, 0x1

    if-ne v5, v4, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_2
    :goto_1
    const v4, -0x19a1f795

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v4, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iget-object v5, v4, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->showResumeSavedSessionDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    and-int/lit8 v5, v3, 0xe

    invoke-virtual {v0, v5, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->ShowResumeSavedSessionDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v8, v5}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v9

    iget v10, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v2, v7}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v13, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v13, :cond_4

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v9, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v11, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v11, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v11, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v9, v10, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    shl-int/lit8 v11, v3, 0x3

    and-int/lit8 v11, v11, 0x70

    invoke-virtual {v0, v7, v2, v11}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->PreviewArea(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {v9, v10, v8}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v11, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getThumbnail()Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;

    move-result-object v11

    iget-object v11, v11, Lcom/motorola/camera/adobe_scan/AdobeScanThumbnail;->bitmap$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0x380

    invoke-virtual {v0, v7, v11, v2, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->Thumbnail(Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;Landroidx/compose/runtime/ComposerImpl;I)V

    const v3, 0x121dcca7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-boolean v3, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v9, v10, v8}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v13, v7, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonHorizontalSpace:F

    const v7, 0x121def47

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v7, v0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->landScape$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarVerticalPaddingStart:F

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->doMoreWithAdobePaddingStart:F

    add-float/2addr v7, v8

    :goto_3
    move v12, v7

    goto :goto_4

    :cond_7
    int-to-float v7, v5

    goto :goto_3

    :goto_4
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v2, v5}, La/l;->PoweredByAdobeScan(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ComposerImpl;I)V

    iget-object v4, v4, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->isStorageFull$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v9, v10, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v15, v3, Lcom/motorola/camera/ui/compose/Dimensions;->storageFullBottomPadding:F

    const/16 v16, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v8, v2, v5}, La/l;->StorageFull(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :cond_8
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final ShowResumeSavedSessionDialog(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const v3, 0x9195e91

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    or-int/2addr v3, v1

    and-int/lit8 v3, v3, 0x3

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_2

    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->setCanShowBoundaryHint(Z)V

    const v3, 0x6e3c21fe

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v5, :cond_3

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v0}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Landroidx/compose/runtime/State;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v6, v3}, Landroidx/compose/ui/draw/BlurKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v6, 0x4c5de2

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v9, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_4

    if-ne v8, v5, :cond_5

    :cond_4
    new-instance v7, Lf/A;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v8, 0x0

    const-class v10, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const-string v11, "onDiscardScan"

    const-string v12, "onDiscardScan()V"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v15}, Lf/A;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_5
    check-cast v8, Lkotlin/reflect/KFunction;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v11, v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_6

    if-ne v7, v5, :cond_7

    :cond_6
    new-instance v9, Lf/A;

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/4 v10, 0x0

    const-class v12, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const-string v13, "onResumeScan"

    const-string v14, "onResumeScan()V"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lf/A;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v7, v9

    :cond_7
    check-cast v7, Lkotlin/reflect/KFunction;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v8, v7, v2, v4}, La/l;->ResumeSavedSessionDialog(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public final Thumbnail(Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v4, p4

    const-string v0, "modifier"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x53e10092

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    and-int/lit8 v5, v4, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit16 v5, v4, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    :cond_5
    and-int/lit16 v0, v0, 0x93

    const/16 v5, 0x92

    if-ne v0, v5, :cond_7

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_a

    :cond_7
    :goto_4
    if-nez v3, :cond_8

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_8
    move-object v7, v2

    sget-object v9, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v10, v0, Lcom/motorola/camera/ui/compose/Dimensions;->thumbnailContainerSize:F

    const v0, 0x7f070183

    invoke-static {v0, v6}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v11

    sget-boolean v0, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v12, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->getDualPane()Z

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x14c6e14b

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v0, 0x7f070075

    invoke-static {v0, v6}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v0

    iget-object v5, v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkk;->getFoldGuideLine(Landroid/content/Context;Lcom/motorola/camera/EventListener;)Lkotlin/Pair;

    move-result-object v5

    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarMarginDimen()F

    move-result v13

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v3

    iget v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    div-float/2addr v13, v3

    cmpg-float v3, v13, v2

    if-gez v3, :cond_9

    move v13, v2

    :cond_9
    invoke-static {v7, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    neg-float v5, v13

    div-float/2addr v0, v4

    sub-float/2addr v5, v0

    div-float v0, v10, v4

    add-float/2addr v5, v0

    sub-float v0, v10, v11

    div-float/2addr v0, v4

    add-float/2addr v0, v11

    invoke-static {v3, v5, v0}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_a
    const v0, 0x14d38548

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getCaptureBarGuideLine()F

    move-result v0

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070076

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sub-float v5, v10, v11

    div-float/2addr v5, v4

    div-float v4, v10, v4

    sub-float/2addr v0, v4

    invoke-static {v3, v5, v0}, Landroidx/compose/foundation/layout/OffsetKt;->offset-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v13, v12}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v4, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v6, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v15, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v15, :cond_b

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_6
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v6, v3, v15}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v6, v5, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    move/from16 v16, v2

    iget-boolean v2, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_c

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_d
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v6, v0, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x6e3c21fe

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v2, v4, :cond_e

    invoke-static/range {v16 .. v16}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v0, 0x7f0b006c

    invoke-static {v0, v6}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->integerResource(ILandroidx/compose/runtime/ComposerImpl;)I

    move-result v0

    move-object/from16 v18, v3

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_f

    invoke-static {v6}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v19, v5

    iget-object v5, v1, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v20, v5

    const v5, -0x48fade91

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v21

    or-int v5, v5, v21

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v21

    or-int v5, v5, v21

    move/from16 v21, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_11

    if-ne v0, v4, :cond_10

    goto :goto_7

    :cond_10
    move-object v8, v4

    move-object/from16 v16, v9

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    move/from16 v18, v11

    move-object/from16 v11, v20

    goto :goto_8

    :cond_11
    :goto_7
    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1;

    const/4 v5, 0x0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    move-object v8, v4

    move-object/from16 v16, v9

    move-object/from16 v7, v18

    move-object/from16 v9, v19

    move/from16 v4, v21

    move/from16 v18, v11

    move-object/from16 v11, v20

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$Thumbnail$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;Lcom/motorola/camera/adobe_scan/AdobeScanComponent;ILkotlin/coroutines/Continuation;)V

    move-object v1, v3

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :goto_8
    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v6, v11, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v0, v10}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->Transparent:J

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v3, v10, v11, v4}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v3, v2}, Landroidx/compose/ui/draw/BlurKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v20

    const v2, 0x4c5de2

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_12

    if-ne v10, v8, :cond_13

    :cond_12
    new-instance v21, Lf/A;

    const/16 v28, 0x0

    const/16 v29, 0x3

    const/16 v22, 0x0

    const-class v24, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    const-string v25, "onThumbnailClicked"

    const-string v26, "onThumbnailClicked()V"

    const/16 v27, 0x0

    move-object/from16 v23, v2

    invoke-direct/range {v21 .. v29}, Lf/A;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v10, v21

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    check-cast v10, Lkotlin/reflect/KFunction;

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x6e3c21fe

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_14

    new-instance v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v21, v2

    check-cast v21, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v25, v10

    check-cast v25, Lkotlin/jvm/functions/Function0;

    const/16 v26, 0x1c

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v13, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v8, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v6, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_15

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_15
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_9
    invoke-static {v6, v3, v15}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v10, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v3, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v3, :cond_16

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    :cond_16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v9}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_17
    invoke-static {v6, v2, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v7, v18

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v7, v8}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v5, v7, v9}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/16 v9, 0xf8

    const/16 v10, 0x30

    invoke-static {v2, v7, v6, v10, v9}, Landroidx/compose/foundation/ImageKt;->Image-5h-nEew(Landroidx/compose/ui/graphics/AndroidImageBitmap;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    move-object/from16 v2, v16

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->thumbnailPageIndexBoxSize:F

    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v8}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-wide v7, 0xff7ed0ffL

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v7

    invoke-static {v0, v7, v8, v4}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v5, v0, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object v4

    invoke-virtual {v4}, Lh/C;->getPageCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v10, v5, Lcom/motorola/camera/ui/compose/Dimensions;->thumbnailPageIndexTextSize:J

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v7, v5, Lcom/motorola/camera/ui/compose/Dimensions;->thumbnailPageIndexLineHeight:J

    const-wide v12, 0xff0d0707L

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Brush;->Color(J)J

    move-result-wide v12

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v14, v2, Lcom/motorola/camera/ui/compose/Dimensions;->thumbnailPageIndexLetterSpacing:J

    new-instance v16, Landroidx/compose/ui/text/TextStyle;

    move-wide/from16 v30, v7

    move-object/from16 v7, v16

    move-wide/from16 v16, v30

    move-wide v8, v12

    const/4 v12, 0x0

    const v18, 0xfd7f7c

    move-wide v13, v14

    const/4 v15, 0x3

    invoke-direct/range {v7 .. v18}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v19, 0x0

    const v20, 0xfffc

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-object v0, v4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v16, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, p3

    invoke-static/range {v0 .. v20}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v6, v17

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_a
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/adobe_scan/AdobeScanComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanComponent;Landroidx/compose/ui/Modifier;Landroid/graphics/Bitmap;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public final getViewModel()Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    return-object p0
.end method

.method public final onWindowHasFocus()V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponent;->viewModel:Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;

    iput-boolean v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanComponentViewModel;->hasFocus:Z

    return-void
.end method

.method public final rotate(I)V
    .locals 3

    rsub-int p1, p1, 0x168

    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->orientation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->uiRotation$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    move-result v0

    int-to-float p1, p1

    sub-float/2addr p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr p1, v2

    :cond_1
    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    return-void
.end method
