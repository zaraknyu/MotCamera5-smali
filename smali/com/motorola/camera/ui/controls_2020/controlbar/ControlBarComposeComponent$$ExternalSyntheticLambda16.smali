.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    iput p6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$3:I

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$4:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$4:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v6

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$3:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkm;->ControlPanelSettingExpand(Landroidx/compose/animation/AnimatedVisibilityScope;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelViewModel;Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingItem;ILandroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$2:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$3:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v5

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$$ExternalSyntheticLambda16;->f$4:I

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->ListItem(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
