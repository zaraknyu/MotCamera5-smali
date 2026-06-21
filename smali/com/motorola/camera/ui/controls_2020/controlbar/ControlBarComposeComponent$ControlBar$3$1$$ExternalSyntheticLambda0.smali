.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent$ControlBar$3$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->switchingLayout:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isFirstDraw:Z

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/compose/component/ComposeComponent;->eventListener:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getControlBarGuideline()F

    move-result v0

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->controlBarGuideline$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v3, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v3, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->viewModel:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->DEFAULT:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateControlBarState(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel$ControlBarState;)V

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v3, "getValue(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateAutoDisplayFlashStatus(Z)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->shouldUpdateItemOnIdle:Z

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/ControlPanelHelper;->ALL_SETTINGS_KEYS:Ljava/util/List;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->eventHandler:Lcom/motorola/camera/ui/UIManager;

    const-string v3, "eventListener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v2, v2, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    iput-boolean v2, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->shouldIncludeAllSettings:Z

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponentViewModel;->updateItems()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->launchedEffectSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComposeComponent;->isSplitScreen$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
