.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $animDuration:I

.field public final synthetic $coroutine:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $dimens:Lcom/motorola/camera/ui/compose/Dimensions;

.field public final synthetic $index:I

.field public final synthetic $it:I

.field public final synthetic $item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

.field public final synthetic $value:Ljava/lang/Object;

.field public final synthetic $viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/compose/Dimensions;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lkotlinx/coroutines/CoroutineScope;ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$dimens:Lcom/motorola/camera/ui/compose/Dimensions;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$coroutine:Lkotlinx/coroutines/CoroutineScope;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$animDuration:I

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$index:I

    iput p7, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$it:I

    iput-object p8, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p2, "$this$AnimatedVisibility"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$dimens:Lcom/motorola/camera/ui/compose/Dimensions;

    iget p1, p1, Lcom/motorola/camera/ui/compose/Dimensions;->controlPanelButtonIconPadding:F

    sget-object p2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {p2, p1}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    const p2, -0x48fade91

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$coroutine:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v5, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p2, p3

    iget p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$animDuration:I

    invoke-virtual {v5, p3}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p3

    or-int/2addr p2, p3

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    invoke-virtual {v5, p3}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p2, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$index:I

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v0, p2, :cond_1

    :cond_0
    new-instance v6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v8, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$coroutine:Lkotlinx/coroutines/CoroutineScope;

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$animDuration:I

    iget-object v10, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$item:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    iget v11, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$index:I

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lkotlinx/coroutines/CoroutineScope;ILcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;I)V

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v0, v6

    :cond_1
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v1, 0x7

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/foundation/ImageKt;->clickable-XHw0xAI$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$it:I

    invoke-static {p1, v5, p2}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/ComposerImpl;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeItemKt$ControlPanelSettingExpand$2$1$1$1$1;->$value:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->getSettingContentDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const p1, 0x5c930905

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p1, p3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->value:Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/material3/ColorSchemeKt;->LocalColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/ColorScheme;

    iget-wide p0, p0, Landroidx/compose/material3/ColorScheme;->primary:J

    :goto_0
    move-wide v3, p0

    goto :goto_1

    :cond_2
    sget-wide p0, Landroidx/compose/ui/graphics/Color;->White:J

    goto :goto_0

    :goto_1
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
