.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $item:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $scale:Ljava/lang/Object;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$item:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$scale:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

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

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxSize:Landroidx/compose/foundation/layout/FillElement;

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$item:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;

    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$scale:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget v8, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v11, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v11, :cond_2

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v7, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v9, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v12, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v12, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    invoke-static {v8, v1, v8, v9}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v2, v3, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarMarginHeight()F

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0xd

    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v18

    sget-object v2, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->foldPaddingStart:F

    const/16 v22, 0x0

    const/16 v23, 0xe

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v19, v2

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget v12, v1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v1, v2}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v14, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v14, :cond_5

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_2
    invoke-static {v1, v5, v11}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, v13, v7}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v5, v1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v5, :cond_6

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    invoke-static {v12, v1, v12, v9}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_7
    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x615d173a

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_8

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v5, v2, :cond_9

    :cond_8
    new-instance v5, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v5, v4, v0, v2}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v3, v5, v1, v6}, Lcom/motorola/camera/ui/controls_fold/controls/ControlFoldScreenComposeComponent;->ControlLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/ComposerImpl;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$item:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    and-int/lit8 v1, v1, 0x3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto/16 :goto_7

    :cond_b
    :goto_4
    iget v1, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    const/4 v3, 0x0

    invoke-static {v1, v6, v3}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    iget-object v4, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->description:Ljava/lang/String;

    const v5, -0x37846ab

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean v5, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->unspecifiedColor:Z

    if-eqz v5, :cond_c

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    goto :goto_6

    :cond_c
    iget-boolean v5, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isPrimaryTint:Z

    if-nez v5, :cond_e

    iget-boolean v5, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAlwaysOn:Z

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->White:J

    goto :goto_6

    :cond_e
    :goto_5
    sget-object v5, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material3/ColorScheme;

    iget-wide v7, v5, Landroidx/compose/material3/ColorScheme;->primary:J

    :goto_6
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object v3, Lcom/motorola/camera/ui/compose/DimensionsKt;->LocalDim:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v5, v5, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconButtonSize:F

    sget-object v9, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v9, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v9, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->CircleShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v5, v9}, Landroidx/compose/ui/draw/BlurKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v9, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->$scale:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-static {v5, v9}, Landroidx/compose/ui/draw/BlurKt;->scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget v9, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->backgroundTint:I

    invoke-static {v9, v6}, Landroidx/compose/ui/res/ColorResources_androidKt;->colorResource(ILandroidx/compose/runtime/ComposerImpl;)J

    move-result-wide v9

    sget-object v11, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-static {v5, v9, v10, v11}, Landroidx/compose/foundation/ImageKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ListItem$4;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    invoke-static {v0, v2, v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->access$getAdaptiveHorizonPadding-ccRj1GA(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;ILandroidx/compose/runtime/ComposerImpl;)F

    move-result v0

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/compose/Dimensions;

    iget v2, v2, Lcom/motorola/camera/ui/compose/Dimensions;->controlBarIconButtonPadding:F

    invoke-static {v5, v0, v2}, Landroidx/compose/foundation/layout/OffsetKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object v2, v4

    move-wide v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
