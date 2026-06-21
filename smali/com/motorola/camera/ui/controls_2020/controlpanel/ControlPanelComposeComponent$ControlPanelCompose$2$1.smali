.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    move-object v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "$this$AnimatedVisibility"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v3, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->itemExpanded:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->getControlPanelItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v6, p1, 0xe

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->ControlPanelSettingExpand(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILandroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "$this$AnimatedVisibility"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v2, p2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->itemExpanded:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;->getControlPanelItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 v5, p1, 0xe

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComposeComponent$ControlPanelCompose$2$1;->$viewModel:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->ControlPanelSettingExpand(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILandroidx/compose/runtime/ComposerImpl;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
