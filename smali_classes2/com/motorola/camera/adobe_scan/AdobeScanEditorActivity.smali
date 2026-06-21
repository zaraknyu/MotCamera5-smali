.class public final Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;
.implements Lcom/motorola/camera/ActivityStarter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;",
        "Landroidx/activity/ComponentActivity;",
        "Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;",
        "Lcom/motorola/camera/ActivityStarter;",
        "<init>",
        "()V",
        "UiState",
        "BottomBarButtonConfig",
        "feature_adobe_scan_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public adobePdfUniqueId:Ljava/lang/String;

.field public initialCropState:Lh/D;

.field public launchAdobeAppJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

.field public final scanConnection:Lh/h;

.field public final scanResultPreviewBitmaps$delegate:Lkotlin/SynchronizedLazyImpl;

.field public scanSession:Lh/C;

.field public final uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-direct {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    new-instance v0, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanResultPreviewBitmaps$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanSDKManager:Lh/s;

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lh/h;

    invoke-direct {v0, p0, v1}, Lh/h;-><init>(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanConnection:Lh/h;

    return-void
.end method

.method public static final synthetic access$startActivity$s1027565324(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static getPdfIntent()Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->pdfUri:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    const-string v0, "AdobeScanEditorActivity"

    const-string v1, "Trying to get PDF but uri is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "application/pdf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v1
.end method


# virtual methods
.method public final BackButton(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 13

    const v0, 0x57e0ab75

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v8, p2

    goto/16 :goto_4

    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonHorizontalSpace:F

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v4, v4, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonHeight:F

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonMinWidth:F

    const/high16 v7, 0x7fc00000    # Float.NaN

    invoke-static {v4, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v6, 0x4c5de2

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_4

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v6, :cond_5

    :cond_4
    new-instance v7, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v6, 0x12

    invoke-direct {v7, p0, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-static {v4, v11, v7, v12}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v6, 0x30

    invoke-static {v2, v3, p2, v6}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v3, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {p2, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_6

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v2, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v6, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_7

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v2, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonHorizontalSpace:F

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonIconSize:F

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v0, 0x7f08019c

    invoke-static {v0, p2, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    sget-wide v6, Landroidx/compose/ui/graphics/Color;->White:J

    const/16 v9, 0xc30

    const/4 v10, 0x0

    const/4 v4, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final BottomBar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    const-string v1, "modifier"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x783f7cf9

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int v11, v1, v2

    and-int/lit8 v1, v11, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_e

    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v3, 0x36

    invoke-static {v1, v2, v6, v3}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    iget v4, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v6, v9}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v12, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v12, :cond_4

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v6, v2, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v6, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v13, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v13, :cond_5

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v6, v7, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v7, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v7}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v13

    const/4 v15, 0x0

    if-eqz v13, :cond_7

    const v1, 0x3c218e50

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v1, v11, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->CropBottomBar(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x1

    goto/16 :goto_d

    :cond_7
    const v13, 0x3c22c7d3

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing()Z

    move-result v13

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-eqz v13, :cond_10

    const v7, 0x3c233dc5

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, 0x713c5e24

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->shouldIgnoreAdobeLocalization()Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x6011e36f

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, 0x7f120040

    invoke-static {v7, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_8
    const v7, 0x60132ccf

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v7, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lh/H;->B:Lh/t;

    invoke-virtual {v7, v6}, Lh/t;->getLabel(Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    sget-object v13, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lh/H;->B:Lh/t;

    invoke-virtual {v13, v6}, Lh/t;->getDrawable(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    const v14, 0x4c5de2

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_9

    if-ne v15, v3, :cond_a

    :cond_9
    new-instance v15, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v14, 0x0

    invoke-direct {v15, v0, v14}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v14, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v14, v7, v13, v15}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->shouldIgnoreAdobeLocalization()Z

    move-result v7

    if-eqz v7, :cond_b

    const v7, 0x6019e1ad

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v7, 0x7f12001e

    invoke-static {v7, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    const v7, 0x601b3368

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v7, Lh/H;->z:Lh/t;

    invoke-virtual {v7, v6}, Lh/t;->getLabel(Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    const v13, 0x7f080192

    const/4 v15, 0x6

    invoke-static {v13, v6, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    const v15, 0x4c5de2

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    move/from16 v17, v11

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v15, :cond_c

    if-ne v11, v3, :cond_d

    :cond_c
    new-instance v11, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v15, 0x1

    invoke-direct {v11, v0, v15}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v15, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v15, v7, v13, v11}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;)V

    const v7, 0x7f120036

    invoke-static {v7, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f080195

    const/4 v13, 0x6

    invoke-static {v11, v6, v13}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v11

    const v13, 0x4c5de2

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    move/from16 v16, v13

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v16, :cond_e

    if-ne v13, v3, :cond_f

    :cond_e
    new-instance v13, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v3, 0x2

    invoke-direct {v13, v0, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v3, v7, v11, v13}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;)V

    filled-new-array {v14, v15, v3}, [Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v18, v4

    goto/16 :goto_7

    :cond_10
    move/from16 v17, v11

    iget-object v11, v7, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isSaveFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1a

    const v11, 0x3c24a207

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v11, -0x12b7966d

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v11, 0x7f12004c

    invoke-static {v11, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f080225

    const/4 v15, 0x6

    invoke-static {v13, v6, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    const v14, 0x4c5de2

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_11

    if-ne v15, v3, :cond_12

    :cond_11
    new-instance v15, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v14, 0x5

    invoke-direct {v15, v0, v14}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v14, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v14, v11, v13, v15}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v11

    if-eqz v11, :cond_15

    const v11, -0x2244e6ae

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v11, 0x7f120021

    invoke-static {v11, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v13, 0x7f12003c

    invoke-static {v13, v11, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f08019a

    const/4 v15, 0x6

    invoke-static {v13, v6, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    const v15, 0x4c5de2

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    move/from16 v18, v15

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v18, :cond_13

    if-ne v15, v3, :cond_14

    :cond_13
    new-instance v15, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v9, 0x6

    invoke-direct {v15, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_14
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v10, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v10, v11, v13, v15}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v18, v4

    goto :goto_6

    :cond_15
    const v9, -0x223e1dd5

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v9, 0x7f12003d

    invoke-static {v9, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0801e4

    const/4 v15, 0x6

    invoke-static {v10, v6, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v10

    iget-object v11, v7, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isPdfViewerAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const v15, 0x4c5de2

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_16

    if-ne v15, v3, :cond_17

    :cond_16
    new-instance v15, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v13, 0x7

    invoke-direct {v15, v0, v13}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_17
    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v18, v4

    new-instance v4, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v4, v9, v10, v11, v15}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v10, v4

    :goto_6
    const v4, 0x7f12003b

    invoke-static {v4, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f080198

    const/4 v15, 0x6

    invoke-static {v9, v6, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    iget-object v7, v7, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isGalleryAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const v15, 0x4c5de2

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_18

    if-ne v13, v3, :cond_19

    :cond_18
    new-instance v13, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v3, 0x8

    invoke-direct {v13, v0, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_19
    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-direct {v3, v4, v9, v7, v13}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;-><init>(Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Lkotlin/jvm/functions/Function0;)V

    filled-new-array {v14, v10, v3}, [Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_7

    :cond_1a
    move-object/from16 v18, v4

    const/4 v15, 0x0

    const v3, 0x3c2591ac

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v15}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_7
    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v9, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v10, 0x36

    invoke-static {v1, v7, v6, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget v7, v6, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v6, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_1b

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_1b
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_8
    invoke-static {v6, v1, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v10, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v6, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v1, :cond_1d

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_a

    :cond_1c
    :goto_9
    move-object/from16 v1, v18

    goto :goto_b

    :cond_1d
    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v5}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    goto :goto_9

    :goto_b
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v1, -0x62eacd6a

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;

    invoke-static {v9}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v3, v2

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->buttonText:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->painter:Landroidx/compose/ui/graphics/painter/Painter;

    move-object v5, v4

    iget-object v4, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->enabled:Landroidx/compose/runtime/MutableState;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$BottomBarButtonConfig;->onClick:Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v7, v17, 0xc

    const/high16 v8, 0x70000

    and-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v19

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->BottomBarButton(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    goto :goto_c

    :cond_1e
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_d
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_e
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_1f

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;

    const/4 v3, 0x0

    move-object/from16 v9, p1

    move/from16 v10, p3

    invoke-direct {v2, v0, v9, v10, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public final BottomBarButton(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 28

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v12, p6

    move/from16 v0, p7

    const v1, -0x6cb20712

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v0, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    and-int/lit8 v3, v0, 0x30

    move-object/from16 v7, p2

    if-nez v3, :cond_3

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v0, 0x180

    move-object/from16 v4, p3

    if-nez v3, :cond_5

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v1, v3

    :cond_5
    and-int/lit16 v3, v0, 0xc00

    if-nez v3, :cond_8

    and-int/lit8 v3, p8, 0x8

    if-nez v3, :cond_6

    move-object/from16 v3, p4

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_4

    :cond_6
    move-object/from16 v3, p4

    :cond_7
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v1, v5

    goto :goto_5

    :cond_8
    move-object/from16 v3, p4

    :goto_5
    and-int/lit16 v5, v0, 0x6000

    if-nez v5, :cond_a

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x4000

    goto :goto_6

    :cond_9
    const/16 v5, 0x2000

    :goto_6
    or-int/2addr v1, v5

    :cond_a
    and-int/lit16 v5, v1, 0x2493

    const/16 v8, 0x2492

    if-ne v5, v8, :cond_c

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_7
    move-object v5, v3

    goto/16 :goto_f

    :cond_c
    :goto_8
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_e

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_f

    :goto_9
    and-int/lit16 v1, v1, -0x1c01

    goto :goto_b

    :cond_e
    :goto_a
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    goto :goto_9

    :cond_f
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_10

    const v5, -0x1406332

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v5, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v9, v5, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_c
    move-wide v10, v9

    goto :goto_d

    :cond_10
    const v5, -0x13f3bba

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v5, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v9, v5, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColorDisabled:J

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_c

    :goto_d
    sget-object v5, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->bottomBarButtonHeight:F

    invoke-static {v2, v8}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v13, 0x6

    invoke-static {v8, v9, v6, v13}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->Center:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/16 v14, 0x36

    invoke-static {v9, v13, v12, v14}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v9

    iget v13, v12, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v8}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v0, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v0, :cond_11

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_11
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_e
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v9, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v14, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v9, v12, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_12

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v9, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    :cond_12
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9, v0}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_13
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v12, v8, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->bottomBarButtonIconSize:F

    sget-object v8, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v8, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0xe

    and-int/lit8 v8, v1, 0x70

    or-int v13, v0, v8

    const/4 v14, 0x0

    move-object v8, v7

    move-object v7, v4

    invoke-static/range {v7 .. v14}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    move-object v0, v12

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v14, v4, Lcom/motorola/camera/ui/compose/Dimensions;->bottomBarButtonFontSize:J

    new-instance v23, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v20, 0x0

    const v22, 0xff7ffc

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x3

    move-wide v12, v10

    move-object/from16 v11, v23

    invoke-direct/range {v11 .. v22}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    shr-int/lit8 v1, v1, 0x3

    and-int/lit8 v25, v1, 0xe

    const/16 v26, 0x0

    const v27, 0xfffe

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v7, p2

    move-object/from16 v24, v0

    invoke-static/range {v7 .. v27}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v12, v24

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto/16 :goto_7

    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_14

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda40;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda40;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

.method public final CropBottomBar(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v9, p1

    move-object/from16 v6, p2

    const v1, -0x5f7f5b0e

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v9, 0x6

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v9

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_3

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_3
    :goto_2
    const v2, 0x7f120028

    invoke-static {v2, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v12, v2, Lcom/motorola/camera/ui/compose/CustomColors;->bottomBarButtonColor:J

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v14, v3, Lcom/motorola/camera/ui/compose/Dimensions;->bottomBarFontSize:J

    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v29, 0x0

    const v30, 0x1fdf2

    const/4 v11, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v19, v3

    move-object/from16 v27, v6

    invoke-static/range {v10 .. v30}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v12, v2, Lcom/motorola/camera/ui/compose/Dimensions;->bottomBarButtonPaddingTop:F

    const/4 v14, 0x0

    const/16 v15, 0xd

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v3, 0x7f120027

    invoke-static {v3, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080195

    const/4 v5, 0x6

    invoke-static {v4, v6, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v4

    const v5, 0x4c5de2

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v5, :cond_5

    :cond_4
    new-instance v7, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v5, 0x13

    invoke-direct {v7, v0, v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v1, v1, 0xf

    const/high16 v7, 0x70000

    and-int/2addr v7, v1

    const/16 v8, 0x8

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->BottomBarButton(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v9, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public final CropEditDialog(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 6

    const v0, -0x424dfd54

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    const v0, 0x4c5de2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v1, :cond_3

    if-ne v2, v3, :cond_4

    :cond_3
    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v1, 0x16

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_5

    if-ne v5, v3, :cond_6

    :cond_5
    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v4, 0x17

    invoke-direct {v5, p0, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_7

    if-ne v4, v3, :cond_8

    :cond_7
    new-instance v4, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v0, 0x18

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v5, v4, p2, v1}, La/l;->CropEditDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_9

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final Dialogs(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 4

    const v0, 0x56e9cd1f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v2, v0, 0x3

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    const v1, 0x43ab068f

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    and-int/lit8 v2, v0, 0xe

    invoke-virtual {p0, v2, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->CropEditDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x43ab0db5

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v3, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDiscardScanDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    and-int/lit8 v3, v0, 0xe

    invoke-virtual {p0, v3, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->DiscardScanDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_4
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v3, 0x43ab1597

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v3, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showSaveLocationDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    and-int/lit8 v3, v0, 0xe

    invoke-virtual {p0, v3, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->SaveLocationDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_5
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->DownloadAdobeDialog(ILandroidx/compose/runtime/ComposerImpl;)V

    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public final DiscardScanDialog(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 5

    const v0, 0x190a1367

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    const v0, 0x4c5de2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v1, :cond_3

    if-ne v2, v3, :cond_4

    :cond_3
    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v1, 0x3

    invoke-direct {v2, p0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_5

    if-ne v4, v3, :cond_6

    :cond_5
    new-instance v4, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/4 v0, 0x4

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v2, v4, p2, v1}, La/l;->DiscardScanDialog(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public final DoMoreWithAdobe(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    const v2, 0x124d5361

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v2, v1, 0x6

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v4, 0x3

    and-int/2addr v2, v4

    const/4 v10, 0x0

    if-ne v2, v3, :cond_3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_3
    :goto_2
    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    iget v2, v11, Lcom/motorola/camera/ui/compose/Dimensions;->doMoreWithAdobeHorizontalSpace:F

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->wrapContentHeight$default(Landroidx/compose/ui/Modifier;I)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget v13, v11, Lcom/motorola/camera/ui/compose/Dimensions;->doMoreWithAdobePaddingStart:F

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v5, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing()Z

    move-result v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    invoke-static {v4, v5}, Landroidx/compose/ui/draw/BlurKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Top:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v2, v5, v7, v10}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v5, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v7, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v9, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v9, :cond_5

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v6, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_7
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget v2, v11, Lcom/motorola/camera/ui/compose/Dimensions;->doMoreWithAdobeIconSize:F

    invoke-static {v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v2, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lh/H;->e:Lh/t;

    invoke-virtual {v2, v7}, Lh/t;->getDrawable(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v2

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const/16 v8, 0xc30

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    const v2, 0x7f120021

    invoke-static {v2, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120030

    invoke-static {v3, v2, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v18, Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, v11, Lcom/motorola/camera/ui/compose/Dimensions;->doMoreWithAdobeTextSize:J

    const-wide/16 v21, 0x0

    const v23, 0xfffffd

    const-wide/16 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, v18

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-wide v15, v3

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    sget-object v3, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v4, v3, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum80:J

    sget-object v8, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v21, 0x30

    const v22, 0xf7da

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move v11, v10

    const-wide/16 v9, 0x0

    move v13, v11

    const/4 v11, 0x0

    move-object/from16 v18, v12

    move v14, v13

    const-wide/16 v12, 0x0

    move v15, v14

    const/4 v14, 0x2

    move/from16 v16, v15

    const/4 v15, 0x0

    move/from16 v17, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    const/high16 v20, 0x30000

    move-object/from16 v19, p2

    invoke-static/range {v2 .. v22}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v7, v19

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;

    const/4 v13, 0x0

    invoke-direct {v3, v0, v1, v13}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public final DownloadAdobeDialog(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 6

    const v0, 0x7c18415b

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanConnection:Lh/h;

    invoke-virtual {v0}, Lh/h;->isAdobeScanInstalled()Z

    move-result v0

    const v1, 0x4c5de2

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v2, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v2, 0x19

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_5

    if-ne v5, v4, :cond_6

    :cond_5
    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v1, 0x1a

    invoke-direct {v5, p0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v3, v5, p2, v2}, La/l;->DownloadAdobeDialog(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public final ImagePager(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v12, p2

    const v2, -0x41e88b9a

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x3

    if-ne v2, v3, :cond_2

    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v11, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    if-eqz v11, :cond_4

    iget-object v2, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanResultPreviewBitmaps$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v15, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$ImagePager$1;

    invoke-direct {v2, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$ImagePager$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;)V

    const v4, 0x509cf367

    invoke-static {v4, v2, v12}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const/16 v4, 0x30

    const/16 v5, 0x3fec

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v2 .. v18}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager--8jOkeI(FIIILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function1;Z)V

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v4, 0x7

    invoke-direct {v3, v0, v1, v4}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void

    :cond_4
    const-string v0, "pagerState"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final InitializePagerState(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 3

    const v0, 0x16058610

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p1, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    const v0, 0x4c5de2

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v0, :cond_5

    :cond_4
    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v0, 0x11

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v2, 0x36

    invoke-static {v0, v1, p2, v2, v0}, Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Landroidx/compose/foundation/pager/DefaultPagerState;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda8;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public final PageIndex(IILandroidx/compose/runtime/ComposerImpl;I)V
    .locals 23

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const v3, 0x4f8e6ef3    # 4.7792717E9f

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v3, p4, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p4, v3

    goto :goto_1

    :cond_1
    move/from16 v3, p4

    :goto_1
    and-int/lit8 v4, p4, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit8 v3, v3, 0x13

    const/16 v4, 0x12

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_5

    :cond_5
    :goto_3
    sget-object v3, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/CustomColors;

    const/high16 v4, 0x3f800000    # 1.0f

    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget v7, v2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v2, v4}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_6

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v6, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, v2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v2, v4, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-wide v6, v3, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum20:J

    sget-object v4, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v8, v8, Lcom/motorola/camera/ui/compose/Dimensions;->pageIndexBackgroundRadius:F

    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->pageIndexHorizontalPadding:F

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->pageIndexVerticalPadding:F

    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f12003e

    invoke-static {v7, v6, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/compose/Dimensions;

    iget-wide v10, v4, Lcom/motorola/camera/ui/compose/Dimensions;->pageIndexFontSize:J

    sget-object v12, Landroidx/compose/ui/text/font/FontWeight;->Bold:Landroidx/compose/ui/text/font/FontWeight;

    iget-wide v8, v3, Lcom/motorola/camera/ui/compose/CustomColors;->coreBrandVellum100:J

    new-instance v18, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v16, 0x0

    move-object/from16 v7, v18

    const v18, 0xff7ff8

    const-wide/16 v13, 0x0

    const/4 v15, 0x3

    invoke-direct/range {v7 .. v18}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    const/16 v21, 0x0

    const v22, 0xfffc

    move-object v3, v5

    const-wide/16 v4, 0x0

    move-object v2, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, p3

    invoke-static/range {v2 .. v22}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v2, v19

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    invoke-virtual {v2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda43;

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda43;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;III)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final PreviewArea(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 11

    const v0, 0x71619e95

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v2, v0, 0x3

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->getPreviewHeight-D9Ej5fM()F

    move-result v1

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget v5, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {p2, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_3

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v6, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v6, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v6, :cond_4

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_5
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v1, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing()Z

    move-result v4

    if-nez v4, :cond_8

    const v4, 0x734f0758

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x734fcf07

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isSaveFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x73507987

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScanAppResultImagesPreview(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :cond_6
    const v0, 0x7351bc5d

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v7, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ProgressIndicatorKt;->CircularProgressIndicator-LxG7B9w(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_7
    const v1, 0x7353dc70

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScanSessionContentPreview(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_8
    const v1, 0x73552c98

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScanSessionContentPreview(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public final RedirectHintToast(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 13

    const v0, 0x39061e46

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v6, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_3

    :cond_2
    :goto_1
    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v0

    invoke-virtual {p0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->getPreviewHeight-D9Ej5fM()F

    move-result v0

    sub-float/2addr v4, v0

    int-to-float v0, v1

    div-float/2addr v4, v0

    const v0, 0x7f070575

    invoke-static {v0, p2}, Landroidx/compose/ui/res/PrimitiveResources_androidKt;->dimensionResource(ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v0

    add-float/2addr v4, v0

    sget-object v0, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->pagerImagePadding:F

    add-float v9, v4, v0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;

    invoke-direct {v0, v2, v6}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt$safeDrawingPadding$$inlined$windowInsetsPadding$1;-><init>(II)V

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v7, v0}, Landroidx/compose/ui/Modifier_jvmKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Black:J

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v1

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v0, v1, v2, v4}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const v1, 0x6e3c21fe

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const/4 v4, 0x6

    if-ne v1, v2, :cond_3

    new-instance v1, Lb/o$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v0, v6, v1, v4}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v2, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p2, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_4

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v1, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x7f120021

    invoke-static {v0, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12003f

    invoke-static {v1, v0, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/motorola/camera/ui/compose/composable/HintMessageKt;->HintMessage(Ljava/lang/String;Landroidx/compose/ui/Modifier;FLandroidx/compose/runtime/ComposerImpl;II)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public final SaveLocationDialog(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 13

    const v0, -0x32cc2ec

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, p0

    goto/16 :goto_3

    :cond_2
    :goto_1
    const v0, 0x7f1201f3

    invoke-static {v0, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x14f85fe0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isGalleryAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    const v4, 0x4c5de2

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_3

    if-ne v6, v3, :cond_4

    :cond_3
    new-instance v6, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v6, p0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    :cond_5
    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    :goto_2
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v6, 0x7f120021

    invoke-static {v6, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f1201ee

    invoke-static {v7, p2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move-object v5, v7

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const v9, 0x14f8a184

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v9, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isPdfViewerAvailable:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_6

    if-ne v10, v3, :cond_7

    :cond_6
    new-instance v10, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;

    const/4 v9, 0x2

    invoke-direct {v10, p0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v7, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v9, 0x14f8c08a

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_9

    if-ne v9, v3, :cond_a

    :cond_9
    new-instance v9, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {v9, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v0, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v9, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->firstCameraData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v9, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v10, :cond_c

    if-ne v11, v3, :cond_d

    :cond_c
    new-instance v11, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;

    invoke-direct {v11, p0, v12}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$3$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, v9, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->pdfUri:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_e

    if-ne v10, v3, :cond_f

    :cond_e
    new-instance v10, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$4$1;

    invoke-direct {v10, p0, v12}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$4$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {p2, v0, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_10

    if-ne v4, v3, :cond_11

    :cond_10
    new-instance v4, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v0, 0x9

    invoke-direct {v4, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_11
    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object v3, v1

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$SaveLocationDialog$6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    const p0, -0x1d39f24

    invoke-static {p0, v1, p2}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v1, 0x30

    invoke-static {v0, p0, p2, v1}, La/l;->SaveLocationDialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-wide v0, La/l;->saveStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_12

    goto :goto_3

    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v5, La/l;->saveStartTime:J

    sub-long/2addr v0, v5

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v5, Lcom/motorola/camera/CameraKpi$KPI;->ADOBE_SCAN_SAVE_TIME_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/motorola/camera/CameraKpi;->commitKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;Ljava/lang/Long;)V

    sput-wide v2, La/l;->saveStartTime:J

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_13

    new-instance p2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v0, 0x2

    invoke-direct {p2, v4, p1, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object p2, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public final ScanAppResultImagesPreview(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 13

    move-object v5, p2

    const v0, 0xf6ba19f

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p1

    and-int/lit8 v2, v0, 0x3

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v1, v2, :cond_3

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->createCompositionCoroutineScope(Landroidx/compose/runtime/ComposerImpl;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    and-int/lit8 v3, v0, 0xe

    invoke-virtual {p0, v3, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ImagePager(ILandroidx/compose/runtime/ComposerImpl;)V

    iget-object v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    const/4 v4, 0x0

    const-string v6, "pagerState"

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v3, :cond_4

    move v3, v7

    goto :goto_2

    :cond_4
    move v3, v8

    :goto_2
    const v9, -0x615d173a

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_5

    if-ne v11, v2, :cond_6

    :cond_5
    new-instance v11, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda30;

    const/4 v10, 0x0

    invoke-direct {v11, v1, p0, v10}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda30;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v10, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v10

    iget-object v12, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v7

    if-ge v10, v4, :cond_7

    goto :goto_3

    :cond_7
    move v7, v8

    :goto_3
    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_8

    if-ne v6, v2, :cond_9

    :cond_8
    new-instance v6, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda30;

    const/4 v2, 0x1

    invoke-direct {v6, v1, p0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda30;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    move-object v4, v6

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v0, v0, 0xc

    const v1, 0xe000

    and-int v6, v0, v1

    move-object v0, p0

    move v1, v3

    move v3, v7

    move-object v2, v11

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScrollArrows(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void

    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final ScanSessionContentPreview(ILandroidx/compose/runtime/ComposerImpl;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v5, p2

    const v1, 0x4b9ff462    # 2.0965572E7f

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v7

    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_2

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_9

    :cond_2
    :goto_1
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v6, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v8, v6, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroidx/compose/foundation/layout/OffsetKt;->aspectRatio$default()Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :goto_2
    invoke-interface {v4, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget v8, v5, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v5, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_4

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v3, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v9, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v9, v5, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v9, :cond_5

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v5, v2, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    const-string v3, "scanSession"

    if-eqz v2, :cond_1d

    iget-object v2, v2, Lh/C;->e:Lh/p;

    iget-object v9, v2, Lh/p;->a:Le/J0;

    iget-object v10, v9, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const v11, -0x455e4730

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v11, 0x1675949

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v11, v12, :cond_7

    new-instance v11, Le/A0;

    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf/D;

    iget v13, v13, Lf/D;->a:I

    invoke-direct {v11, v13}, Le/A0;-><init>(I)V

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_7
    check-cast v11, Le/A0;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v13, 0x1677834

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_8

    if-ne v14, v12, :cond_9

    :cond_8
    new-instance v14, Le/J$$ExternalSyntheticLambda1;

    const/4 v13, 0x3

    invoke-direct {v14, v13, v2, v11}, Le/J$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    new-instance v13, Lf/a;

    invoke-direct {v13, v14}, Lf/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v14, Lf/w;

    new-instance v15, Lf/x;

    iget-object v8, v9, Le/J0;->b:Landroidx/compose/runtime/MutableState;

    iget-object v9, v9, Le/J0;->B:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {v15, v10, v8, v9, v13}, Lf/x;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lf/a;)V

    invoke-direct {v14, v15}, Lf/w;-><init>(Lf/x;)V

    const v8, 0x671a9c9b

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceableGroup(I)V

    sget-object v8, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->LocalViewModelStoreOwner:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/ViewModelStoreOwner;

    if-nez v8, :cond_a

    const v8, 0x4b1d16e9    # 1.0295017E7f

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v8}, Landroidx/lifecycle/LifecycleKt;->get(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v8

    :goto_4
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_a
    const v9, 0x4b1d128d    # 1.0293901E7f

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    goto :goto_4

    :goto_5
    if-eqz v8, :cond_1c

    instance-of v9, v8, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v9, :cond_b

    move-object v9, v8

    check-cast v9, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v9}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v9

    goto :goto_6

    :cond_b
    sget-object v9, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    :goto_6
    const-class v10, Lf/C;

    sget-object v13, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v13, v10}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-interface {v8}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v8

    const-string v13, "store"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "extras"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Landroidx/media3/extractor/text/pgs/PgsParser;

    invoke-direct {v13, v8, v14, v9}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    invoke-interface {v10}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1b

    const-string v9, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8, v10}, Landroidx/media3/extractor/text/pgs/PgsParser;->getViewModel$lifecycle_viewmodel_release(Ljava/lang/String;Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v8

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    check-cast v8, Lf/C;

    iget-object v9, v8, Lf/C;->f:Lf/v;

    iget-object v9, v9, Lf/v;->h:Lf/b;

    iput-object v9, v2, Lh/p;->d:Lf/b;

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v9}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v9

    check-cast v9, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v9, v9, Landroidx/lifecycle/LifecycleRegistry;->_currentStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v10, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {v10, v9}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    invoke-static {v10, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    const v13, 0x167ede6

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_c

    if-ne v14, v12, :cond_d

    :cond_c
    new-instance v14, Lf/g;

    const/4 v13, 0x4

    const/4 v15, 0x0

    invoke-direct {v14, v9, v2, v15, v13}, Lf/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v5, v10, v14}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Lh/H;->a:Lh/H;

    new-instance v10, Le/w;

    const/4 v13, 0x1

    invoke-direct {v10, v2, v11, v8, v13}, Le/w;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v8, -0x4efbd4a9

    invoke-static {v8, v10, v5}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/16 v10, 0x36

    invoke-virtual {v9, v8, v5, v10}, Lh/H;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    const v8, 0x1682727

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_e

    if-ne v9, v12, :cond_f

    :cond_e
    new-instance v9, Lc/X$$ExternalSyntheticLambda0;

    const/4 v8, 0x5

    invoke-direct {v9, v8, v2}, Lc/X$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v9, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lh/C;->getCurrentPageIndex()I

    move-result v6

    if-lez v6, :cond_10

    move v6, v1

    move v1, v2

    goto :goto_7

    :cond_10
    move v6, v1

    move v1, v4

    :goto_7
    const v8, 0x4c5de2

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_11

    if-ne v10, v12, :cond_12

    :cond_11
    new-instance v10, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v9, 0xf

    invoke-direct {v10, v0, v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_12
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v9, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v9, :cond_17

    invoke-virtual {v9}, Lh/C;->getCurrentPageIndex()I

    move-result v9

    iget-object v11, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lh/C;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v9, v3, :cond_13

    move v3, v2

    goto :goto_8

    :cond_13
    move v3, v4

    :goto_8
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_14

    if-ne v8, v12, :cond_15

    :cond_14
    new-instance v8, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v2, 0x10

    invoke-direct {v8, v0, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_15
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v2, v6, 0xc

    const v4, 0xe000

    and-int v6, v2, v4

    move-object v4, v8

    move-object v2, v10

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScrollArrows(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_9

    :cond_16
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16

    :cond_17
    const/16 v16, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_18
    const/16 v16, 0x0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v16

    :cond_19
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_1a

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v7, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v16, 0x0

    throw v16
.end method

.method public final ScrollArrow(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 19

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v10, p4

    move/from16 v0, p5

    const-string v1, "action"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "modifier"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x2c61f4c3

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v1, v0, 0x6

    if-nez v1, :cond_1

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    and-int/lit8 v5, v0, 0x30

    const/16 v6, 0x20

    if-nez v5, :cond_3

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :cond_3
    and-int/lit16 v5, v0, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v1, v5

    :cond_5
    and-int/lit16 v5, v1, 0x93

    const/16 v7, 0x92

    if-ne v5, v7, :cond_7

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_6

    :cond_7
    :goto_4
    if-eqz v2, :cond_c

    const v5, 0x7f080197

    const/4 v7, 0x6

    invoke-static {v5, v10, v7}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    sget-wide v8, Landroidx/compose/ui/graphics/Color;->Gray:J

    sget-object v7, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v11, v11, Lcom/motorola/camera/ui/compose/Dimensions;->navigatePagesIconWidth:F

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->navigatePagesIconHeight:F

    invoke-static {v4, v11, v7}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const v7, 0x6e3c21fe

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v7, v11, :cond_8

    new-instance v7, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    invoke-direct {v7}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;-><init>()V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    move-object v13, v7

    check-cast v13, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v14, 0x4c5de2

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v6, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v7

    :goto_5
    invoke-virtual {v10}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_a

    if-ne v6, v11, :cond_b

    :cond_a
    new-instance v6, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v6, v1, v3}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v17, v6

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v18, 0x1c

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/foundation/ImageKt;->clickable-O2vRcR0$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/16 v11, 0xc30

    const/4 v12, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :cond_c
    :goto_6
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda58;

    move-object/from16 v1, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda58;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public final ScrollArrows(ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 13

    move-object/from16 v6, p4

    move-object/from16 v4, p5

    move/from16 v7, p6

    const-string v0, "leftArrowAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightArrowAction"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x71dfbd33

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, v7, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/lit8 v3, v7, 0x30

    if-nez v3, :cond_3

    invoke-virtual {v4, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_3
    and-int/lit16 v3, v7, 0x180

    move/from16 v8, p3

    if-nez v3, :cond_5

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x100

    goto :goto_3

    :cond_4
    const/16 v3, 0x80

    :goto_3
    or-int/2addr v0, v3

    :cond_5
    and-int/lit16 v3, v7, 0xc00

    if-nez v3, :cond_7

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x800

    goto :goto_4

    :cond_6
    const/16 v3, 0x400

    :goto_4
    or-int/2addr v0, v3

    :cond_7
    and-int/lit16 v3, v7, 0x6000

    if-nez v3, :cond_9

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4000

    goto :goto_5

    :cond_8
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v0, v3

    :cond_9
    move v9, v0

    and-int/lit16 v0, v9, 0x2493

    const/16 v3, 0x2492

    if-ne v0, v3, :cond_b

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_b
    :goto_6
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v3, v3, Lcom/motorola/camera/ui/compose/Dimensions;->navigatePagesIconPadding:F

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    iget v3, v4, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v4, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_c

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_7
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v4, v1, v10}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v4, v5, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v5, v4, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_d

    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_e
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-virtual {v10, v11, v0}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    and-int/lit8 v0, v9, 0x7e

    shr-int/lit8 v1, v9, 0x3

    and-int/lit16 v12, v1, 0x1c00

    or-int v5, v0, v12

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScrollArrow(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {v11, v0}, Landroidx/compose/ui/draw/BlurKt;->rotate(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v10, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shr-int/lit8 v0, v9, 0x6

    and-int/lit8 v0, v0, 0x7e

    or-int v5, v0, v12

    move-object v0, p0

    move-object/from16 v4, p5

    move-object v2, v6

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ScrollArrow(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {v4}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda56;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

.method public final Toolbar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v7, p2

    move/from16 v11, p3

    const-string v1, "modifier"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, -0x2906997a

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, v11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int v8, v1, v3

    and-int/lit8 v1, v8, 0x13

    const/16 v3, 0x12

    const/4 v12, 0x1

    if-ne v1, v3, :cond_3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_9

    :cond_3
    :goto_2
    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/Object;

    sget-object v3, Landroidx/compose/foundation/ScrollState;->Saver:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v4

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v4, :cond_4

    if-ne v5, v14, :cond_5

    :cond_4
    new-instance v5, Landroidx/compose/foundation/IndicationKt$LocalIndication$1;

    invoke-direct {v5, v13, v2}, Landroidx/compose/foundation/IndicationKt$LocalIndication$1;-><init>(II)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v2, v3

    move-object v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/ScrollState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    sget-object v17, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v2, v1, Landroidx/compose/foundation/ScrollState;->internalInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    const/16 v23, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v20, v2

    invoke-static/range {v15 .. v23}, Landroidx/compose/foundation/ImageKt;->scrollingContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/pager/PagerBringIntoViewSpec;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v15, v16

    new-instance v2, Landroidx/compose/foundation/ScrollingLayoutElement;

    invoke-direct {v2, v15}, Landroidx/compose/foundation/ScrollingLayoutElement;-><init>(Landroidx/compose/foundation/ScrollState;)V

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarHorizontalSpacing:F

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v4, 0x30

    invoke-static {v2, v3, v7, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v3, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v7, v1}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v6, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_6

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v5}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_7

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_8
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lh/H;->v:Lh/t;

    iget-object v3, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    xor-int/2addr v4, v12

    const v5, 0x4c5de2

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_9

    if-ne v9, v14, :cond_a

    :cond_9
    new-instance v9, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v6, 0xa

    invoke-direct {v9, v0, v6}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v8, v8, 0xf

    const/high16 v9, 0x380000

    and-int/2addr v8, v9

    const/16 v9, 0x15

    move-object/from16 v16, v1

    const/4 v1, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    move-object/from16 v19, v16

    move/from16 v16, v12

    move/from16 v12, v18

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lh/H;->y:Lh/t;

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_b

    if-ne v3, v14, :cond_c

    :cond_b
    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v1, 0xb

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_c
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v9, 0x15

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    move v1, v8

    sget-object v2, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Filter:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    move-object/from16 v3, v19

    invoke-virtual {v3, v2}, Lh/H;->getToolDescription(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)Lh/t;

    move-result-object v2

    const v4, 0x53153d1e

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_d

    move/from16 v24, v1

    move-object v12, v3

    goto :goto_4

    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_e

    if-ne v6, v14, :cond_f

    :cond_e
    new-instance v6, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v5, 0xc

    invoke-direct {v6, v0, v5}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    or-int/lit16 v8, v1, 0x6000

    const/4 v9, 0x5

    move v5, v1

    const/4 v1, 0x0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move/from16 v18, v5

    const/4 v5, 0x1

    move/from16 v24, v18

    move-object/from16 v12, v19

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_4
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Cleanup:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {v12, v1}, Lh/H;->getToolDescription(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)Lh/t;

    move-result-object v2

    const v1, 0x53158612

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_10

    move/from16 v25, v24

    goto :goto_7

    :cond_10
    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->shouldIgnoreAdobeLocalization()Z

    move-result v1

    if-eqz v1, :cond_11

    const v1, 0x3ba66636

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const v1, 0x7f120025

    invoke-static {v1, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_5
    move-object v3, v1

    goto :goto_6

    :cond_11
    const v1, 0x3ba7ef29

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v2, v7}, Lh/t;->getLabel(Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :goto_6
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    const v1, 0x4c5de2

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_12

    if-ne v5, v14, :cond_13

    :cond_12
    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v1, 0xd

    invoke-direct {v5, v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_13
    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v1, v24

    or-int/lit16 v8, v1, 0x6000

    const/4 v9, 0x1

    move/from16 v18, v1

    const/4 v1, 0x0

    const/4 v5, 0x1

    move/from16 v25, v18

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_7
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v1, Lcom/adobe/scan/sdk/ScanAppConnection$Operation;->Markup:Lcom/adobe/scan/sdk/ScanAppConnection$Operation;

    invoke-virtual {v12, v1}, Lh/H;->getToolDescription(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)Lh/t;

    move-result-object v2

    const v1, 0x5315ef53

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-nez v2, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    const v12, 0x4c5de2

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_15

    if-ne v3, v14, :cond_16

    :cond_15
    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v1, 0xe

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_16
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v8, v25

    or-int/lit16 v8, v8, 0x6000

    const/4 v9, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    :goto_8
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move/from16 v1, v16

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-object v1, v15, Landroidx/compose/foundation/ScrollState;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v12, 0x4c5de2

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    if-ne v3, v14, :cond_18

    :cond_17
    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;

    const/4 v2, 0x0

    invoke-direct {v3, v15, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$Toolbar$2$1;-><init>(Landroidx/compose/foundation/ScrollState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_18
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-static {v7, v1, v3}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :goto_9
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_19

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v10, v11, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public final ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V
    .locals 30

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v13, p7

    move/from16 v0, p8

    const v1, -0x7d8fe0e3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    or-int/lit8 v1, v0, 0x6

    and-int/lit8 v2, v0, 0x30

    if-nez v2, :cond_1

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    :cond_1
    and-int/lit16 v2, v0, 0x180

    if-nez v2, :cond_4

    and-int/lit8 v2, p9, 0x4

    if-nez v2, :cond_2

    move-object/from16 v2, p3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    move-object/from16 v2, p3

    :cond_3
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v1, v4

    goto :goto_2

    :cond_4
    move-object/from16 v2, p3

    :goto_2
    and-int/lit16 v4, v0, 0xc00

    if-nez v4, :cond_6

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x800

    goto :goto_3

    :cond_5
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v1, v4

    :cond_6
    and-int/lit8 v4, p9, 0x10

    if-eqz v4, :cond_8

    or-int/lit16 v1, v1, 0x6000

    :cond_7
    move/from16 v6, p5

    goto :goto_5

    :cond_8
    and-int/lit16 v6, v0, 0x6000

    if-nez v6, :cond_7

    move/from16 v6, p5

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x4000

    goto :goto_4

    :cond_9
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v1, v8

    :goto_5
    const/high16 v8, 0x30000

    and-int/2addr v8, v0

    if-nez v8, :cond_b

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v8, 0x10000

    :goto_6
    or-int/2addr v1, v8

    :cond_b
    const v8, 0x12493

    and-int/2addr v8, v1

    const v9, 0x12492

    if-ne v8, v9, :cond_d

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    move-object v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_d

    :cond_d
    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startDefaults()V

    and-int/lit8 v8, v0, 0x1

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    if-eqz v8, :cond_10

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->getDefaultsInvalid()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_f

    and-int/lit16 v1, v1, -0x381

    :cond_f
    move v4, v1

    move-object/from16 v1, p1

    goto :goto_9

    :cond_10
    :goto_8
    and-int/lit8 v8, p9, 0x4

    if-eqz v8, :cond_11

    invoke-virtual {v3, v13}, Lh/t;->getLabel(Landroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v1, v1, -0x381

    :cond_11
    if-eqz v4, :cond_12

    const/4 v6, 0x0

    :cond_12
    move v4, v1

    move-object v1, v9

    :goto_9
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endDefaults()V

    sget-object v8, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/compose/Dimensions;

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    iget v12, v11, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonHorizontalSpace:F

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v12, v14}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-D5KLDUw(FLandroidx/compose/ui/BiasAlignment$Horizontal;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v15, v15, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonHeight:F

    invoke-static {v1, v15}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v10, v10, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonMinWidth:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v15, v10, v0}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v10, 0x6

    invoke-static {v0, v5, v7, v10}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v15, 0x30

    invoke-static {v12, v14, v13, v15}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v12

    iget v14, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v13, v0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move-object/from16 p3, v1

    iget-boolean v1, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v1, :cond_13

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_13
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_a
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v12, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v15, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    move-object/from16 p5, v2

    iget-boolean v2, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_14

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    move/from16 v16, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_b

    :cond_14
    move/from16 v16, v4

    :goto_b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2, v15}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_15
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v13, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    iget v14, v13, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v13, v9}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    move/from16 v29, v6

    iget-boolean v6, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v6, :cond_16

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_16
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_c
    invoke-static {v13, v0, v1}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v4, v12}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v0, v13, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v0, :cond_17

    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0, v15}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_18
    invoke-static {v13, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonIconSize:F

    invoke-static {v9, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v10

    move-object v0, v8

    invoke-virtual {v3, v13}, Lh/t;->getDrawable(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v8

    move-object v1, v11

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->White:J

    const/16 v14, 0xc30

    const/4 v15, 0x0

    move-object v2, v9

    const/4 v9, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    const v6, 0x6cd81d85

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    if-eqz v29, :cond_19

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v6, v6, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonAdobeIconSRadius:F

    sget-object v8, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lh/H;->e:Lh/t;

    invoke-virtual {v8, v13}, Lh/t;->getDrawable(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v8

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v0, v0, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonAdobeIconSize:F

    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Black:J

    sget-object v2, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v0, v9, v10, v2}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float v18, v6, v0

    const/16 v20, 0x0

    const/16 v22, 0x6

    const/16 v19, 0x0

    move/from16 v21, v18

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v6, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-wide v11, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const/16 v14, 0xc30

    const/4 v15, 0x0

    const/4 v9, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :cond_19
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    iget-wide v1, v1, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarButtonFontSize:J

    new-instance v5, Landroidx/compose/ui/text/font/FontWeight;

    const/16 v6, 0x190

    invoke-direct {v5, v6}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    sget-object v6, Lcom/motorola/camera/ui/compose/CustomColorsKt;->LocalCustomColors:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/compose/CustomColors;

    iget-wide v8, v6, Lcom/motorola/camera/ui/compose/CustomColors;->toolbarButtonColor:J

    new-instance v24, Landroidx/compose/ui/text/TextStyle;

    const-wide/16 v26, 0x0

    const v28, 0xfffff8

    move-object/from16 v17, v24

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-wide/from16 v20, v1

    move-object/from16 v22, v5

    move-wide/from16 v18, v8

    invoke-direct/range {v17 .. v28}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;JIJI)V

    shr-int/lit8 v1, v16, 0x6

    and-int/lit8 v26, v1, 0xe

    const/16 v27, 0x0

    const v28, 0xfffe

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v24, v17

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v8, p5

    move-object/from16 v25, p7

    invoke-static/range {v8 .. v28}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/ComposerImpl;III)V

    move-object/from16 v13, v25

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    move-object/from16 v2, p3

    move-object v4, v8

    move/from16 v6, v29

    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1a

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda54;

    move-object/from16 v1, p0

    move/from16 v5, p4

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda54;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method

.method public final ToolbarCrop(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v7, p2

    move/from16 v11, p3

    const-string v1, "modifier"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x18686056

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v11

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_4

    :cond_3
    :goto_2
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->SpaceEvenly:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v4, 0x36

    invoke-static {v2, v3, v7, v4}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    iget v3, v7, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v7, v10}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v8, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v8, :cond_4

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v2, v6}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v4, v7, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v4, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->scanUiManager:Lh/H;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lh/H;->w:Lh/t;

    iget-object v13, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v13}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    const v14, 0x4c5de2

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v3, :cond_7

    if-ne v5, v15, :cond_8

    :cond_7
    new-instance v5, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v3, 0x14

    invoke-direct {v5, v0, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    shl-int/lit8 v1, v1, 0xf

    const/high16 v5, 0x380000

    and-int v8, v1, v5

    const/16 v9, 0x15

    const/4 v1, 0x0

    move v5, v3

    const/4 v3, 0x0

    move/from16 v16, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lh/H;->x:Lh/t;

    invoke-virtual {v13}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_9

    if-ne v3, v15, :cond_a

    :cond_9
    new-instance v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;

    const/16 v1, 0x15

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 v9, 0x15

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarButton(Landroidx/compose/ui/Modifier;Lh/t;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;II)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v10, v11, v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public final TopBar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 11

    const-string v0, "modifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0xa1244f9

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    and-int/lit8 v2, v0, 0x13

    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_8

    :cond_3
    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->Top:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    const/4 v6, 0x0

    invoke-static {v4, v5, p2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget v7, p2, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {p2, v3}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v10, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v10, :cond_4

    invoke-virtual {p2, v9}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v4, v9}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v8, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v8, p2, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v8, :cond_5

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7, v4}, Landroidx/compose/runtime/ComposerImpl;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_6
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p2, v3, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v8, 0x0

    if-eqz v4, :cond_9

    const v4, -0x6fc5b957

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-virtual {p0, v4, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->BackButton(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-static {v7}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v7, v7, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarHorizontalPadding:F

    invoke-static {v4, v7, v8, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, v8

    :goto_4
    invoke-static {v1, v2}, Landroidx/compose/ui/draw/BlurKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->CenterHorizontally:Landroidx/compose/ui/BiasAlignment$Horizontal;

    :cond_8
    new-instance v2, Landroidx/compose/foundation/layout/HorizontalAlignElement;

    invoke-direct {v2, v5}, Landroidx/compose/foundation/layout/HorizontalAlignElement;-><init>(Landroidx/compose/ui/BiasAlignment$Horizontal;)V

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit8 v2, v0, 0x70

    invoke-virtual {p0, v1, p2, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->ToolbarCrop(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_6

    :cond_9
    const v4, -0x6fbc260a

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-virtual {p0, v4, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->DoMoreWithAdobe(ILandroidx/compose/runtime/ComposerImpl;)V

    invoke-static {v7}, Landroidx/compose/foundation/layout/ColumnScope;->weight$default(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->toolbarHorizontalPadding:F

    invoke-static {v4, v5, v8, v1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v2, v8

    :goto_5
    invoke-static {v1, v2}, Landroidx/compose/ui/draw/BlurKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    and-int/lit8 v2, v0, 0x70

    invoke-virtual {p0, v1, p2, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->Toolbar(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_6
    invoke-virtual {v3}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isScanResultFromAdobeApp()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_d

    iget-object v1, v3, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isSaveFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, -0x6fb6025d

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-virtual {p0, v1, p2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->InitializePagerState(ILandroidx/compose/runtime/ComposerImpl;)V

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    const-string v3, "pagerState"

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v5, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->pagerState:Landroidx/compose/foundation/pager/DefaultPagerState;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/DefaultPagerState;->getPageCount()I

    move-result v2

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->PageIndex(IILandroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_7

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    const v1, -0x6fb3f73d

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    const-string v3, "scanSession"

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lh/C;->getCurrentPageIndex()I

    move-result v1

    add-int/2addr v1, v4

    iget-object v5, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Lh/C;->getPageCount()I

    move-result v2

    shl-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x380

    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->PageIndex(IILandroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p2, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_7
    invoke-virtual {p2, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_8
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroidx/compose/ui/Modifier;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void

    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getDefaultDpiAndScreenSizeOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final getPreviewHeight-D9Ej5fM()F
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v2, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/utility/DisplayMetricsHelper;->mMainDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget-object v0, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    :goto_1
    div-float/2addr v0, p0

    return v0

    :cond_1
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3faaaaab

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_1
.end method

.method public final isCropping(Z)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lh/C;->e:Lh/p;

    iget-object p0, p0, Lh/p;->a:Le/J0;

    iget-object p0, p0, Le/J0;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz p1, :cond_0

    sget-object p1, Le/e;->a:Le/e;

    goto :goto_0

    :cond_0
    sget-object p1, Le/f;->a:Le/f;

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "scanSession"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final launchScanApp(Lcom/adobe/scan/sdk/ScanAppConnection$Operation;)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanConnection:Lh/h;

    invoke-virtual {v0}, Lh/h;->isAdobeScanInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$launchScanApp$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$launchScanApp$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Lcom/adobe/scan/sdk/ScanAppConnection$Operation;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->launchAdobeAppJob:Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object p0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDownloadDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBackInvoked()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v1, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showRedirectHintToast$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isCropping()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showCropEditDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showDiscardScanDialog$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->INSTANCE:Lcom/motorola/camera/adobe_scan/AdobeSdkManager;

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->isInitialized()Z

    move-result p1

    const-string v0, "AdobeScanEditorActivity"

    if-nez p1, :cond_0

    const-string p1, "AdobeSdkManager is not initialized, finishing activity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object p1

    invoke-virtual {p1}, Lh/C;->getPageCount()I

    move-result p1

    if-gtz p1, :cond_1

    const-string p1, "Adobe scan session does not contain any pages, finishing activity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/Util;->setupWindow(Landroid/view/Window;)V

    sget-object p1, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->fileManager:Lcom/motorola/camera/adobe_scan/AdobeFileManager;

    iget-object v1, p1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_firstCameraData:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/adobe_scan/AdobeFileManager;->_pdfUri:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/adobe_scan/AdobeSdkManager;->getScanSession()Lh/C;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanSession:Lh/C;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->isCropping(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    const/4 v2, 0x1

    if-le p1, v1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v1, v1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->isLargeDisplay$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$onCreate$1;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$onCreate$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x77499326

    invoke-direct {v0, p1, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget p1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {p1, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->$r8$clinit:I

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper$OnBackInvokedCallbackHolder;->holder:Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    invoke-virtual {v0, p0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onOpenPdfInAdobeScan()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->adobePdfUniqueId:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut_extra"

    iget-object v3, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->scanConnection:Lh/h;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->adobePdfUniqueId:Ljava/lang/String;

    invoke-virtual {v3}, Lh/h;->a()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v1, "extra_view_pdf_preview"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v1, "persistentUniqueId"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lh/h;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "extra_view_recent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v0

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->launchAdobeAppJob:Lkotlinx/coroutines/StandaloneCoroutine;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;->uiState:Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;

    iget-object v0, v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$UiState;->showRedirectHintToast$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public final shouldIgnoreAdobeLocalization()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BR"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity$startActivity$1;-><init>(Lcom/motorola/camera/adobe_scan/AdobeScanEditorActivity;Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/motorola/camera/utility/ColorUtil;->requestDismissKeyguard(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/utility/ColorUtil;)V

    return-void

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->launchGallery(Landroidx/activity/ComponentActivity;Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method
