.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic $items:Ljava/util/List;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->this$0:Ljava/lang/Object;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_1

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 p4, p4, 0x30

    if-nez p4, :cond_3

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p4

    if-eqz p4, :cond_2

    const/16 p4, 0x20

    goto :goto_2

    :cond_2
    const/16 p4, 0x10

    :goto_2
    or-int/2addr v1, p4

    :cond_3
    and-int/lit16 p4, v1, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p4, v2, :cond_4

    move p4, v3

    goto :goto_3

    :cond_4
    move p4, v4

    :goto_3
    and-int/2addr v1, v3

    invoke-virtual {p3, v1, p4}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->$items:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    const p2, -0x440e6881

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;->expanded:Z

    if-eqz p2, :cond_5

    const p2, -0x440e18d4

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;->animateItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {p1, p0, v0, p3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->ControlPanelItemExpanded(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_5
    const p2, -0x440c356c

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;->animateItem$default(Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {p1, p0, v0, p3, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->ControlPanelItem(Landroidx/compose/ui/Modifier;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_4
    invoke-virtual {p3, v4}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_5

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/ComposerImpl;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    and-int/lit8 v0, p4, 0x6

    if-nez v0, :cond_8

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_6

    :cond_7
    const/4 p1, 0x2

    :goto_6
    or-int/2addr p1, p4

    goto :goto_7

    :cond_8
    move p1, p4

    :goto_7
    and-int/lit8 p4, p4, 0x30

    if-nez p4, :cond_a

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->changed(I)Z

    move-result p4

    if-eqz p4, :cond_9

    const/16 p4, 0x20

    goto :goto_8

    :cond_9
    const/16 p4, 0x10

    :goto_8
    or-int/2addr p1, p4

    :cond_a
    and-int/lit16 p4, p1, 0x93

    const/16 v0, 0x92

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p4, v0, :cond_b

    move p4, v1

    goto :goto_9

    :cond_b
    move p4, v2

    :goto_9
    and-int/2addr p1, v1

    invoke-virtual {p3, p1, p4}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->$items:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    const p2, 0x1aceae23

    invoke-virtual {p3, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$items$$inlined$items$default$8;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-virtual {p0, p1, p3, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ListStateItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;Landroidx/compose/runtime/ComposerImpl;I)V

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_a

    :cond_c
    invoke-virtual {p3}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
